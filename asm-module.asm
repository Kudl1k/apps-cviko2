;***************************************************************************
;
; Program for education in subject "Assembly Languages" and "APPS"
; petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
;
; Empty project
;
;***************************************************************************

    bits 64

    section .data

    extern longArr
    extern intArr
    extern g_N
    extern myString
    extern g_xor

;***************************************************************************

    section .text

    global bitDivision

    global stringxor

    global getEven
getEven:
    mov rdx , 0
.back:
    cmp rdx , 10 
    je .end_for 
    mov rbx , [ longArr + rdx * 8 ]
    and rbx , 1
    jz .even
    inc rdx
    jmp .back
.even:
    mov rcx, [ longArr + rdx * 8]
    neg rcx
    mov [ longArr + rdx * 8], rcx
    inc rdx
    jmp .back
.end_for:
    ret


bitDivision:
    mov rdx, 0
.zpet:
    cmp rdx, 10
    je .hotovo
    mov cl, [ g_N ]
    mov ebx, [intArr + rdx * 4]
    sar ebx, cl
    mov [intArr + rdx * 4], ebx
    inc rdx
    jmp .zpet
.hotovo:
    ret

stringxor:
    mov rdx, 0
.zpet:
    cmp [myString + rdx], byte 0
    je .konec
    mov al, [ g_xor ]
    xor [myString + rdx], al
    inc rdx
    jmp .zpet
.konec:
    ret


