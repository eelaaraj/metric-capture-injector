; ModuleID = '<stdin>'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.std::chrono::duration" = type { i64 }
%"struct.std::chrono::duration.0" = type { i64 }
%struct.timespec = type { i64, i64 }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%class.IWrapper = type { i32 (...)** }

$_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_ = comdat any

$_ZSt4stoiRKSsPmi = comdat any

$_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_ = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_ = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]
@.str2 = private constant [8 x i8] c"<stdin>\00", align 1
@.str13 = private constant [22 x i8] c"_Z12testFunctioniPdS_\00", align 1

define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: uwtable
define void @_Z19doesNothingButSleepv() #3 {
entry:
  %ref.tmp = alloca %"struct.std::chrono::duration", align 8
  %ref.tmp1 = alloca i32, align 4
  store i32 1, i32* %ref.tmp1
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_(%"struct.std::chrono::duration"* %ref.tmp, i32* dereferenceable(4) %ref.tmp1)
  call void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %ref.tmp)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1EEEEvRKNSt6chrono8durationIT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__rtime) #4 comdat {
entry:
  %__rtime.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__s = alloca %"struct.std::chrono::duration", align 8
  %__ns = alloca %"struct.std::chrono::duration.0", align 8
  %ref.tmp = alloca %"struct.std::chrono::duration", align 8
  %__ts = alloca %struct.timespec, align 8
  store %"struct.std::chrono::duration"* %__rtime, %"struct.std::chrono::duration"** %__rtime.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__rtime.addr, align 8
  %call = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %0)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %__s, i32 0, i32 0
  store i64 %call, i64* %coerce.dive
  %1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__rtime.addr, align 8
  %call1 = call i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* dereferenceable(8) %1, %"struct.std::chrono::duration"* dereferenceable(8) %__s)
  %coerce.dive2 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %ref.tmp, i32 0, i32 0
  store i64 %call1, i64* %coerce.dive2
  %call3 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %ref.tmp)
  %coerce.dive4 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %__ns, i32 0, i32 0
  store i64 %call3, i64* %coerce.dive4
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %__ts, i32 0, i32 0
  %call5 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %__s)
  store i64 %call5, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %__ts, i32 0, i32 1
  %call6 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %__ns)
  store i64 %call6, i64* %tv_nsec, align 8
  %call7 = call i32 @nanosleep(%struct.timespec* %__ts, %struct.timespec* null)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IivEERKT_(%"struct.std::chrono::duration"* %this, i32* dereferenceable(4) %__rep) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__rep.addr = alloca i32*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  store i32* %__rep, i32** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load i32*, i32** %__rep.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %__r, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z12testFunctioniPdS_(i32 %d, double* %S, double* %D) #5 {
entry:
  %funcName = alloca %"class.std::basic_string", align 8
  %fileName = alloca %"class.std::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %funcName, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str13, i64 0, i64 0), %"class.std::allocator"* %ref.tmp)
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %fileName, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str2, i64 0, i64 0), %"class.std::allocator"* %ref.tmp1)
  %0 = call %class.IWrapper* @_metric_capture_long_double_timer_setup_(%"class.std::basic_string"* %fileName, %"class.std::basic_string"* %funcName, i32 5)
  %d.addr = alloca i32, align 4
  %S.addr = alloca double*, align 8
  %D.addr = alloca double*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %p = alloca i32, align 4
  %j = alloca i32, align 4
  %sum28 = alloca double, align 8
  %p29 = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  store double* %S, double** %S.addr, align 8
  store double* %D, double** %D.addr, align 8
  store i32 0, i32* %k, align 4
  br label %metric.start

metric.start:                                     ; preds = %entry
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %metric.start, %for.inc62
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %d.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %metric.stop8

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  store i32 %3, i32* %i, align 4
  br label %metric.start1

metric.start1:                                    ; preds = %for.body
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 1)
  br label %for.cond1

for.cond1:                                        ; preds = %metric.start1, %for.inc21
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %d.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %metric.stop3

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %p, align 4
  br label %metric.start2

metric.start2:                                    ; preds = %for.body3
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 2)
  br label %for.cond4

