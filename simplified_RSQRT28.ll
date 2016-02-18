; ModuleID = 'bugpoint-reduced-simplified.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone
declare <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float>, <16 x float>, i16, i32) #0

; Function Attrs: nounwind
define void @f_f() #1 {
allocas:
  %res.i.i.i.i = tail call <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float> undef, <16 x float> undef, i16 -1, i32 8) #1
  %calltmp_to_double.i.i = fpext <16 x float> %res.i.i.i.i to <16 x double>
  %add_y2_load_mul_y_load_sub__mul_mul_xh_load_y_load3_y_load4.i.i.i = fadd <16 x double> %calltmp_to_double.i.i, undef
  %add_y2_load11_mul_y_load6_sub__mul_mul_xh_load7_y_load8_y_load9.i.i.i = fadd <16 x double> %add_y2_load_mul_y_load_sub__mul_mul_xh_load_y_load3_y_load4.i.i.i, undef
  br i1 undef, label %rsqrt___vyd.exit, label %safe_if_after_true.i.i

safe_if_after_true.i.i:                           ; preds = %allocas
  unreachable

rsqrt___vyd.exit:                                 ; preds = %allocas
  %mul_invsqrt_load_invsqrt_load10 = fmul <16 x double> %add_y2_load11_mul_y_load6_sub__mul_mul_xh_load7_y_load8_y_load9.i.i.i, %add_y2_load11_mul_y_load6_sub__mul_mul_xh_load7_y_load8_y_load9.i.i.i
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk 261163)"}
