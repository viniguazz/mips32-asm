.data
x: .word 2
y: .word 5
z: .word 7
result: .word 0

.text
la $t0, y # y
la $t1, x
la $t2, z
la $t3, result

lw $t0, 0($t0)
lw $t1, 0($t1)
lw $t2, 0($t2)

addi $s0, $zero, 0 # counter (i)

loop:
slt $s1, $s0, $t0
beq $zero, $s1, end
mult $t1, $t2
mflo $t1
addi $s0, $s0, 1
j loop

end:
sw $t1, 0($t3)