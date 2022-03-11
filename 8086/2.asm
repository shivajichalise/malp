printSpace macro
    mov dl, ' '
    mov ah, 2
    int 21h
endm

disp macro msg
    mov cx, 12h             
    lea di, msg

    again: mov dl, [di]
           mov ah, 02h
           int 21h
           
           printSpace
           
           inc di
           loop again
endm

.model small
.stack 64h
.data
        msg db "POKHARA UNIVERSITY$"
.code
        main proc
                mov ax,@data
                mov ds,ax
                disp msg
        mov ax, 4c00h      
        int 21h
        main endp

end main
