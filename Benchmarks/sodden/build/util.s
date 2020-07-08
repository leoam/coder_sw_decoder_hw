	.file	"util.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	init_random
	.type	init_random, @function
init_random:
.LFB22:
	.file 1 "../olden/em3d/src/util.c"
	.loc 1 22 0
	.cfi_startproc
.LVL0:
	.loc 1 23 0
	movslq	%edi, %rdi
	jmp	srand48@PLT
.LVL1:
	.cfi_endproc
.LFE22:
	.size	init_random, .-init_random
	.p2align 4,,15
	.globl	gen_number
	.type	gen_number, @function
gen_number:
.LFB23:
	.loc 1 28 0
	.cfi_startproc
.LVL2:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 28 0
	movl	%edi, %ebx
	.loc 1 29 0
	call	lrand48@PLT
.LVL3:
	cltd
	idivl	%ebx
	.loc 1 30 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL4:
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	gen_number, .-gen_number
	.p2align 4,,15
	.globl	gen_signed_number
	.type	gen_signed_number, @function
gen_signed_number:
.LFB24:
	.loc 1 34 0
	.cfi_startproc
.LVL5:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 34 0
	movl	%edi, %ebx
	.loc 1 37 0
	call	lrand48@PLT
.LVL6:
	leal	(%rbx,%rbx), %ecx
	cqto
	movslq	%ecx, %rcx
	idivq	%rcx
.LVL7:
	.loc 1 38 0
	movl	%edx, %eax
	subl	%ebx, %eax
.LVL8:
	.loc 1 39 0
	cmpl	$-2147483648, %eax
	adcl	$0, %eax
.LVL9:
	.loc 1 41 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL10:
	ret
	.cfi_endproc
.LFE24:
	.size	gen_signed_number, .-gen_signed_number
	.p2align 4,,15
	.globl	gen_uniform_double
	.type	gen_uniform_double, @function
gen_uniform_double:
.LFB25:
	.loc 1 45 0
	.cfi_startproc
	.loc 1 46 0
	xorl	%eax, %eax
	jmp	drand48@PLT
.LVL11:
	.cfi_endproc
.LFE25:
	.size	gen_uniform_double, .-gen_uniform_double
	.p2align 4,,15
	.globl	check_percent
	.type	check_percent, @function
check_percent:
.LFB26:
	.loc 1 50 0
	.cfi_startproc
.LVL12:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 52 0
	xorl	%eax, %eax
	.loc 1 50 0
	movl	%edi, %ebx
	.loc 1 52 0
	call	drand48@PLT
