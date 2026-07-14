bits 64

global ft_strlen

section .text

ft_strlen:
    mov rax, -1

.loop:
    inc rax
    cmp byte [rdi + rax], 0
    jne .loop
    ret
