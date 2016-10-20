; ModuleID = 'main.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.timespec = type { i64, i64 }
%"class.std::allocator" = type { i8 }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%class.IWrapper = type { i32 (...)** }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" = type { i64, i64, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopkrstuvwxyz\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i64], align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: optsize uwtable
define void @_Z19doesNothingButSleepv() #3 {
entry:
  %__ts.i = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %__ts.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %tv_sec.i = getelementptr inbounds %struct.timespec, %struct.timespec* %__ts.i, i64 0, i32 0
  store i64 1, i64* %tv_sec.i, align 8, !tbaa !1
  %tv_nsec.i = getelementptr inbounds %struct.timespec, %struct.timespec* %__ts.i, i64 0, i32 1
  store i64 0, i64* %tv_nsec.i, align 8, !tbaa !6
  %call7.i = call i32 @nanosleep(%struct.timespec* %__ts.i, %struct.timespec* null) #9
  call void @llvm.lifetime.end(i64 16, i8* %0) #2
  ret void
}

; Function Attrs: optsize uwtable
define void @_Z12testFunctioniPdS_(i32 %d, double* nocapture readonly %S, double* nocapture %D) #3 {
entry:
  %ref.tmp.i146 = alloca %"class.std::allocator", align 1
  %ref.tmp.i143 = alloca %"class.std::allocator", align 1
  %ref.tmp.i140 = alloca %"class.std::allocator", align 1
  %ref.tmp.i137 = alloca %"class.std::allocator", align 1
  %ref.tmp.i134 = alloca %"class.std::allocator", align 1
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %funcName = alloca %"class.std::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"class.std::basic_string", align 8
  %agg.tmp3 = alloca %"class.std::basic_string", align 8
  %0 = bitcast %"class.std::basic_string"* %funcName to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %funcName, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp) #9
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %agg.tmp, %"class.std::basic_string"* dereferenceable(8) %funcName) #9
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %agg.tmp3, %"class.std::basic_string"* dereferenceable(8) %funcName) #9
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont2
  %call = invoke %class.IWrapper* @_Z40_metric_capture_long_double_timer_setup_SsSsi(%"class.std::basic_string"* %agg.tmp, %"class.std::basic_string"* %agg.tmp3, i32 5) #9
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  %1 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i137, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1)
  %_M_p.i.i.i138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.tmp3, i64 0, i32 0, i32 0
  %2 = load i8*, i8** %_M_p.i.i.i138, align 8, !tbaa !7
  %arrayidx.i.i139 = getelementptr inbounds i8, i8* %2, i64 -24
  %3 = bitcast i8* %arrayidx.i.i139 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %3, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i137) #10
  call void @llvm.lifetime.end(i64 1, i8* %1)
  %4 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i140, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %4)
  %_M_p.i.i.i141 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.tmp, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %_M_p.i.i.i141, align 8, !tbaa !7
  %arrayidx.i.i142 = getelementptr inbounds i8, i8* %5, i64 -24
  %6 = bitcast i8* %arrayidx.i.i142 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %6, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i140) #10
  call void @llvm.lifetime.end(i64 1, i8* %4)
  invoke void @_Z22_metric_capture_start_P8IWrapperi(%class.IWrapper* null, i32 0) #9
          to label %invoke.cont8 unwind label %lpad1

invoke.cont8:                                     ; preds = %invoke.cont7
  invoke void @_Z21_metric_capture_stop_P8IWrapperi(%class.IWrapper* null, i32 0) #9
          to label %for.cond.preheader unwind label %lpad1

for.cond.preheader:                               ; preds = %invoke.cont8
  %cmp163 = icmp sgt i32 %d, 0
  br i1 %cmp163, label %for.cond10.preheader.lr.ph, label %for.cond.cleanup

for.cond10.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %7 = sext i32 %d to i64
  br label %for.cond14.preheader.lr.ph

for.cond.loopexit:                                ; preds = %for.cond.cleanup44, %for.cond.cleanup12
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1
  %lftr.wideiv198 = trunc i64 %indvars.iv.next196 to i32
  %exitcond199 = icmp eq i32 %lftr.wideiv198, %d
  br i1 %exitcond199, label %for.cond.cleanup, label %for.cond14.preheader.lr.ph