.LVL13:
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	cvtsi2sd	%ebx, %xmm1
	divsd	.LC0(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
.LVL14:
	.loc 1 53 0
	addl	$1, percentcheck(%rip)
	.loc 1 54 0
	ucomisd	%xmm0, %xmm1
	jbe	.L9
	.loc 1 54 0 is_stmt 0 discriminator 1
	addl	$1, numlocal(%rip)
.L9:
	.loc 1 56 0 is_stmt 1
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL15:
	ret
	.cfi_endproc
.LFE26:
	.size	check_percent, .-check_percent
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"percentcheck=%d,numlocal=%d\n"
	.text
	.p2align 4,,15
	.globl	printstats
	.type	printstats, @function
printstats:
.LFB27:
	.loc 1 59 0
	.cfi_startproc
.LVL16:
.LBB4:
.LBB5:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	numlocal(%rip), %ecx
	movl	percentcheck(%rip), %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk@PLT
.LVL17:
.LBE5:
.LBE4:
	.cfi_endproc
.LFE27:
	.size	printstats, .-printstats
	.local	numlocal
	.comm	numlocal,4,4
	.local	percentcheck
	.comm	percentcheck,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "../olden/em3d/src/em3d.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x541
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF75
	.byte	0xc
	.long	.LASF76
	.long	.LASF77
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x8c
	.long	0x46
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x8d
	.long	0x46
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0x95
	.uleb128 0x8
	.long	.LASF41
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x221
	.uleb128 0x9
	.long	.LASF12
	.byte	0x5
	.byte	0xf6
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x108
	.long	0x259
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x10a
	.long	0x25f
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x10c
	.long	0x3f
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x110
	.long	0x3f
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x112
	.long	0x77
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x116
	.long	0x5b
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x69
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x265
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x11c
	.long	0x275
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x125
	.long	0x82
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x12d
	.long	0x8d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x12e
	.long	0x8d
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x3f
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x27b
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF78
	.byte	0x5
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x259
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.byte	0xa1
	.long	0x259
	.byte	0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x25f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0xa6
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0x6
	.byte	0x8
	.long	0xa1
	.uleb128 0xc
	.long	0x95
	.long	0x275
	.uleb128 0xd
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x221
	.uleb128 0xc
	.long	0x95
	.long	0x28b
	.uleb128 0xd
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF79
	.uleb128 0xf
	.long	.LASF46
	.byte	0x5
	.value	0x13f
	.long	0x28b
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x140
	.long	0x28b
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x141
	.long	0x28b
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x10
	.long	0x2b4
	.uleb128 0x11
	.long	.LASF49
	.byte	0x6
	.byte	0x87
	.long	0x25f
	.uleb128 0x11
	.long	.LASF50
	.byte	0x6
	.byte	0x88
	.long	0x25f
	.uleb128 0x11
	.long	.LASF51
	.byte	0x6
	.byte	0x89
	.long	0x25f
	.uleb128 0x11
	.long	.LASF52
	.byte	0x7
	.byte	0x17
	.long	0x8f
	.uleb128 0x11
	.long	.LASF53
	.byte	0x7
	.byte	0x18
	.long	0x8f
	.uleb128 0x11
	.long	.LASF54
	.byte	0x7
	.byte	0x1a
	.long	0x3f
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.byte	0x1b
	.long	0x3f
	.uleb128 0x11
	.long	.LASF56
	.byte	0x7
	.byte	0x1c
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF57
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x12
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	percentcheck
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x12
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	numlocal
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x3a
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ae
	.uleb128 0x14
	.long	0x4fb
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0x1
	.byte	0x3c
	.uleb128 0x15
	.long	0x50b
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x16
	.quad	.LVL17
	.long	0x518
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f9
	.uleb128 0x19
	.long	.LASF64
	.byte	0x1
	.byte	0x31
	.long	0x3f
	.long	.LLST4
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.byte	0x33
	.long	0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.quad	.LVL13
	.long	0x523
	.byte	0
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x2c
	.long	0x317
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x428
	.uleb128 0x1b
	.quad	.LVL11
	.long	0x523
	.byte	0
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x21
	.long	0x3f
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x475
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.byte	0x21
	.long	0x3f
	.long	.LLST2
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x1
	.byte	0x23
	.long	0x3f
	.long	.LLST3
	.uleb128 0x1a
	.quad	.LVL6
	.long	0x52e
	.byte	0
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.byte	0x1b
	.long	0x3f
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b3
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.byte	0x1b
	.long	0x3f
	.long	.LLST1
	.uleb128 0x1a
	.quad	.LVL3
	.long	0x52e
	.byte	0
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0x15
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fb
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0x15
	.long	0x3f
	.long	.LLST0
	.uleb128 0x16
	.quad	.LVL1
	.long	0x539
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF80
	.byte	0x2
	.byte	0x66
	.long	0x3f
	.byte	0x3
	.long	0x518
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x2
	.byte	0x66
	.long	0x2ba
	.uleb128 0x1f
	.byte	0
	.uleb128 0x20
	.long	.LASF71
	.long	.LASF71
	.byte	0x2
	.byte	0x57
	.uleb128 0x20
	.long	.LASF72
	.long	.LASF72
	.byte	0x1
	.byte	0xf
	.uleb128 0x20
	.long	.LASF73
	.long	.LASF73
	.byte	0x7
	.byte	0x10
	.uleb128 0x20
	.long	.LASF74
	.long	.LASF74
	.byte	0x7
	.byte	0xf
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL15-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL6-1-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL10-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL4-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-1-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF56:
	.string	"local_p"
.LASF28:
	.string	"_old_offset"
.LASF64:
	.string	"percent"
.LASF57:
	.string	"double"
.LASF23:
	.string	"_IO_save_end"
.LASF66:
	.string	"temp"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF63:
	.string	"gen_signed_number"
.LASF78:
	.string	"_IO_lock_t"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF67:
	.string	"gen_number"
.LASF19:
	.string	"_IO_buf_base"
.LASF60:
	.string	"retval"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF59:
	.string	"numlocal"
.LASF54:
	.string	"n_nodes"
.LASF69:
	.string	"init_random"
.LASF55:
	.string	"d_nodes"
.LASF51:
	.string	"stderr"
.LASF74:
	.string	"srand48"
.LASF2:
	.string	"long long int"
.LASF32:
	.string	"_lock"
.LASF68:
	.string	"printstats"
.LASF1:
	.string	"long int"
.LASF80:
	.string	"printf"
.LASF29:
	.string	"_cur_column"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF79:
	.string	"_IO_FILE_plus"
.LASF45:
	.string	"_pos"
.LASF44:
	.string	"_sbuf"
.LASF71:
	.string	"__printf_chk"
.LASF41:
	.string	"_IO_FILE"
.LASF3:
	.string	"unsigned char"
.LASF75:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF6:
	.string	"signed char"
.LASF46:
	.string	"_IO_2_1_stdin_"
.LASF72:
	.string	"drand48"
.LASF5:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF52:
	.string	"min_ptr"
.LASF13:
	.string	"_IO_read_ptr"
.LASF4:
	.string	"short unsigned int"
.LASF58:
	.string	"percentcheck"
.LASF11:
	.string	"char"
.LASF53:
	.string	"max_ptr"
.LASF70:
	.string	"seed"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF81:
	.string	"__fmt"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF9:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF49:
	.string	"stdin"
.LASF65:
	.string	"range"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF73:
	.string	"lrand48"
.LASF30:
	.string	"_vtable_offset"
.LASF62:
	.string	"gen_uniform_double"
.LASF21:
	.string	"_IO_save_base"
.LASF26:
	.string	"_fileno"
.LASF76:
	.string	"../olden/em3d/src/util.c"
.LASF61:
	.string	"check_percent"
.LASF50:
	.string	"stdout"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF77:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
