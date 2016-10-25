#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/CallingConv.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Instructions.h>
#include "llvm/ExecutionEngine/ExecutionEngine.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopInfoImpl.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include <iostream>
using namespace llvm;

static llvm::cl::OptionCategory InjectorPassCategory("Injector Pass");
static llvm::cl::opt<std::string> functionNamesCommaSeperated("functions", llvm::cl::cat(InjectorPassCategory));

namespace {
struct InjectorPass : public FunctionPass {
    static char ID;
    std::vector<std::string> functions;
    InjectorPass() : FunctionPass(ID) {}

    void insertCleanupBlock(BasicBlock* returnBlock, Function* cleanupCall, CallInst* metric_setup_call, IRBuilder<>& builder) {
        LLVMContext& Ctx = returnBlock->getContext();
        //SplitBlock() // Util function that preserves/updates loopInfo
        // Split the exit/return block into two blocks. Basically creates a new block just for the last return instruction.
        // it also sets a branch instruciton from the old basic block to the new one
        BasicBlock* newReturnBlock =  returnBlock->splitBasicBlock(returnBlock->back()); // This will invalidate loopinfo
        BasicBlock* cleanupBlock = BasicBlock::Create(Ctx, "metric.cleanup", returnBlock->getParent(), newReturnBlock);

        std::vector<Value*> void_metric_cleanup_args;
        // The result of metric_setup which is the IWrapper pointer
        void_metric_cleanup_args.push_back(metric_setup_call);

        builder.SetInsertPoint(cleanupBlock);
        CallInst* metric_cleanup = builder.CreateCall(cleanupCall, void_metric_cleanup_args);
        // change the branch instruction that was created by the split function to point to the cleanup block
        returnBlock->getTerminator()->setSuccessor(0,cleanupBlock);
        // add a branch fro mthe cleanup block to the new return block;
        builder.CreateBr(newReturnBlock);
    }

    void insertStartCaptureBlock(BasicBlock* forCond, std::map<BasicBlock*, int>& bbmap, int loopId, Function* startCall, CallInst* metric_setup_call, IRBuilder<>& builder) {
        // for.cond has two predecessors usually, the node that leads to the condition and the for.inc.
        // Therefore we can not use getUniquePredecessor. Instead I get the node that leads to the condition
        // and set its successor to be my new basic block. Then I set the succesor of my basic block to
        // the for.cond by adding a branch instruction to it.
        // PreviousNode should not be used much because it is not necessary to have an edge between previous node
        // and current node. For example, for.inc is the previousNode of for.end but they dont have edges between
        // them. So always check for these things before you use them. The previousNode is just an ordering in the
        // list of basic blocks/nodes. Use succesors/predecessors iterators if you need to get the real succesors
        // and predecessors.

        //BasicBlock* Bptr = &B;
        LLVMContext& Ctx = forCond->getContext();
        BasicBlock* prevptr = forCond->getPrevNode(); // can't use unique predecessor
        bbmap[forCond] = loopId;
        std::vector<Value*> void_metric_start_args;
        // The result of metric_setup which is the IWrapper pointer
        void_metric_start_args.push_back(metric_setup_call);
        // Set the start capture loopId to be the loopcounter and push it on the args vector
        ConstantInt* ptr_loopid_0 = ConstantInt::get(IntegerType::get(Ctx,32), loopId);
        void_metric_start_args.push_back(ptr_loopid_0);

        // Inserts the new block just before the condition block. If you now check the previousnode
        // of for.cond, it will point to metric.start rather than the predecessor. This is because the
        // new basic block was added before it as its created.
        BasicBlock* newBlock = BasicBlock::Create(Ctx, "metric.start", forCond->getParent(), forCond);
        // Sets the first successor edge to be the new block instead of the for.cond. This works fine
        // because there is only one incoming edge into for.cond.
        prevptr->getTerminator()->setSuccessor(0,newBlock);

        builder.SetInsertPoint(newBlock);

        CallInst* metric_start_call =
                //    CallInst::Create(func__Z22_metric_capture_start_P8IWrapperi, void_metric_start_args, "", B.getPrevNode());
                builder.CreateCall(startCall, void_metric_start_args);
        builder.CreateBr(forCond);
        // If you check the prdecessors now, for.cond will have metric start as predecessor.
    }

