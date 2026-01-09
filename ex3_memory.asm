; ex3_memory.asm

org 100h

start:
    mov ax, cs
    mov ds, ax      ; DS = CS

    mov byte ptr [200h], 12h
    mov al, [200h]

    mov ax, 4c00h
    int 21h
