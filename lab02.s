
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
###
prog:
findTheLast:
    beq a1, zero, fail
    slli s0, a1, 2
    add s0 s0 a0 
loop:
    addi s0 s0 -4
    lw t1 0(s0)
    beq t1 a2 done 
    bne s0 a0 loop

fail:
    add s0 zero zero
###
done:
    addi a7, zero, 10 
    ecall
