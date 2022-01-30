# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.data
	prompt: .asciiz "Enter a integer: "

.text
main:
	# TODO: Write your code here
	# Get user input 1 (integer)
	# li $v0, 4
	# la $a0, prompt
	# syscall
	li $v0, 5
	syscall
	move $t0, $v0

	# Get user input 2 (integer)
	# li $v0, 4
	# la $a0, prompt
	# syscall
	li $v0, 5
	syscall
	move $t1, $v0

	# Calculate 64*(x - y) + 32
	sub $t2, $t0, $t1
	sll $t2, $t2, 6
	addi $t2, 32

	# Print result 
	li $v0, 1
	move $a0, $t2
	syscall
	j exit

exit:
	# Exit SPIM: Write your code here!
	li $v0 10
	syscall

