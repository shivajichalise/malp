.model small
.stack 64h
.data
  num db 05h
  fact dw ?
  iterator db 1
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov ax, 0000h
    mov al, iterator

    mov cx, 0000h
    mov cl, num
    for: mul iterator
      inc iterator
      loop for
    
    mov dl, al
    mov ah, 02h
    int 21h

    mov ax, 4c00h
    int 21h
  main endp
end main