for.cond14.preheader.lr.ph:                       ; preds = %for.cond10.preheader.lr.ph, %for.cond.loopexit
  %indvars.iv195 = phi i64 [ 0, %for.cond10.preheader.lr.ph ], [ %indvars.iv.next196, %for.cond.loopexit ]
  %indvars.iv187 = phi i64 [ 1, %for.cond10.preheader.lr.ph ], [ %indvars.iv.next188, %for.cond.loopexit ]
  %indvars.iv183 = phi i32 [ 0, %for.cond10.preheader.lr.ph ], [ %indvars.iv.next184, %for.cond.loopexit ]
  %cmp15149 = icmp sgt i64 %indvars.iv195, 0
  br label %for.cond14.preheader

for.cond.cleanup:                                 ; preds = %for.cond.loopexit, %for.cond.preheader
  %8 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i143, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %8)
  %_M_p.i.i.i144 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %funcName, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %_M_p.i.i.i144, align 8, !tbaa !7
  %arrayidx.i.i145 = getelementptr inbounds i8, i8* %9, i64 -24
  %10 = bitcast i8* %arrayidx.i.i145 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %10, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i143) #10
  call void @llvm.lifetime.end(i64 1, i8* %8)
  call void @llvm.lifetime.end(i64 8, i8* %0) #2
  ret void

lpad:                                             ; preds = %entry
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  br label %eh.resume

lpad1:                                            ; preds = %invoke.cont8, %invoke.cont7, %invoke.cont
  %14 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  br label %ehcleanup78

lpad4:                                            ; preds = %invoke.cont2
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  %23 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i146, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %23)
  %_M_p.i.i.i147 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.tmp3, i64 0, i32 0, i32 0
  %24 = load i8*, i8** %_M_p.i.i.i147, align 8, !tbaa !7
  %arrayidx.i.i148 = getelementptr inbounds i8, i8* %24, i64 -24
  %25 = bitcast i8* %arrayidx.i.i148 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %25, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i146) #10
  call void @llvm.lifetime.end(i64 1, i8* %23)
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad6, %lpad4
  %exn.slot.0 = phi i8* [ %21, %lpad6 ], [ %18, %lpad4 ]
  %ehselector.slot.0 = phi i32 [ %22, %lpad6 ], [ %19, %lpad4 ]
  %26 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i134, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %26)
  %_M_p.i.i.i135 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.tmp, i64 0, i32 0, i32 0
  %27 = load i8*, i8** %_M_p.i.i.i135, align 8, !tbaa !7
  %arrayidx.i.i136 = getelementptr inbounds i8, i8* %27, i64 -24
  %28 = bitcast i8* %arrayidx.i.i136 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %28, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i134) #10
  call void @llvm.lifetime.end(i64 1, i8* %26)
  br label %ehcleanup78

for.cond14.preheader:                             ; preds = %for.cond.cleanup16, %for.cond14.preheader.lr.ph
  %indvars.iv172 = phi i64 [ %indvars.iv195, %for.cond14.preheader.lr.ph ], [ %indvars.iv.next173, %for.cond.cleanup16 ]
  %29 = mul nsw i64 %indvars.iv172, %7
  br i1 %cmp15149, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup12:                               ; preds = %for.cond.cleanup16
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1
  %indvars.iv.next184 = add nuw nsw i32 %indvars.iv183, 1
  %cmp37160 = icmp slt i64 %indvars.iv.next196, %7
  br i1 %cmp37160, label %for.cond42.preheader.lr.ph, label %for.cond.loopexit

for.cond42.preheader.lr.ph:                       ; preds = %for.cond.cleanup12
  %cmp43155 = icmp sgt i64 %indvars.iv195, 0
  %30 = mul nsw i64 %indvars.iv195, %7
  %mul46 = mul nsw i32 %indvars.iv183, %d
  %31 = trunc i64 %indvars.iv195 to i32
  %add65 = add nsw i32 %mul46, %31
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds double, double* %D, i64 %idxprom66
  br label %for.cond42.preheader

for.cond.cleanup16:                               ; preds = %for.body17, %for.cond14.preheader
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond14.preheader ], [ %add23, %for.body17 ]
  %32 = add nsw i64 %29, %indvars.iv195
  %arrayidx27 = getelementptr inbounds double, double* %S, i64 %32
  %33 = load double, double* %arrayidx27, align 8, !tbaa !11
  %sub = fsub double %33, %sum.0.lcssa
  %arrayidx31 = getelementptr inbounds double, double* %D, i64 %32
  store double %sub, double* %arrayidx31, align 8, !tbaa !11
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1
  %lftr.wideiv176 = trunc i64 %indvars.iv.next173 to i32
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %d
  br i1 %exitcond177, label %for.cond.cleanup12, label %for.cond14.preheader

