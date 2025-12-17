.global _start # Define the entry point
.intel_syntax
.section .text # Store the code section

_start:
    # write syscall
    mov %eax, 4          # syscall: write
    mov %ebx, 1          # file descriptor: STDOUT
    lea %ecx, [msg]      # pointer to message to write
    mov %edx, 14         # message length
    int 0x80             # invoke the kernel

    # exit syscall
    mov %eax, 1          # syscall: exit
    mov %ebx, 0          # status: 0
    int 0x80             # invoke the kernel

.section .data # Store the data section
msg:
    .ascii "Hello, World!\n"
