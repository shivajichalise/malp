.model small
.stack 64h
.data
  str1 db 'GOOD'
  str2 db 'GOOD'
  message1 db "STRING ARE SAME$"
  message2 db "STRING ARE NOT SAME$"
.code
  main proc
    mov ax, @data
    mov ds, ax
    
    mov es, ax
    
    mov cx, 04

    lea si, str1
    lea di, str2

    rep cmpsb

    jnz loadnotsame

    lea dx, message1

    jmp printmsg

    loadnotsame: lea dx, message2
    printmsg: mov ah, 09h

    int 21h

    mov ax, 4c00h
    int 21h
  main endp
end main
