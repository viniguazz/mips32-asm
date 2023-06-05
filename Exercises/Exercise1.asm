

.data
x: .word 5
y: .word 3
z: .word 4

.text
lw $a1, x
lw $a2, y
lw $a3, z
addi $t0, $a1, 300
sub $t0, $t0, $a2
add $t0, $t0, $a3
addi $t0, $t0, 27
add $t0, $t0, $a1
 

