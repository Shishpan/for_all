	.text
	.file	"double-max.ispc_knl.ll"
	.globl	f_f
	.align	16, 0x90
	.type	f_f,@function
f_f:                                    # @f_f
# BB#0:                                 # %allocas
	vmovups	(%rsi), %zmm0
	vcvtps2pd	%ymm0, %zmm1
	vextractf64x4	$2, %zmm0, %ymm0
	vcvtps2pd	%ymm0, %zmm0
	vaddpd	%zmm0, %zmm0, %zmm2
	vaddpd	%zmm1, %zmm1, %zmm3
	vmaxpd	%zmm3, %zmm1, %zmm1
	vmaxpd	%zmm2, %zmm0, %zmm0
	vcvtpd2ps	%zmm1, %ymm1
	vcvtpd2ps	%zmm0, %ymm0
	vinsertf64x4	$1, %ymm0, %zmm1, %zmm0
	vmovups	%zmm0, (%rdi)
	retq
.Lfunc_end0:
	.size	f_f, .Lfunc_end0-f_f


	.ident	"clang version 3.8.0 (trunk 250939)"
	.section	".note.GNU-stack","",@progbits
