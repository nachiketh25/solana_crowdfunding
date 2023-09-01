; ModuleID = 'probe8.b8f6c10c-cgu.0'
source_filename = "probe8.b8f6c10c-cgu.0"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpfel"

%"[closure@core::f64::<impl f64>::to_bits::{closure#0}]" = type {}

; core::intrinsics::const_eval_select
; Function Attrs: nounwind
define i64 @_ZN4core10intrinsics17const_eval_select17h857fd77b15e34351E(double %arg) unnamed_addr #0 {
start:
; call core::ops::function::FnOnce::call_once
  %0 = call i64 @_ZN4core3ops8function6FnOnce9call_once17h6a1e85e9cdd12cf0E(double %arg) #3
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %0
}

; core::f64::<impl f64>::to_ne_bytes
; Function Attrs: inlinehint nounwind
define internal i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h40b56ed18b36a986E"(double %self) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = alloca [8 x i8], align 1
; call core::f64::<impl f64>::to_bits
  %_2 = call i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$7to_bits17he479a87c78edca8eE"(double %self) #3
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl u64>::to_ne_bytes
  %2 = call i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_ne_bytes17hab2b5361ca657d62E"(i64 %_2) #3
  store i64 %2, i64* %0, align 8
  %3 = bitcast [8 x i8]* %1 to i8*
  %4 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 8 %4, i64 8, i1 false)
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast [8 x i8]* %1 to i64*
  %6 = load i64, i64* %5, align 1
  ret i64 %6
}

; core::f64::<impl f64>::to_bits
; Function Attrs: inlinehint nounwind
define internal i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$7to_bits17he479a87c78edca8eE"(double %self) unnamed_addr #1 {
start:
  %_3 = alloca double, align 8
  store double %self, double* %_3, align 8
  %0 = load double, double* %_3, align 8
; call core::intrinsics::const_eval_select
  %1 = call i64 @_ZN4core10intrinsics17const_eval_select17h857fd77b15e34351E(double %0) #3
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::f64::<impl f64>::to_bits::{{closure}}
; Function Attrs: inlinehint nounwind
define i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$7to_bits28_$u7b$$u7b$closure$u7d$$u7d$17habfedf2d09e69181E"(%"[closure@core::f64::<impl f64>::to_bits::{closure#0}]"* align 1 %_1, double %rt) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast double %rt to i64
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; core::num::<impl u64>::to_ne_bytes
; Function Attrs: inlinehint nounwind
define internal i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_ne_bytes17hab2b5361ca657d62E"(i64 %self) unnamed_addr #1 {
start:
  %0 = alloca [8 x i8], align 1
  %1 = bitcast [8 x i8]* %0 to i64*
  store i64 %self, i64* %1, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast [8 x i8]* %0 to i64*
  %3 = load i64, i64* %2, align 1
  ret i64 %3
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind
define internal i64 @_ZN4core3ops8function6FnOnce9call_once17h6a1e85e9cdd12cf0E(double %0) unnamed_addr #1 {
start:
  %_2 = alloca double, align 8
  %_1 = alloca %"[closure@core::f64::<impl f64>::to_bits::{closure#0}]", align 1
  store double %0, double* %_2, align 8
  %1 = load double, double* %_2, align 8
; call core::f64::<impl f64>::to_bits::{{closure}}
  %2 = call i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$7to_bits28_$u7b$$u7b$closure$u7d$$u7d$17habfedf2d09e69181E"(%"[closure@core::f64::<impl f64>::to_bits::{closure#0}]"* align 1 %_1, double %1) #3
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %2
}

; probe8::probe
; Function Attrs: nounwind
define void @_ZN6probe85probe17h8870b737d54cda73E() unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_1 = alloca [8 x i8], align 1
; call core::f64::<impl f64>::to_ne_bytes
  %1 = call i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h40b56ed18b36a986E"(double 3.140000e+00) #3
  store i64 %1, i64* %0, align 8
  %2 = bitcast [8 x i8]* %_1 to i8*
  %3 = bitcast i64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 8 %3, i64 8, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { nounwind "target-cpu"="generic" "target-features"="+solana" }
attributes #1 = { inlinehint nounwind "target-cpu"="generic" "target-features"="+solana" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
