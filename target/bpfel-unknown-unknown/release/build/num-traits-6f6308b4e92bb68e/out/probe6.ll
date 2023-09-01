; ModuleID = 'probe6.90b2ab0f-cgu.0'
source_filename = "probe6.90b2ab0f-cgu.0"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpfel"

; core::f64::<impl f64>::is_subnormal
; Function Attrs: inlinehint nounwind
define internal zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17hd488f2cc0583a70dE"(double %self) unnamed_addr #0 {
start:
  %_2 = alloca i8, align 1
  %0 = alloca i8, align 1
; call core::f64::<impl f64>::classify
  %1 = call i8 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$8classify17hdb189bd289901ce1E"(double %self) #2, !range !1
  store i8 %1, i8* %_2, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = load i8, i8* %_2, align 1, !range !1, !noundef !2
  %_4 = zext i8 %2 to i64
  %3 = icmp eq i64 %_4, 3
  br i1 %3, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 1, i8* %0, align 1
  br label %bb4

bb2:                                              ; preds = %bb1
  store i8 0, i8* %0, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %4 = load i8, i8* %0, align 1, !range !3, !noundef !2
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; probe6::probe
; Function Attrs: nounwind
define void @_ZN6probe65probe17h67461161f3db5830E() unnamed_addr #1 {
start:
; call core::f64::<impl f64>::is_subnormal
  %_1 = call zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17hd488f2cc0583a70dE"(double 1.000000e+00) #2
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::f64::<impl f64>::classify
; Function Attrs: nounwind
declare i8 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$8classify17hdb189bd289901ce1E"(double) unnamed_addr #1

attributes #0 = { inlinehint nounwind "target-cpu"="generic" "target-features"="+solana" }
attributes #1 = { nounwind "target-cpu"="generic" "target-features"="+solana" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i8 0, i8 5}
!2 = !{}
!3 = !{i8 0, i8 2}
