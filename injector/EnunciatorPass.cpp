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
#include "llvm/ExecutionEngine/ExecutionEngine.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopInfoImpl.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include <iostream>
using namespace llvm;

namespace {
struct EnunciatorPass : public FunctionPass {
    static char ID;
    std::vector<std::string> functions;
    EnunciatorPass() : FunctionPass(ID) {}

    virtual bool runOnFunction(Function& F){
        // Get the function to call from our runtime library.

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


            std::vector<Type*>FuncTy_30_args;
            FuncTy_30_args.push_back(PointerTy_25);
            FunctionType* FuncTy_30 = FunctionType::get(
                        /*Result=*/Type::getVoidTy(Ctx),
                        /*Params=*/FuncTy_30_args,
                        /*isVarArg=*/false);


            Function* func_enunciate_ =
                    mod->getFunction("_enunciate_"); //_Z40_metric_capture_long_double_timer_setup_RSsS_
            if (!func_enunciate_) {
                func_enunciate_ = Function::Create(
                            /*Type=*/FuncTy_30,
                            /*Linkage=*/GlobalValue::ExternalLinkage,
                            /*Name=*/"_enunciate_", mod); // (external, no body)
                func_enunciate_->setCallingConv(CallingConv::C);
            }



            IRBuilder<> builder(F.begin()->begin());
            builder.SetInsertPoint(&*(F.begin()), builder.GetInsertPoint());

            Constant* ptr_funcName_constant = ConstantDataArray::getString(Ctx, F.getName());

            AllocaInst* ptr_funcName = builder.CreateAlloca(StructTy_class_std__basic_string, nullptr, "funcName");
            ptr_funcName->setAlignment(8);

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

            Constant* const_ptr_66 = ConstantExpr::getGetElementPtr(IntegerType::get(mod->getContext(), 8), gvar_array__str1, const_ptr_66_indices);
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
            ptr_ref_tmp->setAlignment(1);

            std::vector<Value*> void_95_params;
            void_95_params.push_back(ptr_funcName);
            void_95_params.push_back(const_ptr_66);
            void_95_params.push_back(ptr_ref_tmp);
            CallInst *void_95 = builder.CreateCall(func__ZNSsC1EPKcRKSaIcE, void_95_params);
            void_95->setCallingConv(CallingConv::C);


            std::vector<Value*> void_91_params;
            void_91_params.push_back(ptr_funcName);

            std::cerr << "Function name = " << F.getName().str() << std::endl;

            if(!func_enunciate_)
                std::cerr << "Enunciate wasn't found" << std::endl;

            // Call the metric setup function
            CallInst* metric_setup_call = builder.CreateCall(func_enunciate_, void_91_params);

            std::cerr << "callinst name = " << metric_setup_call->getCalledFunction()->getName().str() << std::endl;

            /*BasicBlock* rb = getAnalysis<UnifyFunctionExitNodes>().getReturnBlock();
             */

        return true;
    }

    // This example modifies the program, but does not modify the CFG
    /*virtual void getAnalysisUsage(AnalysisUsage &AU) const {
        //AU.setPreservesCFG();
        AU.addRequired<UnifyFunctionExitNodes>();
    }*/

};
}

char EnunciatorPass::ID = 1;

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
static RegisterPass<EnunciatorPass> epass("enunciator", "Injector Pass",
                             false /* Chanegs CFG */,
                             false /* Analysis Pass */);
