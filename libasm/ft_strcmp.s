bits 64

global ft_strcmp

section .text

ft_strcmp:
    mov rcx, -1
    xor rax, rax
    mov al, 1

.loop:
    cmp al, 0
    je .end
    inc rcx
    mov al, byte [rdi + rcx]
    cmp byte [rsi + rcx], al
    je .loop

.end:
    movsx rax, al
    movsx rdx, byte [rsi + rcx]
    sub rax, rdx
    ret