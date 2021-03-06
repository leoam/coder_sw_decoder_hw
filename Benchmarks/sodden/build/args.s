	.file	"args.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	mylog
	.type	mylog, @function
mylog:
.LFB22:
	.file 1 "../olden/voronoi/src/args.c"
	.loc 1 11 0
	.cfi_startproc
.LVL0:
	.loc 1 14 0
	cmpl	$1, %edi
	jle	.L4
	.loc 1 12 0
	movl	$1, %edx
	xorl	%eax, %eax
.LVL1:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 14 0 discriminator 2
	addl	%edx, %edx
.LVL2:
	addl	$1, %eax
.LVL3:
	cmpl	%edx, %edi
	jg	.L3
	rep ret
.LVL4:
	.p2align 4,,10
	.p2align 3
.L4:
	.loc 1 12 0
	xorl	%eax, %eax
	.loc 1 16 0
	ret
	.cfi_endproc
.LFE22:
	.size	mylog, .-mylog
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Voronoi with %d size on %d procs of dim %d\n"
	.text
	.p2align 4,,15
	.globl	dealwithargs
	.type	dealwithargs, @function
dealwithargs:
.LFB23:
	.loc 1 18 0
	.cfi_startproc
.LVL5:
	.loc 1 21 0
	cmpl	$3, %edi
	.loc 1 18 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 18 0
	movq	%rsi, %rbx
	.loc 1 21 0
	jg	.L18
	.loc 1 24 0
	movl	$1, flag(%rip)
	.loc 1 26 0
	je	.L9
	.loc 1 31 0
	cmpl	$2, %edi
	.loc 1 29 0
	movl	$1, NumNodes(%rip)
	.loc 1 31 0
	je	.L11
	.loc 1 34 0
	movl	$32, %ebx
	.loc 1 36 0
	movl	$1, %ecx
.LBB20:
.LBB21:
	.loc 1 12 0
	xorl	%r8d, %r8d
.LVL6:
.L12:
.LBE21:
.LBE20:
.LBB24:
.LBB25:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
.LBE25:
.LBE24:
	.loc 1 36 0
	movl	%r8d, NDim(%rip)
.LVL7:
.LBB27:
.LBB26:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL8:
.LBE26:
.LBE27:
	.loc 1 40 0
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL9:
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
.LBB28:
.LBB29:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 363 0
	movq	24(%rsi), %rdi
.LVL10:
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
.LVL11:
	movl	%eax, flag(%rip)
.L9:
.LVL12:
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	movq	16(%rbx), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
.LVL13:
	movl	%eax, NumNodes(%rip)
.L11:
.LVL14:
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtol@PLT
.LVL15:
.LBE33:
.LBE32:
	.loc 1 36 0
	movl	NumNodes(%rip), %ecx
.LBB35:
.LBB22:
	.loc 1 12 0
	xorl	%r8d, %r8d
.LBE22:
.LBE35:
.LBB36:
.LBB34:
	.loc 3 363 0
	movl	%eax, %ebx
.LVL16:
.LBE34:
.LBE36:
.LBB37:
.LBB23:
	.loc 1 14 0
	cmpl	$1, %ecx
	jle	.L12
	.loc 1 12 0
	movl	$1, %edx
.LVL17:
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 14 0
	addl	%edx, %edx
.LVL18:
	addl	$1, %r8d
.LVL19:
	cmpl	%edx, %ecx
	jg	.L13
	jmp	.L12
.LBE23:
.LBE37:
	.cfi_endproc
