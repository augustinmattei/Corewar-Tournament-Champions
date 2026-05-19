.name "Praetor"
.comment "Immortal Armor"

    sti r1, %:defenses, %1
    sti r1, %:maykrtek, %1
    fork %:defenses
    fork %:iwillnotdie

    ld %1, r2
    ld %5, r3
    ld %31, r4

build:  sti r1, %:wall, r2
        sub r4, r2, r5
        zjmp %:wall
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
    ld %0, r16
    zjmp %:wall

defenses:   live %0
iwillnotdie:    fork %:defenses
    ld %0, r16
    zjmp %:defenses
