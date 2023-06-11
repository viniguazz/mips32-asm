.data
vector: .word 1,2,4,4,5,6,7,8

.text
la $s4, vector
lw $s1, 8($s4)
addi $s1, $s1, 1
sll $s1, $s1, 2
add $s1, $s1, $s4
lw $s2, 0($s1)
sw $s2, 0($s4)
