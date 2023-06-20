comp:
    lb x13, 1025(x0) # leitura do teclado para ver quais numeros vai ter o pegaro fatorial 
    
	lw x14, um
    beq x13, x14, cont1 #branch se for igual ao nmr digitado do teclado
    
	lw x14, dois
    beq x13, x14, cont2 
    
	lw x14, tres
    beq x13, x14, cont3 
    
	lw x14, quatro
    beq x13, x14, cont4 
    
	lw x14, cinco
    beq x13, x14, cont5 
    
	lw x14, seis
    beq x13, x14, cont6
    
	lw x14, sete
    beq x13, x14, cont7
    
	lw x14, oito
    beq x13, x14, cont8
    
	lw x14, nove
    beq x13, x14, cont9
    
	lw x14, zero
    beq x13, x14, cont1
    beq x13, x0, print

jal x10, comp

print:
	addi x15, x15, 48
    sb x15, 1024(x0)
halt

cont1:
  addi x15, x15, 1 #saber quais fatorias vao ser somados no acumulador
jal x10, comp

cont2:
  addi x15, x15, 2
jal x10, comp

cont3:
  addi x15, x15, 6
jal x10, comp

cont4:
  addi x15, x15, 24
jal x10, comp

cont5:
  addi x15, x15, 120 
jal x10, comp

cont6:
  addi x15, x15, 720
jal x10, comp

cont7:
  addi x15, x15, 5040
jal x10, comp

cont8:
  addi x15, x15, 40320
jal x10, comp

cont9:
  addi x15, x15, 362880
jal x10, comp

zero:  .word 48
um:  .word 49
dois:  .word 50
tres:  .word 51 
quatro:  .word 52
cinco:  .word 53
seis:  .word 54
sete:  .word 55
oito:  .word 56
nove:  .word 57









