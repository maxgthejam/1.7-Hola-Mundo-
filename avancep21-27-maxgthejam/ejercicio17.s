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

main:   mov r0, # 0x80000000
        tst r0, # 0x80000000
        tst r0, # 0x40000000
        bx lr

@r0 1010
@r1 0100

@tst r0, #0x80000000 , z=0
@tst r0, #0x40000000 , z=1

@final

