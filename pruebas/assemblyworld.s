        .globl __start
	.data 0x10000000
hello:  .asciiz "Hola Mundo!"

	.text 0x00400000
__start:
	la $a0, hello
	jal print
	jal end
print:
	li $v0, 4
	syscall
	jr $ra
end:    
	li $v0, 10
	syscall