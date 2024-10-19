
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
    beq 7(a1) a2 done
    
    
#-----------------------------
# Write your code here!hbkh
# Do not remove the prog label or write code above it!
#-----------------------------

done:
    addi a7, zero, 10 
    ecall
