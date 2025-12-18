.global _start # Define the entry point
.intel_syntax noprefix
.section .text # Store the code section

_start:
    # write syscall
    mov rax, 1          # syscall: sys_write
    mov rdi, 1          # file descriptor: STDOUT
    lea rsi, [msg]      # pointer to message to write
    mov rdx, 14         # message length
    syscall             # invoke the kernel

    # exit syscall
    mov rax, 60          # syscall: exit
    mov rdi, 0           # status: 0
    syscall              # invoke the kernel

.section .data # Store the data section
msg:
    .ascii "Hello, World!\n"
