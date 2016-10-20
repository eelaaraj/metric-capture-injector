; Function Attrs: nounwind uwtable
define void @_Z12testFunctioniPdS_(i32 %d, double* %S, double* %D) #5 {
entry:
  %funcName = alloca %"class.std::basic_string", align 8
  %fileName = alloca %"class.std::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %funcName, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str13, i64 0, i64 0), %"class.std::allocator"* %ref.tmp)
  %ref.tmp1 = alloca %"class.std::allocator", align 1
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %fileName, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str2, i64 0, i64 0), %"class.std::allocator"* %ref.tmp1)
  %0 = call %class.IWrapper* @_metric_capture_long_double_timer_setup_(%"class.std::basic_string"* %fileName, %"class.std::basic_string"* %funcName, i32 5)
  %d.addr = alloca i32, align 4
  %S.addr = alloca double*, align 8
  %D.addr = alloca double*, align 8
  %k = alloca i32, align 4
  %xyz = alloca double, align 8
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %p = alloca i32, align 4
  %j = alloca i32, align 4
  %sum32 = alloca double, align 8
  %p33 = alloca i32, align 4
  %abc = alloca double, align 8
  store i32 %d, i32* %d.addr, align 4
  store double* %S, double** %S.addr, align 8
  store double* %D, double** %D.addr, align 8
  store i32 0, i32* %k, align 4
  br label %metric.start

metric.start:                                     ; preds = %entry, %for.inc72
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %metric.start
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %d.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end74

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %xyz, align 8
  %3 = load i32, i32* %k, align 4
  store i32 %3, i32* %i, align 4
  br label %metric.start80

metric.start80:                                   ; preds = %for.body, %for.inc21
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 1)
  br label %for.cond1

for.cond1:                                        ; preds = %metric.start80
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %d.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %p, align 4
  br label %metric.start81

metric.start81:                                   ; preds = %for.body3, %for.inc
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 2)
  br label %for.cond4

for.cond4:                                        ; preds = %metric.start81
  %6 = load i32, i32* %p, align 4
  %7 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body6, label %for.end

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
  br label %metric.start81

for.end:                                          ; preds = %for.cond4
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
  br label %metric.start80

for.end23:                                        ; preds = %for.cond1
  %31 = load i32, i32* %d.addr, align 4
  %conv = sitofp i32 %31 to double
  %32 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load double*, double** %S.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %33, i64 %idxprom24
  %34 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %conv, %34
  %35 = load double, double* %xyz, align 8
  %add27 = fadd double %35, %mul26
  store double %add27, double* %xyz, align 8
  %36 = load i32, i32* %k, align 4
  %add28 = add nsw i32 %36, 1
  store i32 %add28, i32* %j, align 4
  br label %metric.start82

metric.start82:                                   ; preds = %for.end23, %for.inc63
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 3)
  br label %for.cond29

for.cond29:                                       ; preds = %metric.start82
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %d.addr, align 4
  %cmp30 = icmp slt i32 %37, %38
  br i1 %cmp30, label %for.body31, label %for.end65

for.body31:                                       ; preds = %for.cond29
  store double 0.000000e+00, double* %sum32, align 8
  store i32 0, i32* %p33, align 4
  br label %metric.start83

metric.start83:                                   ; preds = %for.body31, %for.inc47
  call void @_metric_capture_start_(%class.IWrapper* %0, i32 4)
  br label %for.cond34

for.cond34:                                       ; preds = %metric.start83
  %39 = load i32, i32* %p33, align 4
  %40 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %39, %40
  br i1 %cmp35, label %for.body36, label %for.end49

for.body36:                                       ; preds = %for.cond34
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %d.addr, align 4
  %mul37 = mul nsw i32 %41, %42
  %43 = load i32, i32* %p33, align 4
  %add38 = add nsw i32 %mul37, %43
  %idxprom39 = sext i32 %add38 to i64
  %44 = load double*, double** %D.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %44, i64 %idxprom39
  %45 = load double, double* %arrayidx40, align 8
  %46 = load i32, i32* %p33, align 4
  %47 = load i32, i32* %d.addr, align 4
  %mul41 = mul nsw i32 %46, %47
  %48 = load i32, i32* %j, align 4
  %add42 = add nsw i32 %mul41, %48
  %idxprom43 = sext i32 %add42 to i64
  %49 = load double*, double** %D.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %49, i64 %idxprom43
  %50 = load double, double* %arrayidx44, align 8
  %mul45 = fmul double %45, %50
  %51 = load double, double* %sum32, align 8
  %add46 = fadd double %51, %mul45
  store double %add46, double* %sum32, align 8
  br label %for.inc47

for.inc47:                                        ; preds = %for.body36
  %52 = load i32, i32* %p33, align 4
  %inc48 = add nsw i32 %52, 1
  store i32 %inc48, i32* %p33, align 4
  br label %metric.start83

for.end49:                                        ; preds = %for.cond34
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %d.addr, align 4
  %mul50 = mul nsw i32 %53, %54
  %55 = load i32, i32* %j, align 4
  %add51 = add nsw i32 %mul50, %55
  %idxprom52 = sext i32 %add51 to i64
  %56 = load double*, double** %S.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %56, i64 %idxprom52
  %57 = load double, double* %arrayidx53, align 8
  %58 = load double, double* %sum32, align 8
  %sub54 = fsub double %57, %58
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %d.addr, align 4
  %mul55 = mul nsw i32 %59, %60
  %61 = load i32, i32* %k, align 4
  %add56 = add nsw i32 %mul55, %61
  %idxprom57 = sext i32 %add56 to i64
  %62 = load double*, double** %D.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %62, i64 %idxprom57
  %63 = load double, double* %arrayidx58, align 8
  %div = fdiv double %sub54, %63
  %64 = load i32, i32* %k, align 4
  %65 = load i32, i32* %d.addr, align 4
  %mul59 = mul nsw i32 %64, %65
  %66 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %mul59, %66
  %idxprom61 = sext i32 %add60 to i64
  %67 = load double*, double** %D.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %67, i64 %idxprom61
  store double %div, double* %arrayidx62, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end49
  %68 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %68, 1
  store i32 %inc64, i32* %j, align 4
  br label %metric.start82

for.end65:                                        ; preds = %for.cond29
  %69 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %69 to i64
  %70 = load double*, double** %D.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %70, i64 %idxprom66
  %71 = load double, double* %arrayidx67, align 8
  %mul68 = fmul double %71, 2.000000e+00
  %72 = load i32, i32* %d.addr, align 4
  %conv69 = sitofp i32 %72 to double
  %mul70 = fmul double %mul68, %conv69
  %73 = load double, double* %xyz, align 8
  %add71 = fadd double %73, %mul70
  store double %add71, double* %xyz, align 8
  br label %for.inc72

for.inc72:                                        ; preds = %for.end65
  %74 = load i32, i32* %k, align 4
  %inc73 = add nsw i32 %74, 1
  store i32 %inc73, i32* %k, align 4
  br label %metric.start

for.end74:                                        ; preds = %for.cond
  %75 = load double*, double** %S.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %75, i64 0
  %76 = load double, double* %arrayidx75, align 8
  %77 = load i32, i32* %d.addr, align 4
  %mul76 = mul nsw i32 2, %77
  %idxprom77 = sext i32 %mul76 to i64
  %78 = load double*, double** %D.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %78, i64 %idxprom77
  %79 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %76, %79
  store double %mul79, double* %abc, align 8
  ret void
}

