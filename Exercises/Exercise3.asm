.data
a: .word 2
b: .word 3
c: .word 4
d: .word 5

.text
lw $s0, a
lw $s1, b
lw $s2, c
lw $s3, d
add $s0, $s0, $s1
add $s0, $s0, $s2
add $s0, $s0, $s3
sll $v0, $s0, 2


