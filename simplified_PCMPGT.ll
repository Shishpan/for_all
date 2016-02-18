; ModuleID = 'bugpoint-reduced-simplified.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: argmemonly nounwind readonly
declare <16 x float> @llvm.x86.avx512.mask.loadu.ps.512(i8*, <16 x float>, i16) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.x86.avx512.mask.storeu.ps.512(i8*, <16 x float>, i16) #1

; Function Attrs: norecurse nounwind readnone
declare i32 @width___(<16 x i1>) #2

; Function Attrs: nounwind
declare <16 x i32> @switchit___vyiuni(<16 x i32>, i32, <16 x i1>) #3

; Function Attrs: nounwind
define void @f_fu___un_3C_unf_3E_un_3C_unf_3E_unf(float* noalias nocapture %RET, float* noalias %aFOO, float %b, <16 x i1> %__mask) #3 {
allocas:
  %calltmp = tail call <16 x i32> @switchit___vyiuni(<16 x i32> undef, i32 undef, <16 x i1> %__mask)
  ret void
}

; Function Attrs: nounwind
declare void @result___un_3C_unf_3E_(float* noalias nocapture, <16 x i1>) #3

; Function Attrs: norecurse nounwind readnone
declare i32 @width() #2

; Function Attrs: nounwind
declare void @f_fu(float* noalias nocapture, float* noalias nocapture readonly, float) #3

; Function Attrs: norecurse nounwind
declare void @result(float* noalias nocapture) #4

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #5

attributes #0 = { argmemonly nounwind readonly }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk 261163)"}
