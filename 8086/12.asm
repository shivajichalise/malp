.model small
.stack 64h
.data
  str1 db "Positive$"
  str2 db "Negative$"
  num1 db -1
  num2 db 5
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov ax, 0000h
    mov al, num2
    clc

    rcl al, 01
    jc nega

    lea dx, str1
    jmp print

    nega: lea dx, str2
    print: mov ah, 09h
    int 21h

    mov ax, 4c00h
    int 21h

  main endp
end main
