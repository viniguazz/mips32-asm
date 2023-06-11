.data
result: .word 98
.text
add $t8, $t8, 0x00badbed
add $t9, $t9, 0xafada007
sll $t1, $t8, 4
and $t1, $t1, $t9
ori $s6, $t1, 20
la $t0, result
sw $s6, ($t0)