for.cond4:                                        ; preds = %metric.start2, %for.inc
  %6 = load i32, i32* %p, align 4
  %7 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body6, label %metric.stop

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %d.addr, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %p, align 4
  %add = add nsw i32 %mul, %10
  %idxprom = sext i32 %add to i64
  %11 = load double*, double** %D.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %11, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8
  %13 = load i32, i32* %p, align 4
  %14 = load i32, i32* %d.addr, align 4
  %mul7 = mul nsw i32 %13, %14
  %15 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %mul7, %15
  %idxprom9 = sext i32 %add8 to i64
  %16 = load double*, double** %D.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %16, i64 %idxprom9
  %17 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %12, %17
  %18 = load double, double* %sum, align 8
  %add12 = fadd double %18, %mul11
  store double %add12, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %19 = load i32, i32* %p, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond4

metric.stop:                                      ; preds = %for.cond4
  call void @_metric_capture_stop_(%class.IWrapper* %0, i32 2)
  br label %for.end

for.end:                                          ; preds = %metric.stop
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %d.addr, align 4
  %mul13 = mul nsw i32 %20, %21
  %22 = load i32, i32* %k, align 4
  %add14 = add nsw i32 %mul13, %22
  %idxprom15 = sext i32 %add14 to i64
  %23 = load double*, double** %S.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %23, i64 %idxprom15
  %24 = load double, double* %arrayidx16, align 8
  %25 = load double, double* %sum, align 8
  %sub = fsub double %24, %25
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %d.addr, align 4
  %mul17 = mul nsw i32 %26, %27
  %28 = load i32, i32* %k, align 4
  %add18 = add nsw i32 %mul17, %28
  %idxprom19 = sext i32 %add18 to i64
  %29 = load double*, double** %D.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %29, i64 %idxprom19
  store double %sub, double* %arrayidx20, align 8
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %30, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond1

metric.stop3:                                     ; preds = %for.cond1
  call void @_metric_capture_stop_(%class.IWrapper* %0, i32 1)
  br label %for.end23

for.end23:                                        ; preds = %metric.stop3
  %31 = load i32, i32* %k, align 4
  %add24 = add nsw i32 %31, 1
  store i32 %add24, i32* %j, align 4
  br label %metric.start4

metric.start4:                                    ; preds = %for.end23
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 3)
  br label %for.cond25

for.cond25:                                       ; preds = %metric.start4, %for.inc59
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %d.addr, align 4
  %cmp26 = icmp slt i32 %32, %33
  br i1 %cmp26, label %for.body27, label %metric.stop7

for.body27:                                       ; preds = %for.cond25
  store double 0.000000e+00, double* %sum28, align 8
  store i32 0, i32* %p29, align 4
  br label %metric.start5

metric.start5:                                    ; preds = %for.body27
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 4)
  br label %for.cond30

for.cond30:                                       ; preds = %metric.start5, %for.inc43
  %34 = load i32, i32* %p29, align 4
  %35 = load i32, i32* %k, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body32, label %metric.stop6

for.body32:                                       ; preds = %for.cond30
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %d.addr, align 4
  %mul33 = mul nsw i32 %36, %37
  %38 = load i32, i32* %p29, align 4
  %add34 = add nsw i32 %mul33, %38
  %idxprom35 = sext i32 %add34 to i64
  %39 = load double*, double** %D.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %39, i64 %idxprom35
  %40 = load double, double* %arrayidx36, align 8
  %41 = load i32, i32* %p29, align 4
  %42 = load i32, i32* %d.addr, align 4
  %mul37 = mul nsw i32 %41, %42
  %43 = load i32, i32* %j, align 4
  %add38 = add nsw i32 %mul37, %43
  %idxprom39 = sext i32 %add38 to i64
  %44 = load double*, double** %D.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %44, i64 %idxprom39
  %45 = load double, double* %arrayidx40, align 8
  %mul41 = fmul double %40, %45
  %46 = load double, double* %sum28, align 8
  %add42 = fadd double %46, %mul41
  store double %add42, double* %sum28, align 8
  br label %for.inc43

for.inc43:                                        ; preds = %for.body32
  %47 = load i32, i32* %p29, align 4
  %inc44 = add nsw i32 %47, 1
  store i32 %inc44, i32* %p29, align 4
  br label %for.cond30

metric.stop6:                                     ; preds = %for.cond30
  call void @_metric_capture_stop_(%class.IWrapper* %0, i32 4)
  br label %for.end45

