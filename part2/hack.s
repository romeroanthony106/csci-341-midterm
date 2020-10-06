   
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

    # print result (stored in $s1)
    li	$v0, 1
    move	$a0, $s1
    syscall

    # exit program
    addi	$v0, $zero,	10
    syscall

# option 2
# multiplies user input by 2320
cond2:
    addi,	$t3, $zero, 2320
    
    # prompt for value
    li	$v0,	4
    la	$a0, valuePrompt
    syscall
    
    # get user input
    li	$v0, 5
    syscall
    
    # multiply input by 2320 and store in $s1
    move	$s1, $v0
    mul	$s1, $s1, $t3
    
    # return
    jr	$ra

conditionalMultiplier:
    beq	$v0, 1, cond1
    beq	$v0, 2, cond2
    beq	$v0, 3, cond3 # if input is not 1, 2, or 3, default to input of 3

# option 3
# multiplies user input by 73
cond3:
    addi,	$t7, $zero, 73
    
    # prompt for value
    li	$v0, 4
    la	$a0, valuePrompt
    syscall
    
    # get user input
    li	$v0, 5
    syscall
    
    # multiply input by 73 and store in $s1
    move	$s1, $v0
    mul	$s1, $s1, $t7
    
    # return
    jr	$ra

# option 1
# multiples user input by 20
cond1:
    addi,	$t5, $zero, 20
    
    # prompt for value
    li	$v0, 4
    la	$a0, valuePrompt
    syscall
    
    # get user input
    li	$v0, 5
    syscall
    
    # multiply input by 73 and store in $s1
    move	$s1, $v0
    mul	$s1, $s1, $t5
    
    # return
    jr	$ra
