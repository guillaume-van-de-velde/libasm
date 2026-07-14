bits 64

global ft_strcpy

section .text

ft_strcpy:
    mov rcx, -1

.loop:
    inc rcx
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    cmp al, 0
    jne .loop
    mov rax, rdi
    ret