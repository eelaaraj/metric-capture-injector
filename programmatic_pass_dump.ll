; Function Attrs: nounwind uwtable
define void @_Z12testFunctioniPdS_(i32 %d, double* %S, double* %D) #5 {
entry:
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc72, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %d.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end74

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %xyz, align 8
  %2 = load i32, i32* %k, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %d.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %p, align 4
  %6 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %d.addr, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %p, align 4
  %add = add nsw i32 %mul, %9
  %idxprom = sext i32 %add to i64
  %10 = load double*, double** %D.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %12 = load i32, i32* %p, align 4
  %13 = load i32, i32* %d.addr, align 4
  %mul7 = mul nsw i32 %12, %13
  %14 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %mul7, %14
  %idxprom9 = sext i32 %add8 to i64
  %15 = load double*, double** %D.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %15, i64 %idxprom9
  %16 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %11, %16
  %17 = load double, double* %sum, align 8
  %add12 = fadd double %17, %mul11
  store double %add12, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %18 = load i32, i32* %p, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %d.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %21 = load i32, i32* %k, align 4
  %add14 = add nsw i32 %mul13, %21
  %idxprom15 = sext i32 %add14 to i64
  %22 = load double*, double** %S.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %22, i64 %idxprom15
  %23 = load double, double* %arrayidx16, align 8
  %24 = load double, double* %sum, align 8
  %sub = fsub double %23, %24
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %d.addr, align 4
  %mul17 = mul nsw i32 %25, %26
  %27 = load i32, i32* %k, align 4
  %add18 = add nsw i32 %mul17, %27
  %idxprom19 = sext i32 %add18 to i64
  %28 = load double*, double** %D.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %28, i64 %idxprom19
  store double %sub, double* %arrayidx20, align 8
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %29 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond1

for.end23:                                        ; preds = %for.cond1
  %30 = load i32, i32* %d.addr, align 4
  %conv = sitofp i32 %30 to double
  %31 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load double*, double** %S.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %32, i64 %idxprom24
  %33 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %conv, %33
  %34 = load double, double* %xyz, align 8
  %add27 = fadd double %34, %mul26
  store double %add27, double* %xyz, align 8
  %35 = load i32, i32* %k, align 4
  %add28 = add nsw i32 %35, 1
  store i32 %add28, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc63, %for.end23
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %d.addr, align 4
  %cmp30 = icmp slt i32 %36, %37
  br i1 %cmp30, label %for.body31, label %for.end65

for.body31:                                       ; preds = %for.cond29
  store double 0.000000e+00, double* %sum32, align 8
  store i32 0, i32* %p33, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc47, %for.body31
  %38 = load i32, i32* %p33, align 4
  %39 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %38, %39
  br i1 %cmp35, label %for.body36, label %for.end49

for.body36:                                       ; preds = %for.cond34
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %d.addr, align 4
  %mul37 = mul nsw i32 %40, %41
  %42 = load i32, i32* %p33, align 4
  %add38 = add nsw i32 %mul37, %42
  %idxprom39 = sext i32 %add38 to i64
  %43 = load double*, double** %D.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %43, i64 %idxprom39
  %44 = load double, double* %arrayidx40, align 8
  %45 = load i32, i32* %p33, align 4
  %46 = load i32, i32* %d.addr, align 4
  %mul41 = mul nsw i32 %45, %46
  %47 = load i32, i32* %j, align 4
  %add42 = add nsw i32 %mul41, %47
  %idxprom43 = sext i32 %add42 to i64
  %48 = load double*, double** %D.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %48, i64 %idxprom43
  %49 = load double, double* %arrayidx44, align 8
  %mul45 = fmul double %44, %49
  %50 = load double, double* %sum32, align 8
  %add46 = fadd double %50, %mul45
  store double %add46, double* %sum32, align 8
  br label %for.inc47

for.inc47:                                        ; preds = %for.body36
  %51 = load i32, i32* %p33, align 4
  %inc48 = add nsw i32 %51, 1
  store i32 %inc48, i32* %p33, align 4
  br label %for.cond34

for.end49:                                        ; preds = %for.cond34
  %52 = load i32, i32* %k, align 4
  %53 = load i32, i32* %d.addr, align 4
  %mul50 = mul nsw i32 %52, %53
  %54 = load i32, i32* %j, align 4
  %add51 = add nsw i32 %mul50, %54
  %idxprom52 = sext i32 %add51 to i64
  %55 = load double*, double** %S.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %55, i64 %idxprom52
  %56 = load double, double* %arrayidx53, align 8
  %57 = load double, double* %sum32, align 8
  %sub54 = fsub double %56, %57
  %58 = load i32, i32* %k, align 4
  %59 = load i32, i32* %d.addr, align 4
  %mul55 = mul nsw i32 %58, %59
  %60 = load i32, i32* %k, align 4
  %add56 = add nsw i32 %mul55, %60
  %idxprom57 = sext i32 %add56 to i64
  %61 = load double*, double** %D.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %61, i64 %idxprom57
  %62 = load double, double* %arrayidx58, align 8
  %div = fdiv double %sub54, %62
  %63 = load i32, i32* %k, align 4
  %64 = load i32, i32* %d.addr, align 4
  %mul59 = mul nsw i32 %63, %64
  %65 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %mul59, %65
  %idxprom61 = sext i32 %add60 to i64
  %66 = load double*, double** %D.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %66, i64 %idxprom61
  store double %div, double* %arrayidx62, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.end49
  %67 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %67, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond29

for.end65:                                        ; preds = %for.cond29
  %68 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load double*, double** %D.addr, align 8
  %arrayidx67 = getelementptr inbounds double, double* %69, i64 %idxprom66
  %70 = load double, double* %arrayidx67, align 8
  %mul68 = fmul double %70, 2.000000e+00
  %71 = load i32, i32* %d.addr, align 4
  %conv69 = sitofp i32 %71 to double
  %mul70 = fmul double %mul68, %conv69
  %72 = load double, double* %xyz, align 8
  %add71 = fadd double %72, %mul70
  store double %add71, double* %xyz, align 8
  br label %for.inc72

for.inc72:                                        ; preds = %for.end65
  %73 = load i32, i32* %k, align 4
  %inc73 = add nsw i32 %73, 1
  store i32 %inc73, i32* %k, align 4
  br label %for.cond

for.end74:                                        ; preds = %for.cond
  %74 = load double*, double** %S.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %74, i64 0
  %75 = load double, double* %arrayidx75, align 8
  %76 = load i32, i32* %d.addr, align 4
  %mul76 = mul nsw i32 2, %76
  %idxprom77 = sext i32 %mul76 to i64
  %77 = load double*, double** %D.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %77, i64 %idxprom77
  %78 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %75, %78
  store double %mul79, double* %abc, align 8
  ret void
}

