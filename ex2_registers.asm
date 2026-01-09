; ex2_registers.asm

org 100h

start:
    mov ax, 1234h
    mov bx, ax

    mov ah, 56h
    mov al, 78h

    mov cx, ax      ; CX = 5678h

    mov ax, 4c00h
    int 21h
