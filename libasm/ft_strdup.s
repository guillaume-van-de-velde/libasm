bits 64

extern malloc
extern ft_strlen

global ft_strdup

.text:

ft_strdup:
    push rdi
    call ft_strlen
    mov rdi, rax
    inc rdi 
    call malloc  wrt ..plt
    pop rsi
    mov rcx, -1
    mov rdi, rax
    cmp rdi, 0
    jne .loop
    ret

.loop:
    inc rcx
    mov byte al, [rsi + rcx]
    mov byte [rdi + rcx], al
    cmp byte [rsi + rcx], 0
    jne .loop
    mov rax, rdi
    ret
