	.file	"par-alloc.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	TreeAlloc
	.type	TreeAlloc, @function
TreeAlloc:
.LFB12:
	.file 1 "../olden/treeadd/src/par-alloc.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xorl	%r12d, %r12d
	.loc 1 15 0
	testl	%edi, %edi
	.loc 1 14 0
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 15 0
	je	.L1
	movl	%edx, %r14d
	movl	%esi, %r13d
	movl	%edi, %ebx
.LBB2:
	.loc 1 20 0
	movl	%r14d, %ebp
	.loc 1 19 0
	movl	$24, %edi
.LVL1:
	.loc 1 20 0
	subl	$1, %ebx
.LVL2:
	shrl	$31, %ebp
	addl	%r14d, %ebp
	sarl	%ebp
	.loc 1 19 0
	call	malloc@PLT
.LVL3:
	.loc 1 20 0
	leal	0(%rbp,%r13), %esi
	movl	%ebp, %edx
	movl	%ebx, %edi
	.loc 1 19 0
	movq	%rax, %r12
.LVL4:
	.loc 1 20 0
	call	TreeAlloc
.LVL5:
	.loc 1 21 0
	movl	%ebp, %edx
	.loc 1 20 0
	movq	%rax, %r14
.LVL6:
	.loc 1 21 0
	movl	%r13d, %esi
	movl	%ebx, %edi
	call	TreeAlloc
.LVL7:
	.loc 1 22 0
	movl	$1, (%r12)
	.loc 1 23 0
	movq	%r14, 8(%r12)
	.loc 1 24 0
	movq	%rax, 16(%r12)
.LVL8:
.L1:
.LBE2:
	.loc 1 27 0
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	TreeAlloc, .-TreeAlloc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../olden/treeadd/src/tree.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x404
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF57
	.byte	0xc
	.long	.LASF58
	.long	.LASF59
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF40
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x215
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xfb
	.long	0x88
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x88
	.byte	0x10
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x88
	.byte	0x18
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x88
	.byte	0x20
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x88
	.byte	0x28
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x88
	.byte	0x30
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x88
	.byte	0x38
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x88
	.byte	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x104
	.long	0x88
	.byte	0x48
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x88
	.byte	0x50
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x88
	.byte	0x58
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x108
	.long	0x24d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x10a
	.long	0x253
	.byte	0x68
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x259
	.byte	0x83
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x11c
	.long	0x269
	.byte	0x88
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x12d
	.long	0x86
	.byte	0x98
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12e
	.long	0x86
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12f
	.long	0x86
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x130
	.long	0x86
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x26f
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF60
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF41
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x24d
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.byte	0xa1
	.long	0x24d
	.byte	0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x253
	.byte	0x8
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21c
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0xb
	.long	0x8e
	.long	0x269
	.uleb128 0xc
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x215
	.uleb128 0xb
	.long	0x8e
	.long	0x27f
	.uleb128 0xc
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF61
	.uleb128 0xe
	.long	.LASF45
	.byte	0x4
	.value	0x13f
	.long	0x27f
	.uleb128 0xe
	.long	.LASF46
	.byte	0x4
	.value	0x140
	.long	0x27f
	.uleb128 0xe
	.long	.LASF47
	.byte	0x4
	.value	0x141
	.long	0x27f
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.byte	0x87
	.long	0x253
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.byte	0x88
	.long	0x253
	.uleb128 0xf
	.long	.LASF50
	.byte	0x5
	.byte	0x89
	.long	0x253
	.uleb128 0x7
	.long	.LASF51
	.byte	0x18
	.byte	0x6
	.byte	0xc
	.long	0x2fa
	.uleb128 0x10
	.string	"val"
	.byte	0x6
	.byte	0xd
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0xe
	.long	0x2fa
	.byte	0x8
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0xe
	.long	0x2fa
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c9
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0xf
	.long	0x2c9
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0xe
	.long	0x3f6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f6
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0xe
	.long	0x62
	.long	.LLST0
	.uleb128 0x13
	.string	"lo"
	.byte	0x1
	.byte	0xe
	.long	0x62
	.long	.LLST1
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0xe
	.long	0x62
	.long	.LLST2
	.uleb128 0x14
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x15
	.string	"new"
	.byte	0x1
	.byte	0x12
	.long	0x2fa
	.long	.LLST3
	.uleb128 0x16
	.long	.LASF53
	.byte	0x1
	.byte	0x12
	.long	0x2fa
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.byte	0x12
	.long	0x2fa
	.long	.LLST5
	.uleb128 0x17
	.quad	.LVL3
	.long	0x3fc
	.long	0x3ad
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x17
	.quad	.LVL5
	.long	0x30b
	.long	0x3d4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.quad	.LVL7
	.long	0x30b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x300
	.uleb128 0x1a
	.long	.LASF63
	.long	.LASF63
	.byte	0x1
	.byte	0xc
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL2-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL8-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL6-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL5-1-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL7-1-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5e
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
.LASF19:
	.string	"_IO_buf_end"
.LASF27:
	.string	"_old_offset"
.LASF53:
	.string	"right"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF63:
	.string	"malloc"
.LASF60:
	.string	"_IO_lock_t"
.LASF32:
	.string	"_offset"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF62:
	.string	"TreeAlloc"
.LASF54:
	.string	"tree_t"
.LASF50:
	.string	"stderr"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"_cur_column"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF51:
	.string	"tree"
.LASF61:
	.string	"_IO_FILE_plus"
.LASF44:
	.string	"_pos"
.LASF58:
	.string	"../olden/treeadd/src/par-alloc.c"
.LASF43:
	.string	"_sbuf"
.LASF40:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF57:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF4:
	.string	"signed char"
.LASF56:
	.string	"proc"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF12:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF52:
	.string	"left"
.LASF42:
	.string	"_next"
.LASF33:
	.string	"__pad1"
.LASF34:
	.string	"__pad2"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF37:
	.string	"__pad5"
.LASF55:
	.string	"level"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF21:
	.string	"_IO_backup_base"
.LASF48:
	.string	"stdin"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF25:
	.string	"_fileno"
.LASF49:
	.string	"stdout"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF59:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
