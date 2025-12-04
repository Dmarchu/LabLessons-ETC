	 .globl __start
	 .data 0x1000000C
 var:	 .Word 26
 chain:  .asciiz "coronavirus"
         .text 0x0040000C
__start: la $t0, var
	 la $t1, chain
	 lw $s0, 0($t0)
	 lb $s1, 5($t1)