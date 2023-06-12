.data
vector: .word 1,2,3,4,5

.text
la $a0, vector
addi $a1, $zero, 5 # a1 = vector size
move $t0, $zero # t0 = offset

loop:
sll $t1, $t0, 2 # t1 = current offset
add $t2, $a0, $t1 # t2 = current vector element address
sw $zero, 0($t2) # set vector element to zero
addi $t0, $t0, 1 # increments offset
slt $t3, $t0, $a1 # t3 = (offset < vector size)
bne $t3, $zero, loop

# this structure can be interpreted as a "for loop", because it (a) creates a var; (b) executes an operation; (c) increments the var