for.end45:                                        ; preds = %metric.stop6
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %d.addr, align 4
  %mul46 = mul nsw i32 %48, %49
  %50 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %mul46, %50
  %idxprom48 = sext i32 %add47 to i64
  %51 = load double*, double** %S.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %51, i64 %idxprom48
  %52 = load double, double* %arrayidx49, align 8
  %53 = load double, double* %sum28, align 8
  %sub50 = fsub double %52, %53
  %54 = load i32, i32* %k, align 4
  %55 = load i32, i32* %d.addr, align 4
  %mul51 = mul nsw i32 %54, %55
  %56 = load i32, i32* %k, align 4
  %add52 = add nsw i32 %mul51, %56
  %idxprom53 = sext i32 %add52 to i64
  %57 = load double*, double** %D.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %57, i64 %idxprom53
  %58 = load double, double* %arrayidx54, align 8
  %div = fdiv double %sub50, %58
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %d.addr, align 4
  %mul55 = mul nsw i32 %59, %60
  %61 = load i32, i32* %j, align 4
  %add56 = add nsw i32 %mul55, %61
  %idxprom57 = sext i32 %add56 to i64
  %62 = load double*, double** %D.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %62, i64 %idxprom57
  store double %div, double* %arrayidx58, align 8
  br label %for.inc59

for.inc59:                                        ; preds = %for.end45
  %63 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %63, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond25

metric.stop7:                                     ; preds = %for.cond25
  call void @_metric_capture_stop_(%class.IWrapper* %0, i32 3)
  br label %for.end61

for.end61:                                        ; preds = %metric.stop7
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %64 = load i32, i32* %k, align 4
  %inc63 = add nsw i32 %64, 1
  store i32 %inc63, i32* %k, align 4
  br label %for.cond

metric.stop8:                                     ; preds = %for.cond
  call void @_metric_capture_stop_(%class.IWrapper* %0, i32 0)
  br label %for.end64

for.end64:                                        ; preds = %metric.stop8
  br label %metric.cleanup

metric.cleanup:                                   ; preds = %for.end64
  call void @_metric_capture_cleanup_(%class.IWrapper* %0)
  br label %65

; <label>:65                                      ; preds = %metric.cleanup
  ret void
}

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %args) #3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %args.addr = alloca i8**, align 8
  %matrixSize = alloca i32, align 4
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %S = alloca double*, align 8
  %D = alloca double*, align 8
  %inp = alloca %"class.std::basic_string", align 8
  %ref.tmp7 = alloca %"class.std::allocator", align 1
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %args, i8*** %args.addr, align 8
  %0 = load i8**, i8*** %args.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp1) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %ref.tmp, i8* %1, %"class.std::allocator"* dereferenceable(1) %ref.tmp1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i32 @_ZSt4stoiRKSsPmi(%"class.std::basic_string"* dereferenceable(8) %ref.tmp, i64* null, i32 10)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp) #2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #2
  store i32 %call, i32* %matrixSize, align 4
  %2 = load i32, i32* %matrixSize, align 4
  %3 = load i32, i32* %matrixSize, align 4
  %mul = mul nsw i32 %2, %3
  %4 = sext i32 %mul to i64
  %5 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 8)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call4 = call noalias i8* @_Znam(i64 %8) #11
  %9 = bitcast i8* %call4 to double*
  store double* %9, double** %S, align 8
  %10 = load i32, i32* %matrixSize, align 4
  %11 = load i32, i32* %matrixSize, align 4
  %mul5 = mul nsw i32 %10, %11
  %12 = sext i32 %mul5 to i64
  %13 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 8)
  %14 = extractvalue { i64, i1 } %13, 1
  %15 = extractvalue { i64, i1 } %13, 0
  %16 = select i1 %14, i64 -1, i64 %15
  %call6 = call noalias i8* @_Znam(i64 %16) #11
  %17 = bitcast i8* %call6 to double*
  store double* %17, double** %D, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %ref.tmp7) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %inp, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp7) #2
  %18 = load i32, i32* %matrixSize, align 4
  %19 = load double*, double** %S, align 8
  %20 = load double*, double** %D, align 8
  invoke void @_Z12testFunctioniPdS_(i32 %18, double* %19, double* %20)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont9
  %21 = load double*, double** %S, align 8
  %isnull = icmp eq double* %21, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %invoke.cont12
  %22 = bitcast double* %21 to i8*
  call void @_ZdaPv(i8* %22) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %invoke.cont12
  %23 = load double*, double** %D, align 8
  %isnull13 = icmp eq double* %23, null
  br i1 %isnull13, label %delete.end15, label %delete.notnull14

delete.notnull14:                                 ; preds = %delete.end
  %24 = bitcast double* %23 to i8*
  call void @_ZdaPv(i8* %24) #12
  br label %delete.end15

delete.end15:                                     ; preds = %delete.notnull14, %delete.end
  store i32 0, i32* %retval
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %inp) #2
  %25 = load i32, i32* %retval
  ret i32 %25

