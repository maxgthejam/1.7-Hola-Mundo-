@author: maxgthejam
@date: 5 Abril 2022

@data section
.data

var1:   .byte 0b00110010
        .align

var2:   .byte 0b11000000
        .align
.text
.global main

@code section

main:   mov r2, # 0b11110000
        mov r3, # 0b10101010
        and r0, r2, r3
        orr r1, r2, r3
        mvn r4, r0
        mov r0, # 0x80000000
        tst r0, # 0x80000000
        tst r0, # 0x40000000
        bx lr

@r0 and
@r1 or
@var1 hexa: f0
@var2 hexa: aa
@var1 and var2
@binario: 1111 1010
@hexadecimal: fa
@var1 or var2
@binario: 1010 0000
@hexa: a0

@final

