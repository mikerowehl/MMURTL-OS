# WaitMsg MMURTL system call
# Takes 2 parameters
# Call gate at 0x40
# Returns int

.section .text
.type WaitMsg, @function
.globl WaitMsg
WaitMsg:
	pushl	%ebp
	movl	%esp, %ebp

	pushl	8(%ebp)
	pushl	12(%ebp)
	lcall	$0x40, $0x00000000

	movl	%ebp, %esp
	popl	%ebp
	ret
