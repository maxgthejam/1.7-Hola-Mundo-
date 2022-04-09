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

main:   ldr     r1, = var1
        ldrb    r1, [r1]
        ldr     r2, = var2
        ldrb    r2, [r2]
        add     r0, r1, r2
        bx      lr

@cpsr = 0x80000010 tomamos el 8 y sus 3 numeros consiguientes
@ 8 en binario es : 1000
@ por lo tanto, N=1, Z=0, C=0, V=0

