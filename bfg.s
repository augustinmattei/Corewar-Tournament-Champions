.name "BFG"
.comment "A big fucking gun indeed"

    sti r1, %:survive, %1
    sti r1, %:load_ammo, %1
    sti r1, %:unmaykr, %1
    sti r1, %:newmag, %1
    sti r1, %:reload, %1
    fork    %:survive

load_ammo:  live %666
            ldi %252645135, %1, r15
            ldi %:canon1, %1, r2
            ldi %:canon2, %1, r3
            ldi %:canon3, %1, r4
            ldi %:canon4, %1, r5
            ldi %:canon5, %1, r6
            ldi %:canon6, %1, r7
            ldi %:canon7, %1, r8
            ldi %:canon8, %1, r9
            ld %200, r11
            ld %4000, r13
            ld %0, r16
            zjmp %:unmaykr

survive:    live %666
    fork %:vegacore
    ld %0, r15
    zjmp    %:survive

vegacore:    sti r1, %:survive, %1
            sti r1, %:uachater, %1
uachater:    live %666
            ldi %:survive, %1, r10
            xor r1, r10, r10
            zjmp %:uachater
            ld %0, r16
            zjmp %:vegacore

newmag: live %666
        add r11, r12, r12
        sub r13, r12, r14
        zjmp %:uachater
        add r11, r2, r2
        add r11, r3, r3
        add r11, r4, r4
        add r11, r5, r5
        add r11, r6, r6
        add r11, r7, r7
        add r11, r8, r8
        add r11, r9, r9

reload: live %666
        sti r2, %:canon1, %1
        sti r3, %:canon2, %1
        sti r4, %:canon3, %1
        sti r5, %:canon4, %1
        sti r6, %:canon5, %1
        sti r7, %:canon6, %1
        sti r8, %:canon7, %1
        sti r9, %:canon8, %1

unmaykr: live %666
canon1: st r15, 150
canon2: st r15, 158
canon3: st r15, 164
canon4: st r15, 172
canon5: st r15, 179
canon6: st r15, 187
canon7: st r15, 185
canon8: st r15, 191
        ld %0, r16
        zjmp %:newmag
