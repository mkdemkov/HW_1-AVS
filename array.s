	.file	"array.c"
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	a
	.align 32
	.type	a, @object
	.size	a, 39996
a:
	.zero	39996
	.globl	b
	.align 32
	.type	b, @object
	.size	b, 39996
b:
	.zero	39996
	.globl	i
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.globl	sum
	.align 8
	.type	sum, @object
	.size	sum, 8
sum:
	.zero	8
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d "
	.align 8
.LC2:
	.string	"\320\240\320\260\320\267\320\274\320\265\321\200 \320\262\321\205\320\276\320\264\320\275\320\276\320\263\320\276 \320\274\320\260\321\201\321\201\320\270\320\262\320\260 \320\264\320\276\320\273\320\266\320\265\320\275 \320\261\321\213\321\202\321\214 \320\275\320\265 \320\274\320\265\320\275\320\265\320\265 3 \321\215\320\273\320\265\320\274\320\265\320\275\321\202\320\276\320\262 \320\270 \320\275\320\265 \320\261\320\276\320\273\320\265\320\265 10000!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	n(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	n(%rip), %eax
	cmpl	$2, %eax
	jle	.L2
	movl	n(%rip), %eax
	cmpl	$9999, %eax
	jg	.L2
	movl	$0, -12(%rbp)
	jmp	.L3
.L5:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L4
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	sum(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, sum(%rip)
.L4:
	addl	$1, -12(%rbp)
.L3:
	movl	n(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L5
	movl	$0, j(%rip)
	movl	$0, -8(%rbp)
	jmp	.L6
.L8:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	sum(%rip), %rax
	cmpq	%rax, %rdx
	jge	.L7
	movl	j(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, j(%rip)
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	a(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	b(%rip), %rax
	movl	%edx, (%rcx,%rax)
.L7:
	addl	$1, -8(%rbp)
.L6:
	movl	n(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L8
	movl	$0, -4(%rbp)
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L9:
	movl	j(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L10
	jmp	.L11
.L2:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L11:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
