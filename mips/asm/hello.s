.section .text # Store the code section

.global __start # Define the entry point

__start:
    ; STDIN = 0
    ; STDOUT = 1
    ; STDERR = 2

    li $v0, 4004          # syscall: write
    li $a0, 1             # file descriptor: stdout
    la $a1, msg           # pointer to message
    li $a2, 14            # message length
    syscall               # invoke the kernel

    li $v0, 4001          # syscall: exit
    li $a0, 0             # status: 0
    syscall               # invoke the kernel

.section .data # Store the data section

msg:
.ascii "Hello, World!\n"
