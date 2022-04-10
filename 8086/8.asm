.model small
.stack 64h
.data
  num dw 90h
  res dw ?
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov bx, 0ffffh
    mov cx, 0000h

    mov ax, num

    again: add bx, 02h
      inc cx
      sub ax, bx
      jnz again
    
    mov bx, cx
    mov dl, bh
    sub dl, 30h
    mov ah, 02h
    int 21h
    
    mov dl, bl
    sub dl, 30h
    mov ah, 02h
    int 21h

    mov ax, 4c00h
    int 21h
  main endp
end main
