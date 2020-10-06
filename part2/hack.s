   
    .data
choicePrompt:	.asciiz "\nEnter 1, 2, or 3: "
valuePrompt:	.asciiz "\nEnter a value: "
outputMessage:  .asciiz "\nThe new value is: "
    
    .text
main:
    # print choice prompt
    li	$v0, 4
    la	$a0, choicePrompt
    syscall

    # get integer input
    li	$v0, 5
    syscall

    # call function
    jal	conditionalMultiplier

    # print output message
    li	$v0, 4
    la	$a0, outputMessage
    syscall

    # print result
    # thus, final result is stored in $s1
    li	$v0, 1
    move	$a0, $s1
    syscall

    # exit program
    addi	$v0, $zero,	10
    syscall

cond2:
    # option 2
    addi,	$t3, $zero, 2320
    li	$v0,	4
    la	$a0, valuePrompt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t3
    jr	$ra

conditionalMultiplier:
    beq	$v0, 1, cond1
    beq	$v0, 2, cond2
    beq	$v0, 3, cond3 # if input is not 1, 2, or 3, default to input of 3

cond3:
    # option 3
    addi,	$t7, $zero, 73
    li	$v0, 4
    la	$a0, valuePrompt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t7
    jr	$ra

cond1:
    # option 1
    addi,	$t5, $zero, 20
    li	$v0, 4
    la	$a0, valuePrompt
    syscall
    li	$v0, 5
    syscall
    move	$s1, $v0
    mul	$s1, $s1, $t5
    jr	$ra
