assume cs:abc          ; 告诉汇编器：CS 段寄存器对应 abc 段

abc segment            ; 定义代码段 abc
    mov ax, 2          ; AX = 2
    add ax, ax         ; AX = AX * 2 → 4
    add ax, ax         ; AX = AX * 2 → 8

    mov ax, 4c00H      ; DOS 功能号 4Ch：正常退出程序
    int 21H            ; 调用 DOS 中断
abc ends               ; 代码段结束

end                    ; 程序结束（入口在段首）
