; =============================
; M I C R O P R O C E S S O R S
; F I N A L ~ P R O J E C T
; CABUYAO, BART 
; BSCPE 3B
; =============================

.386
IDEAL
MODEL SMALL
STACK 100

DATASEG
    LSHADE  equ 176
    MSHADE  equ 177
    DSHADE  equ 178
    FBLOCK  equ 219
    BLACK   equ 0
    BLUE    equ 1
    GREEN   equ 2
    CYAN    equ 3
    RED     equ 4
    MGNTA   equ 5
    BROWN   equ 6
    LGRAY   equ 7
    DGRAY   equ 8
    LBLUE   equ 9
    LGREEN  equ 10
    LCYAN   equ 11
    LRED    equ 12
    LMGNTA  equ 13
    YELLOW  equ 14
    WHITE   equ 15
    
    drawCounterX db ?
    drawCounterY db ?

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

MACRO Delay ms_high, ms_low
  mov al, 0
  mov cx, ms_high      
  mov dx, ms_low
  mov ah, 86h    
  int 15h
ENDM

CODESEG

Init:
  mov ax, @data
  mov ds, ax

VidInit:
  mov ah, 00h
  mov al, 03h
  int 10h

mov [drawCounterY], 2

Flag1:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 8
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 8
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 8
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag1 
  Delay 1, 86A0h
  ;Delay 1, 86A0h                   ;For the original Delay speed
  mov [drawCounterY], 2

Flag2:
  SetCursor [drawCounterY], 2
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag2
  Delay 1, 86A0h 
  mov [drawCounterY], 2

Flag3:
  SetCursor [drawCounterY], 2
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 3
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag3
  Delay 1, 86A0h 
  mov [drawCounterY], 2
  
  
Flag4:
  SetCursor [drawCounterY], 2
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 3
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 4
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag4
  Delay 1, 86A0h 
  mov [drawCounterY], 2
  
Flag5:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 1
  SetCursor [drawCounterY], 3
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 4
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 5
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag5
  Delay 1, 86A0h 
  mov [drawCounterY], 2
  
Flag6:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 2
  SetCursor [drawCounterY], 4
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 5
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 6
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag6
  Delay 1, 86A0h 
  mov [drawCounterY], 2

Flag7:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 3
  SetCursor [drawCounterY], 5
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 6
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 7
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag7
  Delay 1, 86A0h 
  mov [drawCounterY], 2
  
Flag8:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 4
  SetCursor [drawCounterY], 6
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 7
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 8
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag8
  Delay 1, 86A0h 
  mov [drawCounterY], 2  
  
Flag9:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 5
  SetCursor [drawCounterY], 7
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 8
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 9
  Write LSHADE, BLUE, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag9
  Delay 1, 86A0h 
  mov [drawCounterY], 2

Flag10:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 6
  SetCursor [drawCounterY], 8
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 9
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 10
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag10
  Delay 1, 86A0h 
  mov [drawCounterY], 2  
  
Flag11:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 7
  SetCursor [drawCounterY], 9
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 10
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 11
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 3
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag11
  Delay 1, 86A0h 
  mov [drawCounterY], 2  
  
Flag12:
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 8
  SetCursor [drawCounterY], 10
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 11
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 12
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 3
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 4
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag12
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
 
Flag13:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 1
  SetCursor [drawCounterY], 11
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 12
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 13
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 1
  SetCursor [drawCounterY], 3
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 4
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 5
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag13
  Delay 1, 86A0h 
  mov [drawCounterY], 2  
 
Flag14:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 2
  SetCursor [drawCounterY], 12
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 13
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 14
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 2
  SetCursor [drawCounterY], 4
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 5
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 6
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag14
  Delay 1, 86A0h 
  mov [drawCounterY], 2  
  
Flag15:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 3
  SetCursor [drawCounterY], 13
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 14
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 15
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 3
  SetCursor [drawCounterY], 5
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 6
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 7
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag15
  Delay 1, 86A0h 
  mov [drawCounterY], 2
  
Flag16:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 4
  SetCursor [drawCounterY], 14
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 15
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 16
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 4
  SetCursor [drawCounterY], 6
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 7
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 8
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag16
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag17:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 5
  SetCursor [drawCounterY], 15
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 16
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 17
  Write LSHADE, YELLOW, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 5
  SetCursor [drawCounterY], 7
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 8
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 9
  Write LSHADE, BLUE, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag17
  Delay 1, 86A0h 
  mov [drawCounterY], 2 

