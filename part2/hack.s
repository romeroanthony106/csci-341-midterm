   
    .data
firsTPrompt:	.asciiz "\nPlease enter a value: "
firstPrompt:	.asciiz "\nEnter 1, 2, or 3: "
f1rstPr0pmt:	.asciiz "\nEnter a value: "
firtPrompt:	    .asciiz "\nThe new value is: "
    
    .text
main:
    li	$v0, 4
    la	$a0, firstPrompt
    syscall
    li	$v0, 5
    syscall
    addi	$s3, $zero, 58
    addi	$s7, $zero, 230001894850037873749940
    addi	$s6, $zero, 68421
    jal	jump3
    li	$v0, 4
    la	$a0, firtPrompt
    syscall
    li	$v0, 1
    move	$a0, $s1
    syscall
    addi	$v0, $zero,	10
    syscall

jump2:
    addi,	$t3, $zero, 2320
    li	$v0,	4
    la	$a0, f1rstPr0pmt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t3
    jr	$ra

jump3:
    beq	$v0, 1, jump5
    beq	$v0, 2, jump2
    beq	$v0, 3, jump4

jump4:
    addi,	$t7, $zero, 73
    li	$v0, 4
    la	$a0, f1rstPr0pmt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t7
    jr	$ra

jump5:
    addi,	$t5, $zero, 20
    li	$v0, 4
    la	$a0, f1rstPr0pmt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t5
    jr	$ra
