.global _start # Define the entry point

_start:
    # STDOUT FD = 1

    addi a7, zero, 64        # syscall: write
    addi a0, zero, 1         # file descriptor: STDOUT
    la   a1, helloworld      # pointer to message to write
    addi a2, zero, 14        # message length
    ecall                    # invoke the kernel

    addi a7, zero, 93        # syscall: exit
    addi a0, zero, 0         # status: 0
    ecall                    # invoke the kernel

helloworld:
    .ascii "Hello, World!\n"
