; =============================
; M I C R O P R O C E S S O R S
; A C T I V I T Y -- 4
; CABUYAO, BART 
; BSCPE 3B
; =============================

IDEAL
MODEL SMALL
STACK 100

MACRO Write char, color, count
    mov ah, 09h
    mov al, char
    mov bl, color
    mov cx, count
    int 10h
ENDM Write

MACRO SetCursor x, y
    mov ah, 02h
    mov dh, x
    mov dl, y
    int 10h
ENDM SetCursor

CODESEG

Init:
  mov ax, @data
  mov ds, ax

VidInit:
  mov ah, 00h
  mov al, 03h
  int 10h

RedSquare:
  SetCursor 1, 2
  Write 176, 12, 2
  SetCursor 1, 4
  Write 177, 12, 2
  SetCursor 1, 6
  Write 178, 12, 2
  SetCursor 1, 8
  Write 219, 12, 2
  
  SetCursor 2, 2
  Write 176, 12, 2
  SetCursor 2, 4
  Write 177, 12, 2
  SetCursor 2, 6
  Write 178, 12, 2
  SetCursor 2, 8
  Write 219, 12, 2
  
  SetCursor 3, 2
  Write 176, 12, 2
  SetCursor 3, 4
  Write 177, 12, 2
  SetCursor 3, 6
  Write 178, 12, 2
  SetCursor 3, 8
  Write 219, 12, 2
  
  SetCursor 4, 2
  Write 176, 12, 2
  SetCursor 4, 4
  Write 177, 12, 2
  SetCursor 4, 6
  Write 178, 12, 2
  SetCursor 4, 8
  Write 219, 12, 2

YellowTriangle:
  SetCursor 1, 15
  Write 176, 14, 1 
  SetCursor 2, 14
  Write 176, 14, 1
  SetCursor 3, 13
  Write 176, 14, 1
  SetCursor 4, 12
  Write 176, 14, 1
  
  SetCursor 2, 15
  Write 177, 14, 1
  SetCursor 3, 14
  Write 177, 14, 1
  SetCursor 4, 13
  Write 177, 14, 1
  
  SetCursor 2,16
  Write 178, 14, 1
  SetCursor 3, 15
  Write 178, 14, 2
  SetCursor 4, 14
  Write 178, 14, 2
  
  SetCursor 3,17
  Write 219, 14, 1
  SetCursor 4,16
  Write 219, 14, 3
  
BlueCircle:
  SetCursor 1, 22
  Write 176, 9, 1
  SetCursor 2, 21
  Write 176, 9, 1
  SetCursor 3, 21
  Write 176, 9, 1
  SetCursor 4, 22
  Write 176, 9, 1
  
  SetCursor 1, 23
  Write 177, 9, 1
  SetCursor 2, 22
  Write 177, 9, 1
  SetCursor 3, 22
  Write 177, 9, 1
  SetCursor 4, 23
  Write 177, 9, 1
  
  SetCursor 1, 24
  Write 178, 9, 2
  SetCursor 2, 23
  Write 178, 9, 2
  SetCursor 3, 23
  Write 178,9, 2
  SetCursor 4, 24
  Write 178,9, 2
  
  SetCursor 1, 26
  Write 219, 9, 1
  SetCursor 2, 25
  Write 219, 9, 3
  SetCursor 3, 25
  Write 219, 9, 3
  SetCursor 4, 26
  Write 219, 9, 1

  SetCursor 6, 0

Exit:
  mov ah, 4ch
  int 21h

end Init


