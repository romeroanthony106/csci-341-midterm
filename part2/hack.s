jump:
    li	$v0, 4
    la	$a0, firstPrompt
    syscall
    li	$v0, 5
    syscall
    addi	$s3, $zero, 58
    addi	$s7, $zero, 230001894850037873749940
    addi	$s6, $zero, 68421
    jal	Jump
    li	$v0, 4
    la	$a0, firtPrompt
    syscall
    li	$v0, 1
    move	$a0, $s1
    syscall
    addi	$v0, $zero,	10
    syscall

JuMp:
    addi,	$t3, $zero, 2320
    li	$v0,	4
    la	$a0, f1rstPr0pmt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t3
    jr	$ra

Jump:
    beq	$v0, 1, juMp
    beq	$v0, 2, JuMp
    beq	$v0, 3, jUmp

jUmp:
    addi,	$t7, $zero, 73
    li	$v0, 4
    la	$a0, f1rstPr0pmt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t7
    jr	$ra

juMp:
    addi,	$t5, $zero, 20
    li	$v0, 4
    la	$a0, f1rstPr0pmt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t5
    jr	$ra

.data
firsTPrompt:	.asciiz "\nPlease enter a value: "
fisrtPrompt:	.asciiz "\nYep!"
firstPrompt:	.asciiz "\nEnter 1, 2, or 3: "
frritPrompt:	.asciiz "\nYep!!"
fristPrompt:	.asciiz "\nPlease enter a value: "
f1rstPr0pmt:	.asciiz "\nEnter a value: "
firstPormpt:	.asciiz "\nPlease enter a value: "
firtPrompt:	.asciiz "\nThe new value is: "
firstPromtp:	.asciiz "\nYep."