.LFE23:
	.size	dealwithargs, .-dealwithargs
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x52a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF63
	.byte	0xc
	.long	.LASF64
	.long	.LASF65
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
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
	.byte	0x5
	.byte	0x8c
	.long	0x46
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
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
	.byte	0x6
	.byte	0xf5
	.long	0x221
	.uleb128 0x9
	.long	.LASF12
	.byte	0x6
	.byte	0xf6
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x6
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x6
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.value	0x108
	.long	0x259
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x10a
	.long	0x25f
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x10c
	.long	0x3f
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x110
	.long	0x3f
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x112
	.long	0x77
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x116
	.long	0x5b
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x117
	.long	0x69
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x118
	.long	0x265
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x11c
	.long	0x275
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x125
	.long	0x82
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x12d
	.long	0x8d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x12e
	.long	0x8d
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x12f
	.long	0x8d
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x130
	.long	0x8d
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x133
	.long	0x3f
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.value	0x135
	.long	0x27b
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF66
	.byte	0x6
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF42
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x259
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.byte	0xa1
	.long	0x259
	.byte	0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6
	.byte	0xa2
	.long	0x25f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6
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
	.long	.LASF67
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.value	0x13f
	.long	0x28b
	.uleb128 0xf
	.long	.LASF47
	.byte	0x6
	.value	0x140
	.long	0x28b
	.uleb128 0xf
	.long	.LASF48
	.byte	0x6
	.value	0x141
	.long	0x28b
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x10
	.long	0x2b4
	.uleb128 0x11
	.long	.LASF49
	.byte	0x7
	.byte	0x87
	.long	0x25f
	.uleb128 0x11
	.long	.LASF50
	.byte	0x7
	.byte	0x88
	.long	0x25f
	.uleb128 0x11
	.long	.LASF51
	.byte	0x7
	.byte	0x89
	.long	0x25f
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.byte	0x6
	.long	0x3f
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.byte	0x6
	.long	0x3f
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.byte	0x8
	.long	0x3f
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0x12
	.long	0x3f
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x473
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x12
	.long	0x3f
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x12
	.long	0x473
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF69
	.byte	0x1
	.byte	0x13
	.long	0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x15
	.long	0x479
	.quad	.LBB20
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.long	0x37c
	.uleb128 0x16
	.long	0x489
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.long	.Ldebug_ranges0+0
	.uleb128 0x18
	.long	0x504
	.uleb128 0x18
	.long	0x50d
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x4a7
	.quad	.LBB24
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x25
	.long	0x3c3
	.uleb128 0x19
	.long	0x4b7
	.long	.LLST4
	.uleb128 0x1a
	.quad	.LVL8
	.long	0x517
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x4c4
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0x16
	.long	0x400
	.uleb128 0x19
	.long	0x4d5
	.long	.LLST5
	.uleb128 0x1a
	.quad	.LVL11
	.long	0x522
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x4c4
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0x1b
	.long	0x43d
	.uleb128 0x19
	.long	0x4d5
	.long	.LLST6
	.uleb128 0x1a
	.quad	.LVL13
	.long	0x522
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x4c4
	.quad	.LBB32
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x20
	.uleb128 0x19
	.long	0x4d5
	.long	.LLST7
	.uleb128 0x1a
	.quad	.LVL15
	.long	0x522
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x1
	.byte	0xb
	.long	0x3f
	.byte	0x1
	.long	0x4a7
	.uleb128 0x1f
	.string	"num"
	.byte	0x1
	.byte	0xb
	.long	0x3f
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.byte	0xc
	.long	0x3f
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0xc
	.long	0x3f
	.byte	0
	.uleb128 0x21
	.long	.LASF70
	.byte	0x2
	.byte	0x66
	.long	0x3f
	.byte	0x3
	.long	0x4c4
	.uleb128 0x22
	.long	.LASF57
	.byte	0x2
	.byte	0x66
	.long	0x2ba
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.long	.LASF59
	.byte	0x3
	.value	0x169
	.long	0x3f
	.byte	0x3
	.long	0x4e2
	.uleb128 0x25
	.long	.LASF60
	.byte	0x3
	.value	0x169
	.long	0x2b4
	.byte	0
	.uleb128 0x26
	.long	0x479
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x517
	.uleb128 0x16
	.long	0x489
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.long	0x494
	.long	.LLST0
	.uleb128 0x27
	.long	0x49d
	.long	.LLST1
	.byte	0
	.uleb128 0x28
	.long	.LASF61
	.long	.LASF61
	.byte	0x2
	.byte	0x57
	.uleb128 0x28
	.long	.LASF62
	.long	.LASF62
	.byte	0x3
	.byte	0xb0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
.LLST2:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL10-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL16-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 24
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 16
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL4-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x2
	.byte	0x31
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_old_offset"
.LASF61:
	.string	"__printf_chk"
.LASF23:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF66:
	.string	"_IO_lock_t"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF58:
	.string	"mylog"
.LASF19:
	.string	"_IO_buf_base"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF51:
	.string	"stderr"
.LASF2:
	.string	"long long int"
.LASF32:
	.string	"_lock"
.LASF1:
	.string	"long int"
.LASF70:
	.string	"printf"
.LASF62:
	.string	"strtol"
.LASF29:
	.string	"_cur_column"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF67:
	.string	"_IO_FILE_plus"
.LASF45:
	.string	"_pos"
.LASF59:
	.string	"atoi"
.LASF56:
	.string	"argv"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF53:
	.string	"NDim"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF55:
	.string	"argc"
.LASF6:
	.string	"signed char"
.LASF46:
	.string	"_IO_2_1_stdin_"
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
.LASF13:
	.string	"_IO_read_ptr"
.LASF52:
	.string	"NumNodes"
.LASF4:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF64:
	.string	"../olden/voronoi/src/args.c"
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
.LASF57:
	.string	"__fmt"
.LASF68:
	.string	"dealwithargs"
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
.LASF69:
	.string	"size"
.LASF22:
	.string	"_IO_backup_base"
.LASF49:
	.string	"stdin"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF30:
	.string	"_vtable_offset"
.LASF21:
	.string	"_IO_save_base"
.LASF54:
	.string	"flag"
.LASF26:
	.string	"_fileno"
.LASF60:
	.string	"__nptr"
.LASF50:
	.string	"stdout"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF65:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