for.body17:                                       ; preds = %for.cond14.preheader, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 0, %for.cond14.preheader ]
  %sum.0150 = phi double [ %add23, %for.body17 ], [ 0.000000e+00, %for.cond14.preheader ]
  %34 = add nsw i64 %indvars.iv, %29
  %arrayidx = getelementptr inbounds double, double* %D, i64 %34
  %35 = load double, double* %arrayidx, align 8, !tbaa !11
  %36 = mul nsw i64 %indvars.iv, %7
  %37 = add nsw i64 %36, %indvars.iv195
  %arrayidx21 = getelementptr inbounds double, double* %D, i64 %37
  %38 = load double, double* %arrayidx21, align 8, !tbaa !11
  %mul22 = fmul double %35, %38
  %add23 = fadd double %sum.0150, %mul22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv183
  br i1 %exitcond, label %for.cond.cleanup16, label %for.body17

for.cond42.preheader:                             ; preds = %for.cond.cleanup44, %for.cond42.preheader.lr.ph
  %indvars.iv189 = phi i64 [ %indvars.iv187, %for.cond42.preheader.lr.ph ], [ %indvars.iv.next190, %for.cond.cleanup44 ]
  br i1 %cmp43155, label %for.body45, label %for.cond.cleanup44

for.cond.cleanup44:                               ; preds = %for.body45, %for.cond42.preheader
  %sum40.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %add55, %for.body45 ]
  %39 = add nsw i64 %indvars.iv189, %30
  %arrayidx62 = getelementptr inbounds double, double* %S, i64 %39
  %40 = load double, double* %arrayidx62, align 8, !tbaa !11
  %sub63 = fsub double %40, %sum40.0.lcssa
  %41 = load double, double* %arrayidx67, align 8, !tbaa !11
  %div = fdiv double %sub63, %41
  %arrayidx71 = getelementptr inbounds double, double* %D, i64 %39
  store double %div, double* %arrayidx71, align 8, !tbaa !11
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %lftr.wideiv193 = trunc i64 %indvars.iv.next190 to i32
  %exitcond194 = icmp eq i32 %lftr.wideiv193, %d
  br i1 %exitcond194, label %for.cond.loopexit, label %for.cond42.preheader

for.body45:                                       ; preds = %for.cond42.preheader, %for.body45
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %for.body45 ], [ 0, %for.cond42.preheader ]
  %sum40.0156 = phi double [ %add55, %for.body45 ], [ 0.000000e+00, %for.cond42.preheader ]
  %42 = add nsw i64 %indvars.iv178, %30
  %arrayidx49 = getelementptr inbounds double, double* %D, i64 %42
  %43 = load double, double* %arrayidx49, align 8, !tbaa !11
  %44 = mul nsw i64 %indvars.iv178, %7
  %45 = add nsw i64 %44, %indvars.iv189
  %arrayidx53 = getelementptr inbounds double, double* %D, i64 %45
  %46 = load double, double* %arrayidx53, align 8, !tbaa !11
  %mul54 = fmul double %43, %46
  %add55 = fadd double %sum40.0156, %mul54
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %lftr.wideiv185 = trunc i64 %indvars.iv.next179 to i32
  %exitcond186 = icmp eq i32 %lftr.wideiv185, %indvars.iv183
  br i1 %exitcond186, label %for.cond.cleanup44, label %for.body45

