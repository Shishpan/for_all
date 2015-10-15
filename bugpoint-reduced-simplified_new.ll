; ModuleID = 'bugpoint-reduced-simplified.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: nounwind argmemonly
declare void @llvm.x86.avx512.mask.storeu.q.512(i8*, <8 x i64>, i8) #0

; Function Attrs: nounwind
define void @f_fu() #1 {
allocas:
  br i1 undef, label %safe_if_after_true55.i.108, label %safe_if_run_true56.i.109

if_done54.i.103:                                  ; preds = %safe_if_after_true55.i.108
  %hi_load_to_bool_logicalnot_logicalnot_to_int32_negate.i.347.i.176 = sext <16 x i1> undef to <16 x i64>
  %bitop.4.i.348.i.177 = or <16 x i64> %hi_load_to_bool_logicalnot_logicalnot_to_int32_negate.i.347.i.176, undef
  %calltmp_to_uint64.i.178 = and <16 x i64> %bitop.4.i.348.i.177, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %bitop.168.i.179 = shl <16 x i64> %calltmp_to_uint64.i.178, <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
  %less_result_load_a_load3.i.337.i.184 = icmp ult <16 x i64> undef, %bitop.168.i.179
  %less_result_load_a_load3_to_int64_negate.i.338.i.185 = sext <16 x i1> %less_result_load_a_load3.i.337.i.184 to <16 x i64>
  %bitop.i.339.i.186 = or <16 x i64> %less_result_load_a_load3_to_int64_negate.i.338.i.185, undef
  %v_hi.i.i.734 = shufflevector <16 x i64> %bitop.i.339.i.186, <16 x i64> undef, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  call void @llvm.x86.avx512.mask.storeu.q.512(i8* undef, <8 x i64> %v_hi.i.i.734, i8 undef) #1
  unreachable

safe_if_after_true55.i.108:                       ; preds = %allocas
  br i1 undef, label %if_done54.i.103, label %safe_if_run_false63.i.112

safe_if_run_true56.i.109:                         ; preds = %allocas
  unreachable

safe_if_run_false63.i.112:                        ; preds = %safe_if_after_true55.i.108
  unreachable
}

attributes #0 = { nounwind argmemonly }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (trunk 250389)"}
