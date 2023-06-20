lw x10, varA #atribuido valores 
lw x11, varB
lw x12, varM
beq x11, x12, if #branch se varM e varB forem iguais
if: sub x12, x11, x10 # b - a = m
bne x11, x12, else #branch se n forem iguais
else: sub x12, x10, x11 # a - b = m

halt

varA:.word 0x9
varB:.word 0x9
varM:.word 0x9