    void insertStopCaptureBlock(BasicBlock* forEnd, std::map<BasicBlock*, int>& bbmap, Function* stopCall, CallInst* metric_setup_call, IRBuilder<>& builder) {
        LLVMContext& Ctx = forEnd->getContext();
        // in this case unique predecessor works only rather than previous node. Check my comments in the previous if condition
        BasicBlock* predecessor = forEnd->getUniquePredecessor();

        if(bbmap.find(predecessor)!=bbmap.end()) {
            std::vector<Value*> void_metric_stop_args;
            void_metric_stop_args.push_back(metric_setup_call);
            // Add the appropriate loop Id by looking up the value in our map
            ConstantInt* ptr_loopid_0 = ConstantInt::get(IntegerType::get(Ctx,32), bbmap[predecessor]);
            void_metric_stop_args.push_back(ptr_loopid_0);

            BasicBlock* newBlock = BasicBlock::Create(Ctx, "metric.stop", forEnd->getParent(), forEnd);
            forEnd->replaceAllUsesWith(newBlock); // replace all uses should work because for.end has one user which is the condition basic block
            builder.SetInsertPoint(newBlock);
            CallInst* metric_stop_call =
                    //CallInst::Create(func__Z21_metric_capture_stop_P8IWrapperi->getFunctionType(),
                    //                 func__Z21_metric_capture_stop_P8IWrapperi, void_metric_stop_args, "", B.getNextNode()->begin());
                    builder.CreateCall(stopCall, void_metric_stop_args);
            builder.CreateBr(forEnd);
        }

    }

    virtual bool doInitialization(Module & M) {
        StringRef commaSepStr(functionNamesCommaSeperated.getValue());
        if(!commaSepStr.empty()) {
            SmallVector<StringRef, 3> sepStrings;
            commaSepStr.split(sepStrings, StringRef(","));
            for(auto s: sepStrings) {
                functions.push_back(s.str());
            }
        }
        return false;
    }

    void insertStartCapture(Loop* loop, int loopId, Function* start, CallInst* metric_setup_call) {
        if(BasicBlock* pred = loop->getLoopPredecessor()) {
            Function* F = pred->getParent();
            LLVMContext& Ctx = F->getContext();
            IRBuilder<> builder(Ctx);
            std::vector<Value*> void_metric_start_args;
            // The result of metric_setup which is the IWrapper pointer
            void_metric_start_args.push_back(metric_setup_call);
            // Set the start capture loopId to be the loopcounter and push it on the args vector
            ConstantInt* ptr_loopid_0 = ConstantInt::get(IntegerType::get(Ctx,32), loopId);
            void_metric_start_args.push_back(ptr_loopid_0);
            // Inserts the new block just before the condition block. If you now check the previousnode
            // of for.cond, it will point to metric.start rather than the predecessor. This is because the
            // new basic block was added before it as its created.
            BasicBlock* loopHeader = loop->getHeader();
            BasicBlock* newBlock = BasicBlock::Create(Ctx, "metric.start", pred->getParent(), loopHeader);
            // Sets the first successor edge to be the new block instead of the for.cond. This works fine
            // because there is only one incoming edge into for.cond.
            pred->getTerminator()->setSuccessor(0,newBlock);

            builder.SetInsertPoint(newBlock);

            CallInst* metric_start_call = builder.CreateCall(start, void_metric_start_args);
            builder.CreateBr(loopHeader);
        }

    }

    void insertStopCapture(Loop* loop, int loopId, Function* stop, CallInst* metric_setup_call) {
        if(BasicBlock* exit = loop->getExitBlock()) {
            Function* F = exit->getParent();
            LLVMContext& Ctx = F->getContext();
            IRBuilder<> builder(Ctx);
            std::vector<Value*> void_metric_stop_args;
            void_metric_stop_args.push_back(metric_setup_call);
            // Add the appropriate loop Id by looking up the value in our map
            ConstantInt* ptr_loopid_0 = ConstantInt::get(IntegerType::get(Ctx,32), loopId);
            void_metric_stop_args.push_back(ptr_loopid_0);
            BasicBlock* newBlock = BasicBlock::Create(Ctx, "metric.stop", exit->getParent(), exit);
            exit->replaceAllUsesWith(newBlock); // replace all uses should work because for.end has one user which is the condition basic block
            builder.SetInsertPoint(newBlock);
            CallInst* metric_stop_call =
                    builder.CreateCall(stop, void_metric_stop_args);
            builder.CreateBr(exit);
        }
    }

