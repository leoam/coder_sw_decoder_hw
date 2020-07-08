	.file	"CMakeCXXCompilerId.cpp"
	.text
.Ltext0:
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "CMakeCXXCompilerId.cpp"
	.loc 1 554 0
	.cfi_startproc
.LVL0:
	.loc 1 556 0
	movq	info_compiler(%rip), %rax
	movslq	%edi, %rdi
.LVL1:
	movsbl	(%rax,%rdi), %edx
.LVL2:
	.loc 1 557 0
	movq	info_platform(%rip), %rax
	movsbl	(%rax,%rdi), %eax
	addl	%eax, %edx
.LVL3:
	.loc 1 559 0
	leaq	_ZL12info_version(%rip), %rax
	movsbl	(%rax,%rdi), %eax
	addl	%eax, %edx
.LVL4:
	.loc 1 573 0
	movq	info_language_dialect_default(%rip), %rax
	movsbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	.loc 1 576 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	info_language_dialect_default
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"INFO:dialect_default[14]"
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	info_language_dialect_default, @object
	.size	info_language_dialect_default, 8
info_language_dialect_default:
	.quad	.LC0
	.globl	info_arch
	.section	.rodata.str1.1
.LC1:
	.string	"INFO:arch[]"
	.section	.data.rel.local
	.align 8
	.type	info_arch, @object
	.size	info_arch, 8
info_arch:
	.quad	.LC1
	.globl	info_platform
	.section	.rodata.str1.1
.LC2:
	.string	"INFO:platform[Linux]"
	.section	.data.rel.local
	.align 8
	.type	info_platform, @object
	.size	info_platform, 8
info_platform:
	.quad	.LC2
	.section	.rodata
	.align 32
	.type	_ZL12info_version, @object
	.size	_ZL12info_version, 50
_ZL12info_version:
	.byte	73
	.byte	78
	.byte	70
	.byte	79
	.byte	58
	.byte	99
	.byte	111
	.byte	109
	.byte	112
	.byte	105
	.byte	108
	.byte	101
	.byte	114
	.byte	95
	.byte	118
	.byte	101
	.byte	114
	.byte	115
	.byte	105
	.byte	111
	.byte	110
	.byte	91
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	55
	.byte	46
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	53
	.byte	46
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	93
	.byte	0
	.globl	info_compiler
	.section	.rodata.str1.1
.LC3:
	.string	"INFO:compiler[GNU]"
	.section	.data.rel.local
	.align 8
	.type	info_compiler, @object
	.size	info_compiler, 8
info_compiler:
	.quad	.LC3
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x124
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF10
	.byte	0x4
	.long	.LASF11
	.long	.LASF12
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF2
	.byte	0x1
	.value	0x118
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	info_compiler
	.uleb128 0x3
	.byte	0x8
	.long	0x4c
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x5
	.long	0x45
	.uleb128 0x6
	.long	0x4c
	.long	0x61
	.uleb128 0x7
	.long	0x66
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.long	0x51
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x8
	.long	.LASF8
	.byte	0x1
	.value	0x1e0
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12info_version
	.uleb128 0x2
	.long	.LASF3
	.byte	0x1
	.value	0x20f
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	info_platform
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.value	0x210
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	info_arch
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.value	0x21b
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	info_language_dialect_default
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.value	0x229
	.long	0x114
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x114
	.uleb128 0xa
	.long	.LASF6
	.byte	0x1
	.value	0x229
	.long	0x114
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.long	.LASF7
	.byte	0x1
	.value	0x229
	.long	0x11b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.long	.LASF9
	.byte	0x1
	.value	0x22b
	.long	0x114
	.long	.LLST0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.long	0x121
	.uleb128 0x3
	.byte	0x8
	.long	0x45
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1
	.quad	.LVL2
	.value	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x51
	.quad	.LVL4
	.quad	.LFE0
	.value	0x19
	.byte	0x3
	.quad	info_language_dialect_default
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x22
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
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB0
	.quad	.LFE0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build/CMakeFiles/3.10.2/CompilerIdCXX"
.LASF4:
	.string	"info_arch"
.LASF1:
	.string	"long unsigned int"
.LASF13:
	.string	"main"
.LASF3:
	.string	"info_platform"
.LASF8:
	.string	"info_version"
.LASF6:
	.string	"argc"
.LASF11:
	.string	"CMakeCXXCompilerId.cpp"
.LASF2:
	.string	"info_compiler"
.LASF5:
	.string	"info_language_dialect_default"
.LASF9:
	.string	"require"
.LASF10:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF0:
	.string	"char"
.LASF7:
	.string	"argv"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
