.name "Praetor"
.comment "Immortal Armor"

    sti r1, %:defenses, %1
    sti r1, %:maykrtek, %1
    sti r1, %:burn, %6
    fork %:defenses
    fork %:ardent

    ld %1, r2
    ld %5, r3
    ld %36, r4

build:  sti r1, %:wall, r2
        sub r4, r2, r5
        zjmp %:maykrtek
        add r2, r3, r2
        ld %0, r16
        zjmp %:build

maykrtek:   live %0
    ld %1, r2
    ld %5, r3
    ld %31, r4
    fork %:wall
    ld %0, r16
    zjmp %:build


wall: live %0
    live %0
    live %0
    live %0
    live %0
    live %0
    live %0
    live %0
defenses:   live %0
    ld %0, r16
    zjmp %:wall

ardent: ldi %:burn, %1, r2
        ld %9, r3
        ld %5, r4
        ld %5400, r6
burn:   st r3, 200
        live %666
        add r2, r4, r2
        add r4, r8, r8
        sti r2, %:burn, %1
        sub r6, r8, r9
        zjmp %:wall
        ld %0, r7
        zjmp %:burn
