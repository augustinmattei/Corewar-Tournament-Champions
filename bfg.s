.name "BFG"
.comment "A big fucking gun indeed"

    sti r1, %:survive, %1
    fork    %:survive

load:  ld %12, r14
    ld %300, r6
    fork %:spawner
    ld %0, r15
    zjmp %:countermeasures

countermeasures:    ldi %:survive, %1, r2
    and r1, r2, r3
    zjmp %:defend
    ld %0, r15
    zjmp %:countermeasures

defend: sti r1, %:survive, %1
    ld %0, r15
    zjmp %:countermeasures

spawner:   ld %100, r7
    fork %:survive

army: fork %:shoot
    add r7, r7, r7
    ld %0, r15
    zjmp %:army

shoot:  sti r14, r6, r6
    add r6, r7, r6
    ld %0, r15
    zjmp %:shoot

survive:    live %666
    ld %0, r15
    zjmp    %:survive

