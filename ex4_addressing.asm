; ex4_addressing.asm

org 100h

start:
    mov ax, cs
    mov ds, ax

    mov bx, 300h
    mov byte ptr [bx], 66h

    mov al, [bx]

    mov ax, 4c00h
    int 21h
