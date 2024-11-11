; =============================
; M I C R O P R O C E S S O R S
; A C T I V I T Y -- 2 FINALS
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
    
    drawCounter db ?

MACRO Write char, color, count
    mov ah, 09h
    mov al, char
    ;mov bh, screenpage
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

Land:
  SetCursor 23, 0
  Write FBLOCK, GREEN, 70

Roof:
  SetCursor 2, 22
  Write FBLOCK, BROWN, 1
  SetCursor 2, 23
  Write DSHADE, BROWN, 6
  SetCursor 2, 29
  Write MSHADE, BROWN, 12
  SetCursor 2, 41
  Write LSHADE, BROWN, 7
  
  SetCursor 3, 21
  Write FBLOCK, BROWN, 1
  SetCursor 3, 22
  Write DSHADE, BROWN, 1
  SetCursor 3, 23
  Write FBLOCK, BROWN, 1
  SetCursor 3, 24
  Write DSHADE, BROWN, 6
  SetCursor 3, 30
  Write MSHADE, BROWN, 12
  SetCursor 3, 42
  Write LSHADE, BROWN, 7
  
  SetCursor 4, 20
  Write FBLOCK, BROWN, 1
  SetCursor 4, 21
  Write DSHADE, BROWN, 3
  SetCursor 4, 24
  Write FBLOCK, BROWN, 1
  SetCursor 4, 25
  Write DSHADE, BROWN, 7
  SetCursor 4, 31
  Write MSHADE, BROWN, 12
  SetCursor 4, 43
  Write LSHADE, BROWN, 7
  
  SetCursor 5, 19
  Write FBLOCK, BROWN, 1
  SetCursor 5, 20
  Write DSHADE, BROWN, 5
  SetCursor 5, 25
  Write FBLOCK, BROWN, 1
  SetCursor 5, 26
  Write DSHADE, BROWN, 7
  SetCursor 5, 32
  Write MSHADE, BROWN, 12
  SetCursor 5, 44
  Write LSHADE, BROWN, 7
  
  SetCursor 6, 18
  Write FBLOCK, BROWN, 1
  SetCursor 6, 19
  Write DSHADE, BROWN, 7
  SetCursor 6, 26
  Write FBLOCK, BROWN, 1
  SetCursor 6, 27
  Write DSHADE, BROWN, 7
  SetCursor 6, 33
  Write MSHADE, BROWN, 12
  SetCursor 6, 45
  Write LSHADE, BROWN, 7
  
  SetCursor 7, 17
  Write FBLOCK, BROWN, 1
  SetCursor 7, 18
  Write DSHADE, BROWN, 9
  SetCursor 7, 27
  Write FBLOCK, BROWN, 1
  SetCursor 7, 28
  Write DSHADE, BROWN, 7
  SetCursor 7, 34
  Write MSHADE, BROWN, 12
  SetCursor 7, 46
  Write LSHADE, BROWN, 7
  

mov [drawCounter], 7

  
Wall:
  inc [drawCounter]
  SetCursor [drawCounter], 16
  Write FBLOCK, BROWN, 1
  SetCursor [drawCounter], 17
  Write DSHADE, BROWN, 11
  SetCursor [drawCounter], 28
  Write FBLOCK, BROWN, 1
  SetCursor [drawCounter], 29
  Write DSHADE, BROWN, 6
  SetCursor [drawCounter], 35
  Write MSHADE, BROWN, 13
  SetCursor [drawCounter], 48
  Write LSHADE, BROWN, 6
  cmp [drawCounter], 17
  jne Wall
  
mov [drawCounter], 17

SupportBeam:
  inc [drawCounter]
  SetCursor [drawCounter], 16
  Write FBLOCK, BROWN, 1
  SetCursor [drawCounter], 17
  Write DSHADE, BROWN, 1
  SetCursor [drawCounter], 27
  Write DSHADE, BROWN, 1
  SetCursor [drawCounter], 28
  Write MSHADE, BROWN, 1
  SetCursor [drawCounter], 39
  Write MSHADE, BROWN, 1
  SetCursor [drawCounter], 40
  Write LSHADE, BROWN, 1
  SetCursor [drawCounter], 52
  Write MSHADE, BROWN, 1
  SetCursor [drawCounter], 53
  Write LSHADE, BROWN, 1
  cmp [drawCounter], 22
  jne SupportBeam

mov [drawCounter], 10

Door:
  inc [drawCounter]
  SetCursor [drawCounter], 31
  Write FBLOCK, BLACK, 6
  cmp [drawCounter], 16
  jne Door
  
mov [drawCounter], 10
  
Window:
  inc [drawCounter]
  SetCursor [drawCounter], 41
  Write DSHADE, BLACK, 7
  cmp [drawCounter], 13
  jne Window

mov [drawCounter], 17
  
LadderBase:
  inc [drawCounter]
  SetCursor [drawCounter], 31
  Write FBLOCK, BROWN, 1
  SetCursor [drawCounter], 36
  Write MSHADE, BROWN, 1
  cmp [drawCounter], 22
  jne LadderBase
  
LadderSteps:
  SetCursor 19, 32
  Write FBLOCK, BROWN, 1
  SetCursor 19, 33
  Write DSHADE, BROWN, 2
  SetCursor 19, 35
  Write MSHADE, BROWN, 2

  SetCursor 21, 32
  Write FBLOCK, BROWN, 1
  SetCursor 21, 33
  Write DSHADE, BROWN, 2
  SetCursor 21, 35
  Write MSHADE, BROWN, 2 
  
Exit:
  SetCursor 23,0
  mov ah, 4ch
  int 21h

end Init