    void sandwichLoop(Loop* loop, int loopId, Function* start, Function* stop, CallInst* metric_setup_call) {
        // We only sandwich the loop if the two conditions are met. We have a one unique predecessor and one unique successor
        if(loop->getLoopPredecessor() && loop->getExitBlock()) {
            insertStartCapture(loop, loopId, start, metric_setup_call);
            insertStopCapture(loop, loopId, stop, metric_setup_call);
        }
    }

    void traverseChildLoops(Loop* loop, int& loopId, Function* start, Function* stop, CallInst* metric_setup_call) {
        std::cerr << "# child loops of current loop = " << loop->getSubLoops().size() << std::endl;
        for(Loop::iterator it = loop->begin(); it!=loop->end(); it++) {
            sandwichLoop(*it, loopId, start, stop, metric_setup_call);
            loopId++;
            traverseChildLoops(*it, loopId, start, stop, metric_setup_call);
        }
    }

    virtual bool runOnFunction(Function& F){
        // Get the function to call from our runtime library.
        std::string functionName = F.getName().str();
        std::function<bool(const std::string&)> predicate = [&functionName](const std::string& vectorElement) {
            return functionName.find(vectorElement)!=std::string::npos; };
        bool funcFound = (!functions.empty() && std::find_if(functions.begin(), functions.end(), predicate)!=functions.end());

        if(funcFound) {
            //F.dump();
            auto mod = F.getParent();
            LLVMContext &Ctx = F.getContext();
            std::vector<Type*>logop_args;
            logop_args.push_back(IntegerType::get(Ctx, 32));
            FunctionType* logop_ftype = FunctionType::get(Type::getVoidTy(Ctx), logop_args, false);
            //Constant *logopFunc = F.getParent()->getOrInsertFunction("logop", logop_ftype);

            Function* logopFunc = F.getParent()->getFunction("logop"); // _Z5logopi
            if (!logopFunc) {
                logopFunc = Function::Create(
                            /*Type=*/logop_ftype,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"logop", F.getParent());
                logopFunc->setCallingConv(CallingConv::C);
            }
            //std::cout << "func name = " << logopFunc->getName().str() << std::endl;

            std::vector<Type*>retdouble_args;
            retdouble_args.push_back(IntegerType::get(Ctx, 32));
            FunctionType* retdouble_ftype = FunctionType::get(IntegerType::get(Ctx, 32), retdouble_args, false);
            //Constant *doubleFunc = F.getParent()->getOrInsertFunction("retDouble", retdouble_ftype);
            Function* doubleFunc = F.getParent()->getFunction("retDouble"); // _Z9retDoublei
            if (!doubleFunc) {
                doubleFunc = Function::Create(
                            /*Type=*/retdouble_ftype,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"retDouble", F.getParent());
                doubleFunc->setCallingConv(CallingConv::C);
            }

            // Function signature for metric_capture_setup
            PointerType* PointerTy_1 = PointerType::get(IntegerType::get(mod->getContext(), 8), 0);
            ConstantInt* const_int32_64 = ConstantInt::get(mod->getContext(), APInt(32, StringRef("0"), 10));

            StructType *StructTy_class_std__basic_string = mod->getTypeByName("class.std::basic_string");
            if (!StructTy_class_std__basic_string) {
                StructTy_class_std__basic_string = StructType::create(mod->getContext(), "class.std::basic_string");
            }
            std::vector<Type*>StructTy_class_std__basic_string_fields;
            StructType *StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider = mod->getTypeByName("struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider");
            if (!StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider) {
                StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider = StructType::create(mod->getContext(), "struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider");
            }
            std::vector<Type*>StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider_fields;
            StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider_fields.push_back(PointerTy_1);
            if (StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider->isOpaque()) {
                StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider->setBody(StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider_fields, /*isPacked=*/false);
            }

            StructTy_class_std__basic_string_fields.push_back(StructTy_struct_std__basic_string_char__std__char_traits_char___std__allocator_char______Alloc_hider);
            if (StructTy_class_std__basic_string->isOpaque()) {
                StructTy_class_std__basic_string->setBody(StructTy_class_std__basic_string_fields, /*isPacked=*/false);
            }

            PointerType* PointerTy_25 = PointerType::get(StructTy_class_std__basic_string, 0);


            StructType *StructTy_class_IWrapper = mod->getTypeByName("class.IWrapper");
            if (!StructTy_class_IWrapper) {
                StructTy_class_IWrapper = StructType::create(mod->getContext(), "class.IWrapper");
            }
            std::vector<Type*>StructTy_class_IWrapper_fields;
            std::vector<Type*>FuncTy_36_args;
            FunctionType* FuncTy_36 = FunctionType::get(
                        /*Result=*/IntegerType::get(mod->getContext(), 32),
                        /*Params=*/FuncTy_36_args,
                        /*isVarArg=*/true);

            PointerType* PointerTy_35 = PointerType::get(FuncTy_36, 0);

            PointerType* PointerTy_34 = PointerType::get(PointerTy_35, 0);

            StructTy_class_IWrapper_fields.push_back(PointerTy_34);
            if (StructTy_class_IWrapper->isOpaque()) {
                StructTy_class_IWrapper->setBody(StructTy_class_IWrapper_fields, /*isPacked=*/false);
            }

            PointerType* PointerTy_33 = PointerType::get(StructTy_class_IWrapper, 0);

            std::vector<Type*>FuncTy_30_args;
            FuncTy_30_args.push_back(PointerTy_25);
            FuncTy_30_args.push_back(PointerTy_25);
            FuncTy_30_args.push_back(IntegerType::get(Ctx, 32));
            FuncTy_30_args.push_back(IntegerType::get(Ctx, 32));
            //FuncTy_30_args.push_back(IntegerType::get(mod->getContext(), 32));
            FunctionType* FuncTy_30 = FunctionType::get(
                        /*Result=*/PointerTy_33,
                        /*Params=*/FuncTy_30_args,
                        /*isVarArg=*/false);


            Function* func__Z40_metric_capture_long_double_timer_setup_RSsS_ =
                    mod->getFunction("_metric_capture_long_double_timer_setup_"); //_Z40_metric_capture_long_double_timer_setup_RSsS_
            if (!func__Z40_metric_capture_long_double_timer_setup_RSsS_) {
                func__Z40_metric_capture_long_double_timer_setup_RSsS_ = Function::Create(
                            /*Type=*/FuncTy_30,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"_metric_capture_long_double_timer_setup_", mod); // (external, no body)
                func__Z40_metric_capture_long_double_timer_setup_RSsS_->setCallingConv(CallingConv::C);
            }

            std::vector<Type*>FuncTy_44_args;
            FuncTy_44_args.push_back(PointerTy_33);
            FuncTy_44_args.push_back(IntegerType::get(mod->getContext(), 32));
            FunctionType* FuncTy_44 = FunctionType::get(
                        /*Result=*/Type::getVoidTy(mod->getContext()),
                        /*Params=*/FuncTy_44_args,
                        /*isVarArg=*/false);


            Function* func__Z22_metric_capture_start_P8IWrapperi = mod->getFunction("_metric_capture_start_"); //_Z22_metric_capture_start_P8IWrapperi
            if (!func__Z22_metric_capture_start_P8IWrapperi) {
                func__Z22_metric_capture_start_P8IWrapperi = Function::Create(
                            /*Type=*/FuncTy_44,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"_metric_capture_start_", mod); // (external, no body)
                func__Z22_metric_capture_start_P8IWrapperi->setCallingConv(CallingConv::C);
            }

            Function* func__Z21_metric_capture_stop_P8IWrapperi = mod->getFunction("_metric_capture_stop_"); //_Z21_metric_capture_stop_P8IWrapperi
            if (!func__Z21_metric_capture_stop_P8IWrapperi) {
                func__Z21_metric_capture_stop_P8IWrapperi = Function::Create(
                            /*Type=*/FuncTy_44,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"_metric_capture_stop_", mod); // (external, no body)
                func__Z21_metric_capture_stop_P8IWrapperi->setCallingConv(CallingConv::C);
            }

            std::vector<Type*>FuncTy_45_args;
            FuncTy_45_args.push_back(PointerTy_33);
            FunctionType* FuncTy_45 = FunctionType::get(
                        /*Result=*/Type::getVoidTy(mod->getContext()),
                        /*Params=*/FuncTy_45_args,
                        /*isVarArg=*/false);

            Function* func_metric_capture_cleanup = mod->getFunction("_metric_capture_cleanup_"); //_Z21_metric_capture_stop_P8IWrapperi
            if (!func_metric_capture_cleanup) {
                func_metric_capture_cleanup = Function::Create(
                            /*Type=*/FuncTy_45,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"_metric_capture_cleanup_", mod); // (external, no body)
                func_metric_capture_cleanup->setCallingConv(CallingConv::C);
            }

            if(!logopFunc)
                std::cerr << "logop not found" << std::endl;
            if(!doubleFunc)
                std::cerr << "doubleFunc not found" << std::endl;
            /*
    ExecutionEngine* engine = EngineBuilder(F.getParent()).create();
    engine->addGlobalMapping(logopFunc, &::logop); // LLVM always takes non-const pointers
    engine->addGlobalMapping(doubleFunc, &::retDouble);*/

            /*Constant *getTimeFunc = F.getParent()->getOrInsertFunction(
          "getTime", PointerType::getInt8PtrTy(Ctx), NULL
        );*/

            /*Constant *logFunc = F.getParent()->getOrInsertFunction(
          "log", Type::getVoidTy(Ctx), PointerType::getInt8PtrTy(Ctx), NULL
        );*/


            IRBuilder<> builder(F.begin()->begin());
            builder.SetInsertPoint(&*(F.begin()), builder.GetInsertPoint());

            Constant* ptr_fileName_constant = ConstantDataArray::getString(Ctx, F.getParent()->getName());
            Constant* ptr_funcName_constant = ConstantDataArray::getString(Ctx, F.getName());

            AllocaInst* ptr_funcName = builder.CreateAlloca(StructTy_class_std__basic_string, nullptr, "funcName");
            //AllocaInst* ptr_funcName = new AllocaInst(StructTy_class_std__basic_string, "funcName",F.begin());
            ptr_funcName->setAlignment(8);

            AllocaInst* ptr_fileName = builder.CreateAlloca(StructTy_class_std__basic_string, nullptr, "fileName");
            //AllocaInst* ptr_fileName = new AllocaInst(StructTy_class_std__basic_string, "fileName", F.begin());
            ptr_fileName->setAlignment(8);
            // Create Arraytype for global variable that will hold the constant string which is the function name
            ArrayType* ArrayTy_2 = ArrayType::get(IntegerType::get(mod->getContext(), 8), F.getParent()->getName().size()+1);
            GlobalVariable* gvar_array__str = new GlobalVariable(/*Module=*/*mod,
                                                                 /*Type=*/ArrayTy_2,
                                                                 /*isConstant=*/true,
                                                                 /*Linkage=*/GlobalValue::PrivateLinkage,
                                                                 /*Initializer=*/0, // has initializer, specified below
                                                                 /*Name=*/".str");
            gvar_array__str->setAlignment(1);
            // Create Arraytype for global variable that will hold the constant string which is the file name
            ArrayType* ArrayTy_3 = ArrayType::get(IntegerType::get(mod->getContext(), 8), F.getName().size()+1);
            GlobalVariable* gvar_array__str1 = new GlobalVariable(/*Module=*/*mod,
                                                                  /*Type=*/ArrayTy_3,
                                                                  /*isConstant=*/true,
                                                                  /*Linkage=*/GlobalValue::PrivateLinkage,
                                                                  /*Initializer=*/0, // has initializer, specified below
                                                                  /*Name=*/".str1");
            gvar_array__str1->setAlignment(1);

            ConstantInt* const_int64_61 = ConstantInt::get(mod->getContext(), APInt(64, StringRef("0"), 10));
            std::vector<Constant*> const_ptr_66_indices;
            const_ptr_66_indices.push_back(const_int64_61);
            const_ptr_66_indices.push_back(const_int64_61);
            Constant* const_ptr_67 = ConstantExpr::getGetElementPtr(ArrayTy_2, gvar_array__str, const_ptr_66_indices);
            gvar_array__str->setInitializer(ptr_fileName_constant);
            Constant* const_ptr_66 = ConstantExpr::getGetElementPtr(ArrayTy_3, gvar_array__str1, const_ptr_66_indices);
            gvar_array__str1->setInitializer(ptr_funcName_constant);

            StructType *StructTy_class_std__allocator = mod->getTypeByName("class.std::allocator");
            if (!StructTy_class_std__allocator) {
                StructTy_class_std__allocator = StructType::create(mod->getContext(), "class.std::allocator");
            }
            std::vector<Type*>StructTy_class_std__allocator_fields;
            StructTy_class_std__allocator_fields.push_back(IntegerType::get(mod->getContext(), 8));
            if (StructTy_class_std__allocator->isOpaque()) {
                StructTy_class_std__allocator->setBody(StructTy_class_std__allocator_fields, /*isPacked=*/false);
            }

            PointerType* PointerTy_27 = PointerType::get(StructTy_class_std__allocator, 0);
            PointerType* PointerTy_28 = PointerType::get(StructTy_class_std__basic_string, 0);

            std::vector<Type*>FuncTy_31_args;
            FuncTy_31_args.push_back(PointerTy_28);
            FuncTy_31_args.push_back(PointerTy_1);
            FuncTy_31_args.push_back(PointerTy_27);
            FunctionType* FuncTy_31 = FunctionType::get(
                        /*Result=*/Type::getVoidTy(mod->getContext()),
                        /*Params=*/FuncTy_31_args,
                        /*isVarArg=*/false);

            Function* func__ZNSsC1EPKcRKSaIcE = mod->getFunction("_ZNSsC1EPKcRKSaIcE");
            if (!func__ZNSsC1EPKcRKSaIcE) {
                func__ZNSsC1EPKcRKSaIcE = Function::Create(
                            /*Type=*/FuncTy_31,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"_ZNSsC1EPKcRKSaIcE", mod); // (external, no body)
                func__ZNSsC1EPKcRKSaIcE->setCallingConv(CallingConv::C);
            }

            AllocaInst* ptr_ref_tmp = builder.CreateAlloca(StructTy_class_std__allocator, nullptr, "ref.tmp");
            //AllocaInst* ptr_ref_tmp = new AllocaInst(StructTy_class_std__allocator, "ref.tmp", F.begin());
            ptr_ref_tmp->setAlignment(1);

            std::vector<Value*> void_95_params;
            void_95_params.push_back(ptr_funcName);
            void_95_params.push_back(const_ptr_66);
            void_95_params.push_back(ptr_ref_tmp);
            CallInst *void_95 = builder.CreateCall(func__ZNSsC1EPKcRKSaIcE, void_95_params);
            //CallInst *void_95 = CallInst::Create(func__ZNSsC1EPKcRKSaIcE, void_95_params);
            void_95->setCallingConv(CallingConv::C);

            AllocaInst* ptr_ref_tmp1 = builder.CreateAlloca(StructTy_class_std__allocator, nullptr, "ref.tmp1");
            //AllocaInst* ptr_ref_tmp1 = new AllocaInst(StructTy_class_std__allocator, "ref.tmp1", F.begin());
            ptr_ref_tmp1->setAlignment(1);

            std::vector<Value*> void_96_params;
            void_96_params.push_back(ptr_fileName);
            void_96_params.push_back(const_ptr_67);
            void_96_params.push_back(ptr_ref_tmp1);
            CallInst *void_96 = builder.CreateCall(func__ZNSsC1EPKcRKSaIcE, void_96_params);
            //CallInst *void_96 = CallInst::Create(func__ZNSsC1EPKcRKSaIcE, void_96_params);
            void_96->setCallingConv(CallingConv::C);

            std::vector<Value*> void_91_params;
            //void_91_params.push_back(ptr_agg_tmp);
            //void_91_params.push_back(ptr_agg_tmp1);
            void_91_params.push_back(ptr_fileName);
            void_91_params.push_back(ptr_funcName);
            ConstantInt* ptr_loop_count = ConstantInt::get(IntegerType::get(Ctx,32), 5);
            void_91_params.push_back(ptr_loop_count);
            void_91_params.push_back(ptr_loop_count);

            std::cerr << "File name = " <<  F.getParent()->getName().str() << std::endl;
            std::cerr << "Function name = " << F.getName().str() << std::endl;

            // Call the metric setup function
            CallInst* metric_setup_call = builder.CreateCall(func__Z40_metric_capture_long_double_timer_setup_RSsS_, void_91_params);

            std::cerr << "callinst name = " << metric_setup_call->getCalledFunction()->getName().str() << std::endl;

            std::string constantCondString = "cond";
            std::string constantEndString = "end";

            BasicBlock* rb = getAnalysis<UnifyFunctionExitNodes>().getReturnBlock();
            std::cerr << "Returning block is = " << rb->getName().str() << std::endl;
            // We run the UnifyFunctionExitNodes pass before we start looping over the basic blocks and injecting
            // start and stop calls. This allows to inject the cleanup call.
            insertCleanupBlock(rb, func_metric_capture_cleanup, metric_setup_call, builder);

            // This is the new implementation version. It uses the LoopInfo Wrapper Pass to figure out
            // loops. Then we traverse the loops and sandwich each loop with a start and stop capture.
            // Previous implementation relied on reading loop labels to figure if a block is the loop header
            // or is the loop end and using that information to inject captures. It appears that different versions
            // of LLVM and clang (also depends on how llvm was compiled i.e. debug vs release) get rid of those
            // labels. Thus the previous implementation was unpredictable.
            int loopId = 0;
            LoopInfo& loopInfo = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
            for(LoopInfo::iterator it = loopInfo.begin(); it!=loopInfo.end(); it++) {
                Loop* loop = *it;
                sandwichLoop(loop, loopId, func__Z22_metric_capture_start_P8IWrapperi, func__Z21_metric_capture_stop_P8IWrapperi, metric_setup_call);
                loopId++;
                traverseChildLoops(loop, loopId, func__Z22_metric_capture_start_P8IWrapperi, func__Z21_metric_capture_stop_P8IWrapperi, metric_setup_call);
            }

            /*std::map <BasicBlock*, int > bbmap;
            int loopIdCounter = 0;
            for (BasicBlock &B : F) {
                //                for(auto& I : B) {
                //                    if(auto* op = dyn_cast<CallInst>(I)){
                //                    }
                //                }
                //std::string loopLabel = B.getValueName()->getValue()->getName().str();
                std::string loopLabel = B.getName().str();
                std::cerr<<"loop label = " << loopLabel <<std::endl;
                if((loopLabel.find("for") == 0 ) && (loopLabel.find(constantCondString) != std::string::npos)) {
                    std::cerr<<"inserted start block"<<std::endl;
                    insertStartCaptureBlock(&B, bbmap, loopIdCounter, func__Z22_metric_capture_start_P8IWrapperi, metric_setup_call, builder);
                    loopIdCounter++;
                }
                // To inject the stop metric function, we need to check if the for.end basic block. Then we
                // need to get the corresponding for.cond by getting the predecessor of the for.end. This is unique
                // and will directly get us to the for.cond. We then lookup the loopId associated with that for.cond
                // and use the same ID when injecting the stop matric function.
                // This will help us assign the same loopId for the corresponding capture_start and capture_stop. To
                // implement this, we should keep a map of basicBlocks key and Integer values correspondign to th loop Id.
                else if((loopLabel.find("for") == 0 ) && (loopLabel.find(constantEndString) != std::string::npos)) {
                    std::cerr<<"inserted stop block"<<std::endl;
                    insertStopCaptureBlock(&B, bbmap, func__Z21_metric_capture_stop_P8IWrapperi, metric_setup_call, builder);
                }
                // Last thing we need to handle is the exit block for the function. This is not necessarily the last block.
                // There might be multiple exit blocks with returns for example. Therefore there is a pass called
                // UnifyFunctionExitNodes that basically unifies all the exit blocks in a function into a single block.
                // Therefore we may need to run that pass after this pass and then create an additional pass that runs at
                // the end which only injects the cleanup function. For that we should look into pass dependencies!!!!
                // if(Basic block is the terminator block)
                //    Inject the cleanup function.
            }*/
            //F.getParent()->dump();
        }

        return true;
    }

    // This example modifies the program, but does not modify the CFG
    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
        //AU.setPreservesCFG();
        AU.addRequired<UnifyFunctionExitNodes>();
        AU.addRequired<LoopInfoWrapperPass>();
    }

};
}

char InjectorPass::ID = 0;

// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html -- Left this to give credit
/*static void registerInjectorPass(const PassManagerBuilder &,
                                 legacy::PassManagerBase &PM) {
    PM.add(new UnifyFunctionExitNodes());
    PM.add(new InjectorPass());
}
static RegisterStandardPasses
RegisterMyPass(PassManagerBuilder::EP_EarlyAsPossible,
               registerInjectorPass);
*/
static RegisterPass<InjectorPass> ipass("injector", "Injector Pass",
                             true /* Chanegs CFG */,
                             false /* Analysis Pass */);
