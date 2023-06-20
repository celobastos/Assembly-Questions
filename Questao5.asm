#para parar de ler do teclado aperte espaco
#tem q aumentar o tempo de clock

lw x12, a #declarando variaveis pras vogais
lw x13, e
lw x14, i
lw x15, o
lw x18, u
lw x19, espaco

loop: #loop para ler a string toda e adicionar ao acumulador
  lb x10, 1025(x0) # Tomando caracteres do teclado
  beq x10, x19, print # Teclou espaco
  beq x10, x12, somar # Teclou a
  beq x10, x13, somar # Teclou e
  beq x10, x14, somar # Teclou i
  beq x10, x15, somar # Teclou o
  beq x10, x18, somar # Teclou u
jal a2, loop

somar: #acumula a cada vez q le uma vogal
  addi x20, x20, 1
jal x11, loop

print: #funcao pra printar o numero de vogais
  addi x10, x20, 48
  sb x10, 1024(x0)
  sub x20, x20, x20
jal x11, loop

a: .word 97
e: .word 101
i: .word 105
o: .word 111
u: .word 117
espaco: .word 32