ehcleanup78:                                      ; preds = %ehcleanup, %lpad1
  %exn.slot.1 = phi i8* [ %15, %lpad1 ], [ %exn.slot.0, %ehcleanup ]
  %ehselector.slot.1 = phi i32 [ %16, %lpad1 ], [ %ehselector.slot.0, %ehcleanup ]
  %47 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %47)
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %funcName, i64 0, i32 0, i32 0
  %48 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i = getelementptr inbounds i8, i8* %48, i64 -24
  %49 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %49, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i) #10
  call void @llvm.lifetime.end(i64 1, i8* %47)
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup78, %lpad
  %exn.slot.2 = phi i8* [ %exn.slot.1, %ehcleanup78 ], [ %12, %lpad ]
  %ehselector.slot.2 = phi i32 [ %ehselector.slot.1, %ehcleanup78 ], [ %13, %lpad ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.2, 0
  %lpad.val79 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { i8*, i32 } %lpad.val79
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"* dereferenceable(1)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare %class.IWrapper* @_Z40_metric_capture_long_double_timer_setup_SsSsi(%"class.std::basic_string"*, %"class.std::basic_string"*, i32) #0

; Function Attrs: optsize
declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"* dereferenceable(8)) #0

; Function Attrs: optsize
declare void @_Z22_metric_capture_start_P8IWrapperi(%class.IWrapper*, i32) #0

; Function Attrs: optsize
declare void @_Z21_metric_capture_stop_P8IWrapperi(%class.IWrapper*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %args) #3 {
entry:
  %ref.tmp.i35 = alloca %"class.std::allocator", align 1
  %ref.tmp.i32 = alloca %"class.std::allocator", align 1
  %ref.tmp.i29 = alloca %"class.std::allocator", align 1
  %__endptr.i.i = alloca i8*, align 8
  %ref.tmp.i = alloca %"class.std::allocator", align 1
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  %inp = alloca %"class.std::basic_string", align 8
  %ref.tmp7 = alloca %"class.std::allocator", align 1
  %arrayidx = getelementptr inbounds i8*, i8** %args, i64 1
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %ref.tmp, i8* %0, %"class.std::allocator"* dereferenceable(1) %ref.tmp1) #9
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_p.i.i.i27 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i27, align 8, !tbaa !7
  %2 = bitcast i8** %__endptr.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %call.i.i = tail call i32* @__errno_location() #11
  store i32 0, i32* %call.i.i, align 4, !tbaa !14
  %call1.i.i = call i64 @strtol(i8* %1, i8** %__endptr.i.i, i32 10) #9
  %3 = load i8*, i8** %__endptr.i.i, align 8, !tbaa !13
  %cmp.i.i = icmp eq i8* %3, %1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  invoke void @_ZSt24__throw_invalid_argumentPKc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str2, i64 0, i64 0)) #12
          to label %.noexc unwind label %lpad2

.noexc:                                           ; preds = %if.then.i.i
  unreachable

if.else.i.i:                                      ; preds = %invoke.cont
  %4 = load i32, i32* %call.i.i, align 4, !tbaa !14
  %cmp3.i.i = icmp eq i32 %4, 34
  %call1.off.i.i = add i64 %call1.i.i, 2147483648
  %5 = icmp ugt i64 %call1.off.i.i, 4294967295
  %6 = or i1 %5, %cmp3.i.i
  br i1 %6, label %if.then7.i.i, label %invoke.cont3

if.then7.i.i:                                     ; preds = %if.else.i.i
  invoke void @_ZSt20__throw_out_of_rangePKc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str2, i64 0, i64 0)) #12
          to label %.noexc28 unwind label %lpad2

.noexc28:                                         ; preds = %if.then7.i.i
  unreachable

invoke.cont3:                                     ; preds = %if.else.i.i
  call void @llvm.lifetime.end(i64 8, i8* %2) #2
  %7 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i29, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %7)
  %8 = load i8*, i8** %_M_p.i.i.i27, align 8, !tbaa !7
  %arrayidx.i.i31 = getelementptr inbounds i8, i8* %8, i64 -24
  %9 = bitcast i8* %arrayidx.i.i31 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %9, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i29) #10
  call void @llvm.lifetime.end(i64 1, i8* %7)
  %mul = shl i64 %call1.i.i, 3
  %10 = mul i64 %mul, %call1.i.i
  %11 = and i64 %10, 34359738360
  %call4 = call noalias i8* @_Znam(i64 %11) #13
  %call6 = call noalias i8* @_Znam(i64 %11) #13
  %12 = bitcast %"class.std::basic_string"* %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %inp, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str1, i64 0, i64 0), %"class.std::allocator"* dereferenceable(1) %ref.tmp7) #9
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont3
  %conv.i.i = trunc i64 %call1.i.i to i32
  %13 = bitcast i8* %call6 to double*
  %14 = bitcast i8* %call4 to double*
  invoke void @_Z12testFunctioniPdS_(i32 %conv.i.i, double* %14, double* %13) #9
          to label %delete.notnull unwind label %lpad11

delete.notnull:                                   ; preds = %invoke.cont9
  call void @_ZdaPv(i8* %call4) #14
  call void @_ZdaPv(i8* %call6) #14
  %15 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i32, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %15)
  %_M_p.i.i.i33 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %inp, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i33, align 8, !tbaa !7
  %arrayidx.i.i34 = getelementptr inbounds i8, i8* %16, i64 -24
  %17 = bitcast i8* %arrayidx.i.i34 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %17, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i32) #10
  call void @llvm.lifetime.end(i64 1, i8* %15)
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 0

