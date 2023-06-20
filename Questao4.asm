lw x10, varA
lw x11, varB

xor x10, x10, x11 #inverte bits do x10

halt
varA: .word 0xffff0000
varB: .word 0x11111111

