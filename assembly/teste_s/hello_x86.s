.section .data
msg:
    .asciz "Hello, World!\n"

.section .text
.globl _start

_start:
    # syscall write
    mov $4, %eax            # número do syscall para write
    mov $1, %ebx            # descritor de arquivo STDOUT
    mov $msg, %ecx          # ponteiro para a mensagem
    mov $13, %edx           # comprimento da mensagem

    int $0x80               # interrupção do sistema para chamar syscall

    # syscall exit
    mov $1, %eax            # número do syscall para exit
    xor %ebx, %ebx          # código de saída 0
    int $0x80               # interrupção do sistema para chamar syscall
