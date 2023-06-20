add x8, x0, x0
addi x9, x0, 33
addi x10, x0, 26
addi x11, x0, 1
lw x12, varA
lw x13, varB
lw x14, varC
lw x15, varX
blt x12, x0, if #if x12 < 0 entra no if
bge x13, x9, if  # if x13 >= x9 entra no if
blt x14, x10, if # if x14 < x10 entra no if
add x15, x15, x11 # adiciona 1 que foi posto no x11 na x15

if: halt #se entrar nesse if deixa de somar com 1
halt
varA: .word 0x01
varB: .word 0x02
varC: .word 0x1a
varX: .word 0x0



