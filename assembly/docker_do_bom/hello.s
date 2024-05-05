.section .data
msg:
    .asciz "Hello, World!\n"

.section .text
.globl _start

_start:
    # syscall write
    mov $1, %rax            # número do syscall para write
    mov $1, %rdi            # descritor de arquivo STDOUT
    mov $msg, %rsi          # ponteiro para a mensagem
    mov $13, %rdx           # comprimento da mensagem

    syscall

    # syscall exit
    mov $60, %rax           # número do syscall para exit
    xor %rdi, %rdi          # código de saída 0
    syscall
