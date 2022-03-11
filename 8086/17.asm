.model small
.stack 64h
.data
  str1 db "Table1: $"
  str2 db "Table2: $"
  newline db 10,13, "$"
  table1 db 01h,02h,03h,04h,05h
  table2 db 5 ('$')
  count = ($-table1)
.code
  main proc
    mov ax, @data
    mov ds, ax

    lea si, table1
    lea di, table2
    mov cx, count

    loop1: mov bx, [si]
      push bx
      inc si
      loop loop1

    mov cx, count
    loop2: pop bx
      mov [di], bx
      inc di
      loop loop2

    lea dx, str1
    mov ah, 09h
    int 21h

    lea si, table1
    mov cx, count
    foreach: mov dl, [si]
      mov ah, 02h
      int 21h
      inc si
      loop foreach
    

    lea dx, newline
    mov ah, 09h
    int 21h
    
    lea dx, str2
    mov ah, 09h
    int 21h

    lea si, table2
    mov cx, count
    for: mov dl, [si]
      mov ah, 02h
      int 21h
      inc si
      loop for
    
    mov ax, 4c00h
    int 21h
  main endp
end main
