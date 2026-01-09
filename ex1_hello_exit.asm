; ex1_hello_exit.asm
; 最小可执行程序

org 100h

start:
    mov ax, 4c00h
    int 21h