lpad:                                             ; preds = %entry
  %26 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont
  %29 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %exn.slot
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %ehselector.slot
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %ref.tmp) #2
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad2, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp1) #2
  br label %eh.resume

lpad8:                                            ; preds = %invoke.cont3
  %32 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %ref.tmp7) #2
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont9
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %exn.slot
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %ehselector.slot
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %inp) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad11, %lpad8, %ehcleanup
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val17 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val17
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32 @_ZSt4stoiRKSsPmi(%"class.std::basic_string"* dereferenceable(8) %__str, i64* %__idx, i32 %__base) #4 comdat {
entry:
  %__str.addr = alloca %"class.std::basic_string"*, align 8
  %__idx.addr = alloca i64*, align 8
  %__base.addr = alloca i32, align 4
  store %"class.std::basic_string"* %__str, %"class.std::basic_string"** %__str.addr, align 8
  store i64* %__idx, i64** %__idx.addr, align 8
  store i32 %__base, i32* %__base.addr, align 4
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__str.addr, align 8
  %call = call i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* %0) #2
  %1 = load i64*, i64** %__idx.addr, align 8
  %2 = load i32, i32* %__base.addr, align 4
  %call1 = call i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(i64 (i8*, i8**, i32)* @strtol, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str1, i32 0, i32 0), i8* %call, i64* %1, i32 %2)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #1

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"* dereferenceable(1)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #8

; Function Attrs: uwtable
define linkonce_odr i32 @_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_(i64 (i8*, i8**, i32)* %__convf, i8* %__name, i8* %__str, i64* %__idx, i32 %__base) #3 comdat {
entry:
  %__convf.addr = alloca i64 (i8*, i8**, i32)*, align 8
  %__name.addr = alloca i8*, align 8
  %__str.addr = alloca i8*, align 8
  %__idx.addr = alloca i64*, align 8
  %__base.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__endptr = alloca i8*, align 8
  %__tmp = alloca i64, align 8
  store i64 (i8*, i8**, i32)* %__convf, i64 (i8*, i8**, i32)** %__convf.addr, align 8
  store i8* %__name, i8** %__name.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  store i64* %__idx, i64** %__idx.addr, align 8
  store i32 %__base, i32* %__base.addr, align 4
  %call = call i32* @__errno_location() #6
  store i32 0, i32* %call, align 4
  %0 = load i64 (i8*, i8**, i32)*, i64 (i8*, i8**, i32)** %__convf.addr, align 8
  %1 = load i8*, i8** %__str.addr, align 8
  %2 = load i32, i32* %__base.addr, align 4
  %call1 = call i64 %0(i8* %1, i8** %__endptr, i32 %2)
  store i64 %call1, i64* %__tmp, align 8
  %3 = load i8*, i8** %__endptr, align 8
  %4 = load i8*, i8** %__str.addr, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %__name.addr, align 8
  call void @_ZSt24__throw_invalid_argumentPKc(i8* %5) #13
  br label %UnifiedUnreachableBlock

if.else:                                          ; preds = %entry
  %call2 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %6, 34
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i64, i64* %__tmp, align 8
  %cmp4 = icmp slt i64 %7, -2147483648
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i64, i64* %__tmp, align 8
  %cmp6 = icmp sgt i64 %8, 2147483647
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.else
  %9 = load i8*, i8** %__name.addr, align 8
  call void @_ZSt20__throw_out_of_rangePKc(i8* %9) #13
  br label %UnifiedUnreachableBlock

if.else8:                                         ; preds = %lor.lhs.false5
  %10 = load i64, i64* %__tmp, align 8
  %conv = trunc i64 %10 to i32
  store i32 %conv, i32* %__ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else8
  br label %if.end9

if.end9:                                          ; preds = %if.end
  %11 = load i64*, i64** %__idx.addr, align 8
  %tobool = icmp ne i64* %11, null
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end9
  %12 = load i8*, i8** %__endptr, align 8
  %13 = load i8*, i8** %__str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %14 = load i64*, i64** %__idx.addr, align 8
  store i64 %sub.ptr.sub, i64* %14, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end9
  %15 = load i32, i32* %__ret, align 4
  ret i32 %15

