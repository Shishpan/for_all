; ModuleID = 'bugpoint-reduced-simplified.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: nounwind argmemonly
declare void @llvm.x86.avx512.mask.storeu.ps.512(i8*, <16 x float>, i16) #0

; Function Attrs: nounwind
define void @result___un_3C_unf_3E_() #1 {
allocas:
  %selectexpr_final.i = load <16 x i32>, <16 x i32>* undef, align 64
  %s.i.i.i = add <16 x i32> zeroinitializer, %selectexpr_final.i
  %v2.i.i = shufflevector <16 x i32> %s.i.i.i, <16 x i32> undef, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %s.i.3.i.i = add <16 x i32> %v2.i.i, %s.i.i.i
  %s.i.2.i.i = add <16 x i32> zeroinitializer, %s.i.3.i.i
  %m3b.i.i = extractelement <16 x i32> %s.i.2.i.i, i32 1
  %s.i.1.i.i = add i32 %m3b.i.i, 0
  %calltmp_to_float = sitofp i32 %s.i.1.i.i to float
  %calltmp_to_float_broadcast_init = insertelement <16 x float> undef, float %calltmp_to_float, i32 0
  %calltmp_to_float_broadcast = shufflevector <16 x float> %calltmp_to_float_broadcast_init, <16 x float> undef, <16 x i32> zeroinitializer
  call void @llvm.x86.avx512.mask.storeu.ps.512(i8* undef, <16 x float> %calltmp_to_float_broadcast, i16 undef) #1
  ret void
}

attributes #0 = { nounwind argmemonly }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (trunk 248266)"}
