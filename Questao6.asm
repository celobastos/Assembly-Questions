#colocando o endl
#para rodar tem q digitar a pont do playerA endl playerB endl dps roda
#tem que aumentar a frequencia pra poder rodar
lw x16, endl
lw x18, flag #setando a flag = 1

jogo:
 lb x13, 1025(x0)
  #lendo as letras do teclado  
  lw x14, jogA
  beq x13, x14, funcao1 #branch se determinada letra foi lida
  addi x14, x14, 1    
  
  beq x13, x14, funcao3 #b
  addi x14, x14, 1    
  
  beq x13, x14, funcao3 #c
  addi x14, x14, 1    
  
  beq x13, x14, funcao2 #d
  addi x14, x14, 1    
  
  beq x13, x14, funcao1 #e
  addi x14, x14, 1    
  
  beq x13, x14, funcao4 #f
  addi x14, x14, 1    
  
  beq x13, x14, funcao2 #g
  addi x14, x14, 1    
  
  beq x13, x14, funcao4 #h
  addi x14, x14, 1    
  
  beq x13, x14, funcao1 #i
  addi x14, x14, 1    
  
  beq x13, x14, funcao8 #j
  addi x14, x14, 1
  
  beq x13, x14, funcao5 #k
  addi x14, x14, 1    
  
  beq x13, x14, funcao8 #l
  addi x14, x14, 1    
  
  beq x13, x14, funcao4 #m
  addi x14, x14, 1    
  
  beq x13, x14, funcao3 #n
  addi x14, x14, 1    
  
  beq x13, x14, funcao1 #o
  addi x14, x14, 1    
  
  beq x13, x14, funcao3 #p
  addi x14, x14, 1    
  
  beq x13, x14, funcao10 #q
  addi x14, x14, 1    
  
  beq x13, x14, funcao5 #r
  addi x14, x14, 1    
  
  beq x13, x14, funcao5 #s
  addi x14, x14, 1    
  
  beq x13, x14, funcao2 #t
  addi x14, x14, 1    
  
  beq x13, x14, funcao1 #u
  addi x14, x14, 1    
  
  beq x13, x14, funcao4 #v
  addi x14, x14, 1    
  
  beq x13, x14, funcao4 #w 
  addi x14, x14, 1    
  
  beq x13, x14, funcao8 #x
  addi x14, x14, 1    
  
  beq x13, x14, funcao4 #y
  addi x14, x14, 1    
  
  beq x13, x14, funcao10#z
  beq x13, x16, next # se der endl vai pro prox player
jal x10, jogo

next:
  beq x17, x18, comp #compara as flags
  
  add x11, x11, x12  # adiciona os pontos no player1
  
  sub x12, x12, x12  # 0 os pontos
  
  addi x17, x17, 1   # flag++
jal x10, jogo

comp:
  beq x11, x12, empate 
  # se houver empate
  bge x11, x12, playerA
  # se o player a  ganhar
  bltu x11, x12, playerB
  # se o player b ganhar
halt

playerA:
  lw x13, jogA
  sb x13, 1024(x0)#printar que jgoador A ganhou
halt

playerB:
  lw x13, jogB#printar que o jogador b ganhou
  sb x13, 1024(x0)
halt

empate:
  lw x13, emp#printar que empatou
  sb x13, 1024(x0)
halt

funcao1:
  addi x12, x12, 1#funcoes para adicionar ao contador a pontuacao de respectivas letras
jal x10, jogo

funcao2:
  addi x12, x12, 2
jal x10, jogo

funcao3:
  addi x12, x12, 3
jal x10, jogo

funcao4:
  addi x12, x12, 4
jal x10, jogo

funcao5:
  addi x12, x12, 5
jal x10, jogo

funcao8:
  addi x12, x12, 8
jal x10, jogo

funcao10:
  addi x12, x12, 10
jal x10, jogo

jogA: .word 'A'
jogB: .word 'B'
emp: .word 'E'
flag: .word 1
endl: .word 13




