bits 64

global ft_list_size

section .text

ft_list_size:
    mov rax, -1

.loop:
    inc rax
    cmp rdi, 0
    je return
    mov rdi, [rdi + 8]
    jmp .loop

return:
    ret