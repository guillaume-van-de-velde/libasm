bits 64

global ft_atoi_base

section .text

ft_atoi_base:
    xor rax, rax
    push rdi
    push rsi
    mov rcx, -1
    mov rdx, -1
    call checkBase
    cmp rax, 2
    jl endAtoi1
    pop rsi
    pop rdi
    push rdi
    push rsi
    push rax
    mov rdx, -1
    mov rax, 1
    call skipWS
    cmp rax, 0
    je endAtoi2
    pop r11
    pop rsi
    pop rdi
    mov rcx, rax
    mov rax, -1
    xor r8, r8
    mov r8b, [rdi + rdx]
    xor r9, r9
    xor r10, r10
    call calculNumber
    ret

checkBase:
    inc rcx
    mov rdx, rcx
    mov al, [rsi + rcx]
    cmp al, 0
    je .endCheckBase
    cmp al, 32
    jle retZero
    cmp al, 127
    je retZero
    cmp al, 43
    je retZero
    cmp al, 45
    je retZero
    call .checkSameChar
    cmp rax, 0
    je retZero
    jmp checkBase

.checkSameChar:
    inc rdx
    mov r8b, [rsi + rdx]
    cmp r8b, 0
    je .endCheckSameChar
    cmp al, r8b
    je retZero
    jmp .checkSameChar

.endCheckSameChar:
    mov rax, rdx
    ret

.endCheckBase:
    mov rax, rcx
    ret

skipWS:
    inc rdx
    mov cl, [rdi + rdx]
    cmp cl, 32
    je skipWS
    cmp cl, 9
    jl .getSign
    cmp cl, 13
    jg .getSign
    jmp skipWS

.getSign:
    cmp cl, 0
    je retZero
    cmp cl, 45
    jne .notMinus
    neg rax
    jmp .callGetSign

.notMinus:
    cmp cl, 43
    jne return
    jmp .callGetSign

.callGetSign:
    inc rdx
    mov cl, [rdi + rdx]
    jmp .getSign



calculNumber: ; (rdi: str, rsi: base, rdx: i, rcx: sign, r8: first char, r11: sizeBase)
    cmp rax, -1
    je .getPositionNumber
    cmp rax, -2
    je .retResult
    push rax
    push rdx
    mov rax, r11
    imul r10
    mov r10, rax
    pop rdx
    pop rax
    add r10, rax
    inc rdx
    mov r8b, [rdi + rdx]
    cmp r8b, 0
    je jmpLastChar
    mov rax, -1
    jmp .getPositionNumber

.retResult:
    mov rax, r10
    imul rcx
    ret

.getPositionNumber: ; (r8b: char, rsi: base)
    inc rax
    mov r9b, [rsi + rax]
    cmp r9b, 0
    je jmpLastChar
    cmp r9b, r8b
    je calculNumber
    jmp .getPositionNumber


jmpLastChar:
    mov rax, -2
    jmp calculNumber

retZero:
    xor rax, rax
    ret

return:
    ret

endAtoi1:
    add rsp, byte 16
    xor rax, rax
    ret

endAtoi2:
    add rsp, byte 24
    xor rax, rax
    ret