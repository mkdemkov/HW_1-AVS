	.file	"array.c"
	.intel_syntax noprefix
	.text
	.globl	n
	.bss
	.align 4
	.type	n, @object
	.size	n, 4
n: # Глобальная переменная, отвечающая за размер массива А
	.zero	4
	.globl	a
	.align 32
	.type	a, @object
	.size	a, 39996
a: # Массив А
	.zero	39996
	.globl	b
	.align 32
	.type	b, @object
	.size	b, 39996
b: # Массив B
	.zero	39996
	.globl	i
	.align 4
	.type	i, @object
	.size	i, 4
i: # Глобальная итерационная переменная
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j: # Глобальная итерационная переменная, она же отвечает за размер массива B
	.zero	4
	.globl	sum
	.align 8
	.type	sum, @object
	.size	sum, 8
sum: # Глобальная переменная, отвечающая за сумму элементов массива А, стоящих на четных индексах
	.zero	8
	.section	.rodata
.LC0: # Формат ввода
	.string	"%d"
.LC1: # Формат вывода
	.string	"%d "
	.align 8
.LC2: # Сообщение об ошибке
	.string	"\320\240\320\260\320\267\320\274\320\265\321\200 \320\262\321\205\320\276\320\264\320\275\320\276\320\263\320\276 \320\274\320\260\321\201\321\201\320\270\320\262\320\260 \320\264\320\276\320\273\320\266\320\265\320\275 \320\261\321\213\321\202\321\214 \320\275\320\265 \320\274\320\265\320\275\320\265\320\265 3 \321\215\320\273\320\265\320\274\320\265\320\275\321\202\320\276\320\262 \320\270 \320\275\320\265 \320\261\320\276\320\273\320\265\320\265 10000!"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 2
	jle	.L2
	mov	eax, DWORD PTR n[rip]
	cmp	eax, 9999
	jg	.L2
	mov	DWORD PTR -12[rbp], 0
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -12[rbp]
	and	eax, 1
	test	eax, eax
	jne	.L4
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, QWORD PTR sum[rip]
	add	rax, rdx
	mov	QWORD PTR sum[rip], rax
.L4:
	add	DWORD PTR -12[rbp], 1
.L3:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L5
	mov	DWORD PTR j[rip], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, a[rip]
	mov	eax, DWORD PTR [rdx+rax]
	movsx	rdx, eax
	mov	rax, QWORD PTR sum[rip]
	cmp	rdx, rax
	jge	.L7
	mov	eax, DWORD PTR j[rip]
	lea	edx, 1[rax]
	mov	DWORD PTR j[rip], edx
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, a[rip]
	mov	edx, DWORD PTR [rcx+rdx]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	DWORD PTR [rcx+rax], edx
.L7:
	add	DWORD PTR -8[rbp], 1
.L6:
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	mov	DWORD PTR -4[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, b[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L9:
	mov	eax, DWORD PTR j[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L10
	jmp	.L11
.L2:
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
.L11:
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
