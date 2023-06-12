.data
Conta: .word 4, 45, 3, 2, 5, 65, 78, 11, 10, 9
media: .word 0

.text
la $t0, Conta
lw $t1, 12($t0)
lw $t2, 28($t0)
add $t1, $t1, $t2
div $t1, $t1, 2
sw $t1, media

