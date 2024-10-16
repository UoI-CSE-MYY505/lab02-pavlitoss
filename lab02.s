
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
    addi s0, a1, -1 #index
    add s1, zero, zero
    add s2, zero, zero
loop: 
    beq a1, zero, done
    slli t1, s0, 2
    add t1, t1, a0
    lw t0, 0(t1)
    beq t0, a2, done
    
    beq s0, zero, done
    addi s0, s0, -1
    j loop
    
done:
    addi a7, zero, 10 
    ecall
