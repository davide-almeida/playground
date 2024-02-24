.section .data
    hello_str:
        .ascii "Hello, World!\n"
        hello_str_len = . - hello_str

.section .text
    .globl _start

_start:
    # Escrever a string no terminal
    movq $1, %rax           # syscall número 1 (sys_write)
    movq $1, %rdi           # file descriptor 1 (stdout)
    movq $hello_str, %rsi   # ponteiro para a string
    movq $hello_str_len, %rdx  # comprimento da string
    syscall

    # Sair do programa
    movq $60, %rax          # syscall número 60 (sys_exit)
    xorq $0, %rdi           # código de saída 0
    syscall
