	.globl __start
	.data 0x10000000

	.text 0x00400000
__start: li $a0, 77
	jal Input
	move $a1,$v0
	li $a0, 81
	jal Input
	move $a2,$v0
	move $a0, $a1
	jal Mult
	move $a3,$v0
	jal Output
	li $v0,10
	syscall
Mult: li $v0, 0
	beqz $a2, MultRet
MultFor: add $v0, $v0, $a0
	addi $a2, $a2, -1
	bne $a2, $zero, MultFor
MultRet: jr $ra
Input: li $v0, 11
	syscall
	li $a0, 61
	li $v0, 11
	syscall
	li $v0, 5
	syscall
	li $a0, 1
	jr $ra
Output: li $a0, 82
	li $v0, 11
	syscall
	li $a0, 61
	li $v0, 11
	syscall
	move $a0, $a3
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	jr $ra
	
	