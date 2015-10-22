; ModuleID = './tests/double-max.ispc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone
declare <8 x double> @llvm.x86.avx512.mask.max.pd.512(<8 x double>, <8 x double>, <8 x double>, i8, i32) #0

; Function Attrs: nounwind readonly argmemonly
declare <16 x float> @llvm.x86.avx512.mask.loadu.ps.512(i8*, <16 x float>, i16) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.x86.avx512.mask.storeu.ps.512(i8*, <16 x float>, i16) #2

; Function Attrs: nounwind readnone
define i32 @width___(<16 x i1> %__mask) #0 {
allocas:
  ret i32 16
}

; Function Attrs: nounwind
define void @f_f___un_3C_unf_3E_un_3C_unf_3E_(float* noalias nocapture %RET, float* noalias %aFOO, <16 x i1> %__mask) #3 {
allocas:
  %aFOO_load_ptr2int_2void = bitcast float* %aFOO to i8*
  %mask_i16.i = bitcast <16 x i1> %__mask to i16
  %res.i = tail call <16 x float> @llvm.x86.avx512.mask.loadu.ps.512(i8* %aFOO_load_ptr2int_2void, <16 x float> zeroinitializer, i16 %mask_i16.i) #3
  %aFOO_load_offset_load_to_double = fpext <16 x float> %res.i to <16 x double>
  %mul__a_load = fmul <16 x double> %aFOO_load_offset_load_to_double, <double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00>
  %a_0.i.i = shufflevector <16 x double> %aFOO_load_offset_load_to_double, <16 x double> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %a_1.i.i = shufflevector <16 x double> %mul__a_load, <16 x double> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %res_a.i.i = tail call <8 x double> @llvm.x86.avx512.mask.max.pd.512(<8 x double> %a_0.i.i, <8 x double> %a_1.i.i, <8 x double> zeroinitializer, i8 -1, i32 4) #3
  %b_0.i.i = shufflevector <16 x double> %aFOO_load_offset_load_to_double, <16 x double> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %b_1.i.i = shufflevector <16 x double> %mul__a_load, <16 x double> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %res_b.i.i = tail call <8 x double> @llvm.x86.avx512.mask.max.pd.512(<8 x double> %b_0.i.i, <8 x double> %b_1.i.i, <8 x double> zeroinitializer, i8 -1, i32 4) #3
  %res.i.i = shufflevector <8 x double> %res_a.i.i, <8 x double> %res_b.i.i, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %calltmp_to_float = fptrunc <16 x double> %res.i.i to <16 x float>
  %ptr_i8.i = bitcast float* %RET to i8*
  call void @llvm.x86.avx512.mask.storeu.ps.512(i8* %ptr_i8.i, <16 x float> %calltmp_to_float, i16 %mask_i16.i) #3
  ret void
}

; Function Attrs: nounwind
define void @result___un_3C_unf_3E_(float* noalias nocapture %RET, <16 x i1> %__mask) #3 {
allocas:
  %mask_i16.i = bitcast <16 x i1> %__mask to i16
  %ptr_i8.i = bitcast float* %RET to i8*
  call void @llvm.x86.avx512.mask.storeu.ps.512(i8* %ptr_i8.i, <16 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00, float 1.000000e+01, float 1.200000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.400000e+01, float 2.600000e+01, float 2.800000e+01, float 3.000000e+01, float 3.200000e+01>, i16 %mask_i16.i) #3
  ret void
}

; Function Attrs: nounwind readnone
define i32 @width() #0 {
allocas:
  ret i32 16
}

; Function Attrs: nounwind
define void @f_f(float* noalias nocapture %RET, float* noalias nocapture readonly %aFOO) #3 {
allocas:
  %ptr_cast_for_load = bitcast float* %aFOO to <16 x float>*
  %ptr_masked_load.16 = load <16 x float>, <16 x float>* %ptr_cast_for_load, align 4, !filename !1, !first_line !2, !first_column !3, !last_line !2, !last_column !4
  %aFOO_load_offset_load_to_double = fpext <16 x float> %ptr_masked_load.16 to <16 x double>
  %mul__a_load = fmul <16 x double> %aFOO_load_offset_load_to_double, <double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00>
  %a_0.i.i = shufflevector <16 x double> %aFOO_load_offset_load_to_double, <16 x double> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %a_1.i.i = shufflevector <16 x double> %mul__a_load, <16 x double> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %res_a.i.i = tail call <8 x double> @llvm.x86.avx512.mask.max.pd.512(<8 x double> %a_0.i.i, <8 x double> %a_1.i.i, <8 x double> zeroinitializer, i8 -1, i32 4) #3
  %b_0.i.i = shufflevector <16 x double> %aFOO_load_offset_load_to_double, <16 x double> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %b_1.i.i = shufflevector <16 x double> %mul__a_load, <16 x double> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %res_b.i.i = tail call <8 x double> @llvm.x86.avx512.mask.max.pd.512(<8 x double> %b_0.i.i, <8 x double> %b_1.i.i, <8 x double> zeroinitializer, i8 -1, i32 4) #3
  %res.i.i = shufflevector <8 x double> %res_a.i.i, <8 x double> %res_b.i.i, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %calltmp_to_float = fptrunc <16 x double> %res.i.i to <16 x float>
  %ptrcast = bitcast float* %RET to <16 x float>*
  store <16 x float> %calltmp_to_float, <16 x float>* %ptrcast, align 4, !filename !1, !first_line !5, !first_column !2, !last_line !5, !last_column !6
  ret void
}

; Function Attrs: nounwind
define void @result(float* noalias nocapture %RET) #3 {
allocas:
  %ptrcast = bitcast float* %RET to <16 x float>*
  store <16 x float> <float 2.000000e+00, float 4.000000e+00, float 6.000000e+00, float 8.000000e+00, float 1.000000e+01, float 1.200000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.400000e+01, float 2.600000e+01, float 2.800000e+01, float 3.000000e+01, float 3.200000e+01>, <16 x float>* %ptrcast, align 4, !filename !1, !first_line !7, !first_column !2, !last_line !7, !last_column !6
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly argmemonly }
attributes #2 = { nounwind argmemonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (trunk 250939)"}
!1 = !{!"/export/users/shishpan/ispc/tests/double-max.ispc"}
!2 = !{i32 5}
!3 = !{i32 16}
!4 = !{i32 34}
!5 = !{i32 7}
!6 = !{i32 22}
!7 = !{i32 11}
