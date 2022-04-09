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
@ r0, binario 1010 0000
@hexadecimal: a0
@ r0, binario: 0101 1111
@hexa: 5f
@final
