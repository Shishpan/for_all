; ModuleID = 'bugpoint-reduced-simplified.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind argmemonly
declare void @llvm.x86.avx512.mask.storeu.d.512(i8*, <16 x i32>, i16) #0

; Function Attrs: nounwind readonly argmemonly
declare <8 x i64> @llvm.x86.avx512.gather.dpq.512(<8 x i64>, i8*, <8 x i32>, i8, i32) #1

; Function Attrs: nounwind
define void @f_f() #2 {
allocas:
  br i1 icmp ne (i16 bitcast (<16 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false> to i16), i16 0), label %safe_if_run_true, label %safe_if_after_true

safe_if_after_true:                               ; preds = %allocas
  ret void

safe_if_run_true:                                 ; preds = %allocas
  %res1.i = call <8 x i64> @llvm.x86.avx512.gather.dpq.512(<8 x i64> undef, i8* undef, <8 x i32> undef, i8 bitcast (<8 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false> to i8), i32 1) #2
  call void @llvm.x86.avx512.mask.storeu.d.512(i8* undef, <16 x i32> undef, i16 bitcast (<16 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false> to i16)) #2
  unreachable
}

attributes #0 = { nounwind argmemonly }
attributes #1 = { nounwind readonly argmemonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (trunk 245867)"}
