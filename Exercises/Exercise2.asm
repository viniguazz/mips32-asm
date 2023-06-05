
.data
a: .word 0xf
b: .word 0x3
c: .word 0x5

.text
lw $a1, a
lw $a2, b
lw $a3, c

and $s0, $a1, $a2
nor $s1, $a1, $zero
and $s2, $a3, $s1
or $s3, $s2, $s0
