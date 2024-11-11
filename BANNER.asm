; =============================
; M I C R O P R O C E S S O R S
; A C T I V I T Y -- 1 FINALS
; CABUYAO, BART 
; BSCPE 3B
; =============================

IDEAL
MODEL SMALL
STACK 100

DATASEG
    LSHADE  equ 176
    MSHADE  equ 177
    DSHADE  equ 178
    FBLOCK  equ 219
    TLBRDR  equ 201
    TRBRDR  equ 187
    VTBRDR  equ 186
    HZBRDR  equ 205
    LLBRDR  equ 200
    LRBRDR  equ 188

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
  
Borders:
  SetCursor 1, 21
  Write TLBRDR, 15, 1
  SetCursor 1, 22
  Write HZBRDR, 15, 15
  SetCursor 1, 37
  Write TRBRDR, 15, 1
  SetCursor 2, 21
  Write VTBRDR, 15, 1
  SetCursor 2, 37
  Write VTBRDR, 15, 1
  SetCursor 3, 21
  Write VTBRDR, 15, 1
  SetCursor 3, 37
  Write VTBRDR, 15, 1
  SetCursor 4, 21
  Write VTBRDR, 15, 1
  SetCursor 4, 37
  Write VTBRDR, 15, 1
  SetCursor 5, 21
  Write VTBRDR, 15, 1
  SetCursor 5, 37
  Write VTBRDR, 15, 1 
  SetCursor 6, 21
  Write VTBRDR, 15, 1
  SetCursor 6, 37
  Write VTBRDR, 15, 1
  SetCursor 7, 21
  Write VTBRDR, 15, 1
  SetCursor 7, 37
  Write VTBRDR, 15, 1
  SetCursor 8, 21
  Write VTBRDR, 15, 1
  SetCursor 8, 37
  Write VTBRDR, 15, 1
  SetCursor 9, 21
  Write LLBRDR, 15, 1
  SetCursor 9, 22
  Write HZBRDR, 15, 6
  SetCursor 9, 31
  Write HZBRDR, 15, 7
  SetCursor 9, 37
  Write LRBRDR, 15, 1

WelcomeText:
  SetCursor 2, 23
  Write 'W', 10, 1
  SetCursor 2, 25
  Write 'E', 10, 1
  SetCursor 2, 27
  Write 'L', 10, 1
  SetCursor 2, 29
  Write 'C', 10, 1
  SetCursor 2, 31
  Write 'O', 10, 1
  SetCursor 2, 33
  Write 'M', 10, 1
  SetCursor 2, 35
  Write 'E', 10, 1
  
  SetCursor 4,27
  Write 196, 14, 1
  SetCursor 4,29
  Write 'T', 14, 1
  SetCursor 4,30
  Write 'O', 14, 1
  SetCursor 4,32
  Write 196, 14, 1
  
  SetCursor 6,24
  Write 'S', 12, 1
  SetCursor 6, 26
  Write 'I', 12, 1
  SetCursor 6, 28
  Write 'L', 12, 1
  SetCursor 6, 30
  Write 'E', 12, 1
  SetCursor 6, 32
  Write 'N', 12, 1
  SetCursor 6, 34
  Write 'T', 12, 1
  
  SetCursor 7, 26
  Write 'H', 12, 1
  SetCursor 7, 28
  Write 'I', 12, 1
  SetCursor 7, 30
  Write 'L', 12, 1
  SetCursor 7, 32
  Write 'L', 12, 1
  
Pole:
  SetCursor 9,28
  Write LSHADE, 8, 1
  SetCursor 9,29
  Write MSHADE, 7, 1
  SetCursor 9,30
  Write DSHADE, 7, 1
  SetCursor 10,28
  Write LSHADE, 8, 1
  SetCursor 10,29
  Write MSHADE, 7, 1
  SetCursor 10,30
  Write DSHADE, 7, 1
  SetCursor 11,28
  Write LSHADE, 8, 1
  SetCursor 11,29
  Write MSHADE, 7, 1
  SetCursor 11,30
  Write DSHADE, 7, 1
  SetCursor 12,28
  Write LSHADE, 8, 1
  SetCursor 12,29
  Write MSHADE, 7, 1
  SetCursor 12,30
  Write DSHADE, 7, 1
  SetCursor 13,28
  Write LSHADE, 8, 1
  SetCursor 13,29
  Write MSHADE, 7, 1
  SetCursor 13,30
  Write DSHADE, 7, 1
  SetCursor 14,28
  Write LSHADE, 8, 1
  SetCursor 14,29
  Write MSHADE, 7, 1
  SetCursor 14,30
  Write DSHADE, 7, 1

Copyright:
  SetCursor 16, 24
  Write '(', 9, 1
  SetCursor 16, 25
  Write 'c', 9, 1
  SetCursor 16, 26
  Write ')', 9, 1
  
  SetCursor 16, 28
  Write 'M', 12, 2
  SetCursor 16, 30
  Write 'X', 12, 2
  SetCursor 16, 32
  Write 'I', 12, 3
  
Exit:
  SetCursor 19,1
  mov ah, 4ch
  int 21h

end Init


