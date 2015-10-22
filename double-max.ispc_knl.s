	.text
	.file	"./tests/double-max.ispc_knl.ll"
	.globl	width___
	.align	16, 0x90
	.type	width___,@function
width___:                               # @width___
# BB#0:                                 # %allocas
	movl	$16, %eax
	retq
.Lfunc_end0:
	.size	width___, .Lfunc_end0-width___

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	2147483648              # 0x80000000
	.text
	.globl	f_f___un_3C_unf_3E_un_3C_unf_3E_
	.align	16, 0x90
	.type	f_f___un_3C_unf_3E_un_3C_unf_3E_,@function
f_f___un_3C_unf_3E_un_3C_unf_3E_:       # @f_f___un_3C_unf_3E_un_3C_unf_3E_
# BB#0:                                 # %allocas
	vpmovsxbd	%xmm0, %zmm0
	vpandd	.LCPI1_0(%rip){1to16}, %zmm0, %zmm0
	vptestmd	%zmm0, %zmm0, %k0 
	kmovw	%k0, %eax
	kmovw	%eax, %k1
	vmovups	(%rsi), %zmm0 {%k1} {z}
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
	vmovups	%zmm0, (%rdi) {%k1}
	retq
.Lfunc_end1:
	.size	f_f___un_3C_unf_3E_un_3C_unf_3E_, .Lfunc_end1-f_f___un_3C_unf_3E_un_3C_unf_3E_

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	2147483648              # 0x80000000
	.section	.rodata,"a",@progbits
	.align	64
.LCPI2_1:
	.long	1073741824              # float 2.000000e+00
	.long	1082130432              # float 4.000000e+00
	.long	1086324736              # float 6.000000e+00
	.long	1090519040              # float 8.000000e+00
	.long	1092616192              # float 1.000000e+01
	.long	1094713344              # float 1.200000e+01
	.long	1096810496              # float 1.400000e+01
	.long	1098907648              # float 1.600000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1101004800              # float 2.000000e+01
	.long	1102053376              # float 2.200000e+01
	.long	1103101952              # float 2.400000e+01
	.long	1104150528              # float 2.600000e+01
	.long	1105199104              # float 2.800000e+01
	.long	1106247680              # float 3.000000e+01
	.long	1107296256              # float 3.200000e+01
	.text
	.globl	result___un_3C_unf_3E_
	.align	16, 0x90
	.type	result___un_3C_unf_3E_,@function
result___un_3C_unf_3E_:                 # @result___un_3C_unf_3E_
# BB#0:                                 # %allocas
	vpmovsxbd	%xmm0, %zmm0
	vpandd	.LCPI2_0(%rip){1to16}, %zmm0, %zmm0
	vptestmd	%zmm0, %zmm0, %k0 
	kmovw	%k0, %eax
	kmovw	%eax, %k1
	vmovaps	.LCPI2_1(%rip), %zmm0   # zmm0 = [2.000000e+00,4.000000e+00,6.000000e+00,8.000000e+00,1.000000e+01,1.200000e+01,1.400000e+01,1.600000e+01,1.800000e+01,2.000000e+01,2.200000e+01,2.400000e+01,2.600000e+01,2.800000e+01,3.000000e+01,3.200000e+01]
	vmovups	%zmm0, (%rdi) {%k1}
	retq
.Lfunc_end2:
	.size	result___un_3C_unf_3E_, .Lfunc_end2-result___un_3C_unf_3E_

	.globl	width
	.align	16, 0x90
	.type	width,@function
width:                                  # @width
# BB#0:                                 # %allocas
	movl	$16, %eax
	retq
.Lfunc_end3:
	.size	width, .Lfunc_end3-width

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
.Lfunc_end4:
	.size	f_f, .Lfunc_end4-f_f

	.section	.rodata,"a",@progbits
	.align	64
.LCPI5_0:
	.long	1073741824              # float 2.000000e+00
	.long	1082130432              # float 4.000000e+00
	.long	1086324736              # float 6.000000e+00
	.long	1090519040              # float 8.000000e+00
	.long	1092616192              # float 1.000000e+01
	.long	1094713344              # float 1.200000e+01
	.long	1096810496              # float 1.400000e+01
	.long	1098907648              # float 1.600000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1101004800              # float 2.000000e+01
	.long	1102053376              # float 2.200000e+01
	.long	1103101952              # float 2.400000e+01
	.long	1104150528              # float 2.600000e+01
	.long	1105199104              # float 2.800000e+01
	.long	1106247680              # float 3.000000e+01
	.long	1107296256              # float 3.200000e+01
	.text
	.globl	result
	.align	16, 0x90
	.type	result,@function
result:                                 # @result
# BB#0:                                 # %allocas
	vmovaps	.LCPI5_0(%rip), %zmm0   # zmm0 = [2.000000e+00,4.000000e+00,6.000000e+00,8.000000e+00,1.000000e+01,1.200000e+01,1.400000e+01,1.600000e+01,1.800000e+01,2.000000e+01,2.200000e+01,2.400000e+01,2.600000e+01,2.800000e+01,3.000000e+01,3.200000e+01]
	vmovups	%zmm0, (%rdi)
	retq
.Lfunc_end5:
	.size	result, .Lfunc_end5-result


	.ident	"clang version 3.8.0 (trunk 250939)"
	.section	".note.GNU-stack","",@progbits
