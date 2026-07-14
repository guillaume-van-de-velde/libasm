bits 64

extern free

global ft_list_remove_if

section .text

ft_list_remove_if:
    push r12
    cmp rdi, 0
    je return
    mov r12, rdi
    mov rdi, [rdi]
getFirstNodeDiff:
    cmp rdi, 0
    je return
    push rdi
    mov rdi, [rdi]
    call compare
    pop rdi
    cmp rax, 0
    jne setNewBegin
    mov rax, rdi
    mov rdi, [rdi + 8]
    call deleteNode
    jmp getFirstNodeDiff
setNewBegin:
    mov [r12], rdi
deleteOthersNodes:
    cmp rdi, 0
    je return
    cmp qword [rdi + 8], 0
    je return
    push rdi
    mov rdi, [rdi + 8]
    mov rdi, [rdi]
    call compare
    pop rdi
    cmp rax, 0
    jne notEqualToData
    push rdi
    mov rax, [rdi + 8]
    mov rdi, [rdi + 8]
    mov r8, [rdi + 8]
    call deleteNode
    pop rdi
    mov [rdi + 8], r8
    jmp deleteOthersNodes

notEqualToData:
    mov rdi, [rdi + 8]
    jmp deleteOthersNodes

compare:
    push rsi
    push rdx
    push rcx
    call rdx
    pop rcx
    pop rdx
    pop rsi
    ret

deleteNode:
    push r8
    push rdi
    push rsi
    push rdx
    push rcx
    push rax
    mov rdi, [rax]
    call rcx
    pop rax
    mov rdi, rax
    push rax
    call free wrt ..plt
    pop rax
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    pop r8
    ret

return:
    pop r12
    ret