Flag18:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 6
  SetCursor [drawCounterY], 16
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 17
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 18
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 6
  SetCursor [drawCounterY], 8
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 9
  Write MSHADE, BLUE, 1
  SetCursor [drawCounterY], 10
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag18
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag19:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 7
  SetCursor [drawCounterY], 17
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 18
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 19
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 7
  SetCursor [drawCounterY], 9
  Write DSHADE, BLUE, 1
  SetCursor [drawCounterY], 10
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 11
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag19
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag20:
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 8
  SetCursor [drawCounterY], 18
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 19
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 20
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 2
  Write FBLOCK, BLUE, 8
  SetCursor [drawCounterY], 10
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 11
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 12
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag20
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag21:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 1
  SetCursor [drawCounterY], 19
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 20
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 21
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 1
  SetCursor [drawCounterY], 11
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 12
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 13
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag21
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag22:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 2
  SetCursor [drawCounterY], 20
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 21
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 22
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 2
  SetCursor [drawCounterY], 12
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 13
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 14
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag22
  Delay 1, 86A0h 
  mov [drawCounterY], 2 

Flag23:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 3
  SetCursor [drawCounterY], 21
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 22
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 23
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 3
  SetCursor [drawCounterY], 13
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 14
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 15
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag23
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag24:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 4
  SetCursor [drawCounterY], 22
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 23
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 24
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 4
  SetCursor [drawCounterY], 14
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 15
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 16
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag24
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag25:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 5
  SetCursor [drawCounterY], 23
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 24
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 25
  Write LSHADE, RED, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 5
  SetCursor [drawCounterY], 15
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 16
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 17
  Write LSHADE, YELLOW, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag25
  Delay 1, 86A0h 
  mov [drawCounterY], 2
 
Flag26:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 6
  SetCursor [drawCounterY], 24
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 25
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 26
  Write LSHADE, BLACK, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 6
  SetCursor [drawCounterY], 16
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 17
  Write MSHADE, YELLOW, 1
  SetCursor [drawCounterY], 18
  Write LSHADE, RED, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag26
  Delay 1, 86A0h 
  mov [drawCounterY], 2

Flag27:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 7
  SetCursor [drawCounterY], 25
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 26
  Write MSHADE, BLACK, 1
  SetCursor [drawCounterY], 27
  Write LSHADE, BLACK, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 7
  SetCursor [drawCounterY], 17
  Write DSHADE, YELLOW, 1
  SetCursor [drawCounterY], 18
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 19
  Write LSHADE, RED, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag27
  Delay 1, 86A0h 
  mov [drawCounterY], 2

Flag28:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 8
  SetCursor [drawCounterY], 26
  Write DSHADE, BLACK, 1
  SetCursor [drawCounterY], 27
  Write MSHADE, BLACK, 1
  SetCursor [drawCounterY], 28
  Write LSHADE, BLACK, 1
  
  SetCursor [drawCounterY], 10
  Write FBLOCK, YELLOW, 8
  SetCursor [drawCounterY], 18
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 19
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 20
  Write LSHADE, RED, 1
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag28
  Delay 1, 86A0h 
  mov [drawCounterY], 2
  
Flag29:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 1
  SetCursor [drawCounterY], 19
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 20
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 21
  Write LSHADE, RED, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag29
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag30:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 2
  SetCursor [drawCounterY], 20
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 21
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 22
  Write LSHADE, RED, 1
    
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag30
  Delay 1, 86A0h 
  mov [drawCounterY], 2 

Flag31:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 3
  SetCursor [drawCounterY], 21
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 22
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 23
  Write LSHADE, RED, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag31
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag32:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 4
  SetCursor [drawCounterY], 22
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 23
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 24
  Write LSHADE, RED, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag32
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
  
Flag33:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 4
  SetCursor [drawCounterY], 22
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 23
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 24
  Write LSHADE, RED, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag33
  Delay 1, 86A0h 
  mov [drawCounterY], 2 

Flag34:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 6
  SetCursor [drawCounterY], 24
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 25
  Write MSHADE, RED, 1
  SetCursor [drawCounterY], 26
  Write LSHADE, BLACK, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag34
  Delay 1, 86A0h 
  mov [drawCounterY], 2
  
Flag35:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 7
  SetCursor [drawCounterY], 25
  Write DSHADE, RED, 1
  SetCursor [drawCounterY], 26
  Write MSHADE, BLACK, 1
  SetCursor [drawCounterY], 27
  Write LSHADE, BLACK, 1
  
  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag35
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
 
Flag36:
  SetCursor [drawCounterY], 18
  Write FBLOCK, RED, 8
  SetCursor [drawCounterY], 26
  Write DSHADE, BLACK, 1
  SetCursor [drawCounterY], 27
  Write MSHADE, BLACK, 1
  SetCursor [drawCounterY], 28
  Write LSHADE, BLACK, 1

  inc [drawCounterY]
  cmp [drawCounterY], 8
  jne Flag36
  Delay 1, 86A0h 
  mov [drawCounterY], 2 
 
jmp Flag1

end Init

