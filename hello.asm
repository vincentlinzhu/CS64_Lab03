# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
# Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	prompt: .asciiz "Enter a integer: "
	one: .asciiz "integer is odd\n"
	notone: .asciiz "integer is even\n"

# Text Area (i.e. instructions)
.text
main:
	# TODO: Write your code here
	# Get user input (integer)
	li $v0, 4
	la $a0, prompt
	syscall
	li $v0, 5
	syscall
	move $t0, $v0

	# Check if input is even or odd
	li $t1, 1
	and $t2, $t0, $t1
	beq $t2, $zero, even
	bne $t2, $zero, odd

# If even
even:
	li $t3, 6
	mult $t0, $t3
	mflo $t4
	li $v0 1
	move $a0 $t4
	syscall
	j exit

# If odd
odd:
	li $t3, 9
	mult $t0, $t3
	mflo $t4
	li $v0 1
	move $a0 $t4
	syscall
	j exit

exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall
