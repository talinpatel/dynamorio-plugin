	.arch armv8-a
	.file	"add.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	w0, 1               //int a = 1;
	str	w0, [sp, 4]         //store a
	mov	w0, 2               //int b = 2;
	str	w0, [sp, 8]         //store b
	ldr	w1, [sp, 4]         //load a
	ldr	w0, [sp, 8]         //load b
	add	w0, w1, w0          //c = a + b;
	str	w0, [sp, 12]        //store c
	mov	w0, 0               //32 bit return reg
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret                     //return 0 
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