lpad:                                             ; preds = %entry
  %18 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  br label %eh.resume

lpad2:                                            ; preds = %if.then7.i.i, %if.then.i.i
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  %23 = extractvalue { i8*, i32 } %21, 1
  %24 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i35, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %24)
  %25 = load i8*, i8** %_M_p.i.i.i27, align 8, !tbaa !7
  %arrayidx.i.i37 = getelementptr inbounds i8, i8* %25, i64 -24
  %26 = bitcast i8* %arrayidx.i.i37 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %26, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i35) #10
  call void @llvm.lifetime.end(i64 1, i8* %24)
  br label %eh.resume

lpad8:                                            ; preds = %invoke.cont3
  %27 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  %29 = extractvalue { i8*, i32 } %27, 1
  br label %eh.resume

lpad11:                                           ; preds = %invoke.cont9
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  %33 = getelementptr inbounds %"class.std::allocator", %"class.std::allocator"* %ref.tmp.i, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %33)
  %_M_p.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %inp, i64 0, i32 0, i32 0
  %34 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i = getelementptr inbounds i8, i8* %34, i64 -24
  %35 = bitcast i8* %arrayidx.i.i to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %35, %"class.std::allocator"* dereferenceable(1) %ref.tmp.i) #10
  call void @llvm.lifetime.end(i64 1, i8* %33)
  br label %eh.resume

eh.resume:                                        ; preds = %lpad, %lpad2, %lpad11, %lpad8
  %ehselector.slot.1 = phi i32 [ %32, %lpad11 ], [ %29, %lpad8 ], [ %23, %lpad2 ], [ %20, %lpad ]
  %exn.slot.1 = phi i8* [ %31, %lpad11 ], [ %28, %lpad8 ], [ %22, %lpad2 ], [ %19, %lpad ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0
  %lpad.val17 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val17
}

; Function Attrs: nobuiltin optsize
declare noalias i8* @_Znam(i64) #4

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(i8*) #5

; Function Attrs: nounwind optsize
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #6

; Function Attrs: noreturn optsize
declare void @_ZSt24__throw_invalid_argumentPKc(i8*) #7

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_out_of_rangePKc(i8*) #7

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, %"class.std::allocator"* dereferenceable(1) %__a) #8 align 2 {
entry:
  %cmp = icmp eq %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*)
  br i1 %cmp, label %if.end5, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  %_M_refcount = getelementptr inbounds %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep", %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, i64 0, i32 0, i32 2
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %0 = atomicrmw volatile add i32* %_M_refcount, i32 -1 acq_rel
  br label %invoke.cont

if.else.i:                                        ; preds = %if.then
  %1 = load i32, i32* %_M_refcount, align 4, !tbaa !14
  %add.i.i = add nsw i32 %1, -1
  store i32 %add.i.i, i32* %_M_refcount, align 4, !tbaa !14
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ %1, %if.else.i ]
  %cmp3 = icmp slt i32 %retval.0.i, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %invoke.cont
  tail call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, %"class.std::allocator"* dereferenceable(1) %__a) #10
  br label %if.end5

if.end5:                                          ; preds = %entry, %invoke.cont, %if.then4
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*, %"class.std::allocator"* dereferenceable(1)) #1

; Function Attrs: nounwind optsize
declare extern_weak i32 @__pthread_key_create(i32*, void (i8*)*) #1

; Function Attrs: optsize
declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) #0

; Function Attrs: optsize
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit) #9
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* @__dso_handle) #2
  ret void
}

attributes #0 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize readnone }
attributes #12 = { noreturn optsize }
attributes #13 = { builtin optsize }
attributes #14 = { builtin nounwind optsize }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (http://llvm.org/git/clang.git 9a9c87baad47937aaa1f6ca78fa799ab31e970af) (http://llvm.org/git/llvm.git 32675bbfd0c79f67865c0999d8c90a31848ee648)"}
!1 = !{!2, !3, i64 0}
!2 = !{!"_ZTS8timespec", !3, i64 0, !3, i64 8}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!2, !3, i64 8}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSSs", !9, i64 0}
!9 = !{!"_ZTSNSs12_Alloc_hiderE", !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !4, i64 0}
!16 = !{!"branch_weights", i32 64, i32 4}
