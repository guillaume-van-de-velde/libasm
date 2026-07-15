bits 64

extern malloc

global ft_list_push_front

section .text

ft_list_push_front:
    push rdi
    push rsi
    mov rdi, 16
    call malloc wrt ..plt
    pop rsi
    pop rdi
    cmp rax, 0
    je return
    mov [rax], rsi
    mov rcx, [rdi]
    mov [rax + 8], rcx
    mov [rdi], rax

return:
    ret