UnifiedUnreachableBlock:                          ; preds = %if.then7, %if.then
  unreachable
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare i8* @_ZNKSs5c_strEv(%"class.std::basic_string"*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(i8*) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(i8*) #10

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %0)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  store i64 %call, i64* %coerce.dive
  %coerce.dive1 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive1
  ret i64 %1
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS2_ILl1ELl1EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration.0", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %0)
  %coerce.dive = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  store i64 %call, i64* %coerce.dive
  %coerce.dive1 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive1
  ret i64 %1
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* dereferenceable(8) %__lhs, %"struct.std::chrono::duration"* dereferenceable(8) %__rhs) #3 comdat {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__lhs.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__rhs.addr = alloca %"struct.std::chrono::duration"*, align 8
  %ref.tmp = alloca i64, align 8
  %tmp = alloca %"struct.std::chrono::duration", align 8
  %tmp1 = alloca %"struct.std::chrono::duration", align 8
  store %"struct.std::chrono::duration"* %__lhs, %"struct.std::chrono::duration"** %__lhs.addr, align 8
  store %"struct.std::chrono::duration"* %__rhs, %"struct.std::chrono::duration"** %__rhs.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__lhs.addr, align 8
  %1 = bitcast %"struct.std::chrono::duration"* %tmp to i8*
  %2 = bitcast %"struct.std::chrono::duration"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %tmp)
  %3 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__rhs.addr, align 8
  %4 = bitcast %"struct.std::chrono::duration"* %tmp1 to i8*
  %5 = bitcast %"struct.std::chrono::duration"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %call2 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %tmp1)
  %sub = sub nsw i64 %call, %call2
  store i64 %sub, i64* %ref.tmp
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* %retval, i64* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %6 = load i64, i64* %coerce.dive
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__r, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration.0"* %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  store %"struct.std::chrono::duration.0"* %this, %"struct.std::chrono::duration.0"** %this.addr, align 8
  %this1 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__r, align 8
  ret i64 %0
}

declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) #0

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1EEEES3_lLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat align 2 {
entry:
  %retval = alloca %"struct.std::chrono::duration", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  %ref.tmp = alloca i64, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %0)
  store i64 %call, i64* %ref.tmp
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* %retval, i64* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1EEEC2IlvEERKT_(%"struct.std::chrono::duration"* %this, i64* dereferenceable(8) %__rep) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration"*, align 8
  %__rep.addr = alloca i64*, align 8
  store %"struct.std::chrono::duration"* %this, %"struct.std::chrono::duration"** %this.addr, align 8
  store i64* %__rep, i64** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %__rep.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__r, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1000000000ELl1EElLb0ELb1EE6__castIlS2_ILl1ELl1EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* dereferenceable(8) %__d) #3 comdat align 2 {
entry:
  %retval = alloca %"struct.std::chrono::duration.0", align 8
  %__d.addr = alloca %"struct.std::chrono::duration"*, align 8
  %ref.tmp = alloca i64, align 8
  store %"struct.std::chrono::duration"* %__d, %"struct.std::chrono::duration"** %__d.addr, align 8
  %0 = load %"struct.std::chrono::duration"*, %"struct.std::chrono::duration"** %__d.addr, align 8
  %call = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1EEE5countEv(%"struct.std::chrono::duration"* %0)
  %mul = mul nsw i64 %call, 1000000000
  store i64 %mul, i64* %ref.tmp
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.0"* %retval, i64* dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %retval, i32 0, i32 0
  %1 = load i64, i64* %coerce.dive
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(%"struct.std::chrono::duration.0"* %this, i64* dereferenceable(8) %__rep) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::chrono::duration.0"*, align 8
  %__rep.addr = alloca i64*, align 8
  store %"struct.std::chrono::duration.0"* %this, %"struct.std::chrono::duration.0"** %this.addr, align 8
  store i64* %__rep, i64** %__rep.addr, align 8
  %this1 = load %"struct.std::chrono::duration.0"*, %"struct.std::chrono::duration.0"** %this.addr
  %__r = getelementptr inbounds %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %__rep.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__r, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

declare void @logop(i32)

declare i32 @retDouble(i32)

declare %class.IWrapper* @_metric_capture_long_double_timer_setup_(%"class.std::basic_string"*, %"class.std::basic_string"*, i32)

declare void @_metric_capture_start_(%class.IWrapper*, i32)

declare void @_metric_capture_stop_(%class.IWrapper*, i32)

declare void @_metric_capture_cleanup_(%class.IWrapper*)

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (http://llvm.org/git/clang.git 9a9c87baad47937aaa1f6ca78fa799ab31e970af) (http://llvm.org/git/llvm.git 32675bbfd0c79f67865c0999d8c90a31848ee648)"}
