.model
.stack 100h
.data
  one db 1
  res dw ?
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov ah, 01h
    int 21h
    sub al, 30h
    sub ah, ah
    
    mov cx, 0
    mov cl, al
    sub ch, ch

    mov bx, 0000h
    mov ax, 0000h

    for: mov al, one
      mul al
      add bx, ax
      inc one
      loop for

    add bx, 3030h
    mov res, bx
    
    mov dl, bh
    mov ah, 02h
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h
    
    mov ax, 4c00h
    int 21h
  main endp
end main
