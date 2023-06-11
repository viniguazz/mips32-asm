# Programa que l� na mem�ria os valores dos lados de um tri�ngulo e escreve na mem�ria o tipo do tri�ngulo formado
# 0: tri�ngulo equil�tero; 1: tri�ngulo escaleno; 2: tri�ngulo isosceles
# (N�o verifica se os lados formam um tri�ngulo)

      .data
n:   .word  7 
fat:  .word  0 
             
      .text
      li   $s2, 0x1         # fat = 1;              // $s2 faz o papel de fat
      la   $t0, n           #                       // Carrega o endere�o de n
      lw   $s1, 0($t0)      # n = 7                 // $s1 faz o papel de n //Carrega o conte�do de n
      beq  $s1, $zero, FIM  # if (n == 0) goto fim  // 0! = 1
      addi $s1,$s1,1        # n = n + 1;
      li   $s3, 1           # i = 1 
WHILE:                      # do{
      mul  $s2,$s2,$s3      #   fat = fat; 
      addi $s3,$s3,1        #   i = i + 1; 
      bne  $s3, $s1, WHILE  # }while(i != n + 1);   // Equivalente a }while(i <= n); 
FIM: 
      sw  $s2, 4($t0)	    # Armazena o valor calculado na vari�vel fat
      
