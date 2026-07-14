bits 64

global ft_list_sort

section .text

ft_list_sort:
    push r12
    push r13
    push rdi
    push rsi
    cmp rdi, 0
    je return
    mov r12, rsi
    mov r13, rdi
beginSort:
    mov rdi, [r13]
    cmp rdi, 0
    je return
    mov rsi, [rdi + 8]
compare:
    cmp rsi, 0
    je return
    push rdi
    push rsi
    mov rdi, [rdi]
    mov rsi, [rsi]
    call r12
    pop rsi
    pop rdi
    cmp rax, 0
    jg swap
    mov rdi, rsi
    mov rsi, [rsi + 8]
    jmp compare
swap:
    mov r8, [rdi]
    mov r9, [rsi]
    mov [rdi], r9
    mov [rsi], r8
    jmp beginSort

return:
    pop rsi
    pop rdi
    pop r13
    pop r12
    ret