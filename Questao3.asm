addi x10, x0, 0xff
lw x11, varA
lw x12, varB
slli x10, x10, 16#da o shift nos bytes do 10 oarao 11

and x13, x11, x10
add x11, x13, x12#coloca os byts do x10 no x11
halt
varA: .word 0xffff0000
varB: .word 0x0000ffff
