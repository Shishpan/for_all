; ModuleID = 'bugpoint-reduced-simplified.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone
declare <16 x float> @llvm.x86.avx512.rcp28.ps(<16 x float>, <16 x float>, i16, i32) #0

; Function Attrs: nounwind
define void @f_f() #1 {
allocas:
  %res.i.i = tail call <16 x float> @llvm.x86.avx512.rcp28.ps(<16 x float> undef, <16 x float> undef, i16 -1, i32 8) #1
  %sub_ix_load_div__x_load9 = fsub <16 x float> %res.i.i, undef
  %v1.i59 = select <16 x i1> undef, <16 x float> undef, <16 x float> %sub_ix_load_div__x_load9
  %less_d_load23_ = fcmp ult <16 x float> %v1.i59, <float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000, float 0x3E7AD7F2A0000000>
  %v1.i = select <16 x i1> %less_d_load23_, <16 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <16 x float> zeroinitializer
  store <16 x float> %v1.i, <16 x float>* undef, align 4, !filename !1, !first_line !2, !first_column !3, !last_line !2, !last_column !4
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk 261163)"}
!1 = !{!"/export/users/shishpan/ispc/tests/test-104.ispc"}
!2 = !{i32 11}
!3 = !{i32 5}
!4 = !{i32 22}
