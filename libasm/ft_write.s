bits 64

default rel

extern __errno_location

global ft_write

section .text

ft_write:
    mov rax, 1
    syscall
    cmp rax, 0
    jl .error
    ret

.error:
    neg rax
    push rax
    call __errno_location wrt ..plt
    pop rdx
    mov dword [rax], edx
    mov rax, -1
    ret
