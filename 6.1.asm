assume cs:code          ; 告诉汇编器：CS 段寄存器指向名为 code 的段（仅给汇编器看）

code segment            ; 定义一个段，段名为 code

    ; 在 code 段中定义 8 个 word（16 位）数据
    ; 每个 word 占 2 个字节，顺序存放在内存中
    dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h

    mov bx,0            ; BX = 0，作为偏移地址指针，指向第一个 word
    mov ax,0            ; AX = 0，用来存放累加结果
    mov cx,8            ; CX = 8，loop 指令的循环次数（一共 8 个 word）

s:
    add ax,cs:[bx]      ; AX = AX + CS 段中偏移 BX 处的一个 word
                        ; 第一次取 dw 的第 1 个数据，之后依次取下一个

    add bx,2            ; BX += 2
                        ; 因为一个 word 占 2 字节，指向下一个数据

    loop s              ; CX = CX - 1
                        ; 如果 CX != 0，跳转回标号 s 继续循环

    mov ax,4c00h        ; DOS 功能号：4Ch（结束程序），返回码 00
    int 21h             ; 调用 DOS 中断，正常退出程序

code ends               ; code 段结束

end                     ; 程序结束
