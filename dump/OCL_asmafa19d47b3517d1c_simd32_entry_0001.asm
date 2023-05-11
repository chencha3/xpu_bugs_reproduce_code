//.kernel _ZTSZZ4mainENKUlRT_E_clIN4sycl3_V17handlerEEEDaS0_EUlNS4_7nd_itemILi3EEEE_
//.platform TGLLP
//.thread_config numGRF=128, numAcc=2, numSWSB=16
//.options_string "-emitCrossThreadOffR0Reloc "
//.full_options "-emitLocation -enableStructurizer -noScalarJmp -enableCoalesceScalarMoves -enablePreemption -noLoadPayload -hasRNEandDenorm -noStitchExternFunc -emitCrossThreadOffR0Reloc -boundsChecking -presched-ctrl 54 -presched-rp 100 -nodpsendreorder -SBIDDepLoc -output -binary -dumpcommonisa -dumpvisa -printHexFloatInAsm -noverifyCISA -waClearHDCWrite -noMaskWA -insertRSDummyMov "
//.instCount 38
//.RA type	TRIVIAL_RA

//.declare BuiltInR0 (0)  rf=r size=32 type=ud align=16 words (r0.0)
//.declare  (1)  rf=r size=32 type=ud align=16 words (r3.0)
//.declare BuiltinA0 (2)  rf=a size=4 type=ud align=1 words (a0.0)
//.declare BuiltinA0Dot2 (3)  rf=a size=4 type=ud align=1 words (a0.2)
//.declare %null (9)  rf=r size=4 type=ud align=2 words
//.declare %local_id_x (12)  rf=r size=4 type=ud align=2 words (r1.2)
//.declare %local_id_y (13)  rf=r size=4 type=ud align=2 words (r1.3)
//.declare %local_size_x (14)  rf=r size=4 type=ud align=2 words (r0.6)
//.declare %local_size_y (15)  rf=r size=4 type=ud align=2 words (r0.7)
//.declare %group_id_x (16)  rf=r size=4 type=ud align=2 words (r0.1)
//.declare %group_id_y (17)  rf=r size=4 type=ud align=2 words (r0.6)
//.declare %group_id_z (18)  rf=r size=4 type=ud align=2 words (r0.7)
//.declare %group_count_x (19)  rf=r size=4 type=ud align=2 words (r1.0)
//.declare %group_count_y (20)  rf=r size=4 type=ud align=2 words (r1.1)
//.declare %tsc (21)  rf=r size=20 type=ud align=2 words
//.declare %arg (22)  rf=r size=0 type=ud align=16 words (r26.0)
//.declare %retval (23)  rf=r size=0 type=ud align=16 words (r26.0) Output
//.declare %sp (24)  rf=r size=8 type=uq align=4 words (r125.3)
//.declare %fp (25)  rf=r size=8 type=uq align=4 words (r125.2)
//.declare %sr0 (26)  rf=r size=16 type=ud align=2 words
//.declare %cr0 (27)  rf=r size=12 type=ud align=2 words
//.declare %ce0 (28)  rf=r size=4 type=ud align=2 words
//.declare %dbg0 (29)  rf=r size=8 type=ud align=2 words
//.declare implBufPtr (31)  rf=r size=8 type=uq align=4 words (r126.0)
//.declare localIdBufPtr (32)  rf=r size=8 type=uq align=4 words (r126.3)
//.declare %msg0 (33)  rf=r size=12 type=ud align=2 words
//.declare V0033 (41)  rf=r size=32 type=d alias=+0 align=16 words (r3.0)
//.declare V0035 (43)  rf=r size=32 type=d alias=+0 align=16 words (r3.0)
//.declare V0036 (44)  rf=r size=32 type=d align=16 words (r7.0)
//.declare V0037 (45)  rf=r size=32 type=w align=16 words (r1.0)
//.declare V0038 (46)  rf=r size=32 type=w align=16 words (r2.0)
//.declare V0039 (47)  rf=r size=32 type=w align=16 words (r3.0)
//.declare V0040 (48)  rf=r size=32 type=w align=16 words (r4.0)
//.declare V0041 (49)  rf=r size=32 type=w align=16 words (r5.0)
//.declare V0042 (50)  rf=r size=32 type=w align=16 words (r6.0)
//.declare V0045 (53)  rf=r size=64 type=d align=16 words (r4.0)
//.declare V0046 (54)  rf=r size=64 type=d align=16 words (r6.0)
//.declare V0047 (55)  rf=r size=32 type=uw alias=V0037+0 align=16 words (r1.0)
//.declare V0048 (56)  rf=r size=32 type=uw alias=V0038+0 align=16 words (r2.0)
//.declare V0049 (57)  rf=r size=64 type=d align=16 words (r8.0)
//.declare V0050 (58)  rf=r size=64 type=d align=16 words (r10.0)
//.declare V0051 (59)  rf=r size=64 type=ud alias=V0049+0 align=16 words (r8.0)
//.declare V0052 (60)  rf=r size=64 type=ud alias=V0050+0 align=16 words (r10.0)
//.declare V0053 (61)  rf=r size=64 type=d align=16 words (r12.0)
//.declare V0054 (62)  rf=r size=64 type=d align=16 words (r14.0)
//.declare V0055 (63)  rf=r size=64 type=d align=16 words (r16.0)
//.declare V0056 (64)  rf=r size=64 type=d align=16 words (r18.0)
//.declare V0057 (65)  rf=r size=64 type=ud alias=V0055+0 align=16 words (r16.0)
//.declare V0058 (66)  rf=r size=64 type=ud alias=V0056+0 align=16 words (r18.0)
//.declare  (67)  rf=r size=32 type=ud align=16 words (r20.0)
//.declare  (68)  rf=r size=32 type=ud align=16 words (r21.0)
//.declare P01 (69)  rf=f32  size=4 type=uw align=2 words (f0.0)
//.declare V0059 (70)  rf=r size=64 type=d align=16 words (r22.0)
//.declare V0060 (71)  rf=r size=64 type=d align=16 words (r24.0)
//.declare V0061 (72)  rf=r size=4 type=ud align=2 words (r8.0)
//.declare V0062 (73)  rf=r size=8 type=uq align=4 words (r8.1)
//.declare V0063 (74)  rf=r size=8 type=uq align=4 words (r8.2)
//.declare  (75)  rf=r size=32 type=ud align=16 words (r127.0)
//.declare  (76)  rf=r size=32 type=ud align=16 words (r26.0)
//.declare  (77)  rf=r size=32 type=ud align=16 words (r27.0)
//.declare  (78)  rf=f16  size=2 type=uw align=1 words (f0.0)
//.declare  (79)  rf=r size=8 type=w align=1 words (r1.0)

// .inputs
// +----------+----------+--------+----------+------------+
// | id       | type     |  bytes | at       | class      |
// +----------+----------+--------+----------+------------+
// | V0037    | :w x 16  |     32 | r1       | general    |
// | V0038    | :w x 16  |     32 | r2       | general    |
// | V0039    | :w x 16  |     32 | r3       | general    |
// | V0040    | :w x 16  |     32 | r4       | general    |
// | V0041    | :w x 16  |     32 | r5       | general    |
// | V0042    | :w x 16  |     32 | r6       | general    |
// | V0036    | :d x 8   |     32 | r7       | general    |
// | V0061    | :ud      |      4 | r8       | general    |
// | V0062    | :uq      |      8 | r8+8     | general    |
// | V0063    | :uq      |      8 | r8+16    | general    |
// +----------+----------+--------+----------+------------+


// B000: Preds:{},  Succs:{B001, B002}
_main:
(W)     mov (8|M0)               r3.0<1>:ud    r0.0<1;1,0>:ud                                        // $1
(W)     or (1|M0)                cr0.0<1>:ud   cr0.0<0;1,0>:ud   0x4C0:uw              {@1}          // $1
        shl (16|M0)              r4.0<1>:d     r1.0<16;16,1>:uw  1:w               {@1}              // $4
        shl (16|M16)             r6.0<1>:d     r2.0<16;16,1>:uw  1:w                                 // $5
        and (16|M0)              r4.0<1>:d     r4.0<8;8,1>:d     510:w               {Compacted,@2}  // $6
        and (16|M16)             r6.0<1>:d     r6.0<8;8,1>:d     510:w               {Compacted,@2}  // $7
        shl (16|M0)              r8.0<1>:d     r4.0<8;8,1>:d     2:w               {Compacted,@2}    // $8
        shl (16|M16)             r10.0<1>:d    r6.0<8;8,1>:d     2:w               {Compacted,@2}    // $9
        send.dc1 (16|M0)         r12      r8      null    0x0            0x04205E00           {@2,$0} // wr:2+0, rd:2; untyped surface read with x // $11
        send.dc1 (16|M16)        r14      r10     null    0x0            0x04205E00           {@1,$1} // wr:2+0, rd:2; untyped surface read with x // $13
        mov (16|M0)              r16.0<1>:d    r1.0<16;16,1>:uw                                      // $14
        mov (16|M16)             r18.0<1>:d    r2.0<16;16,1>:uw                                      // $15
        shl (16|M0)              r16.0<1>:d    r16.0<8;8,1>:d    3:w               {Compacted,@2}    // $16
        shl (16|M16)             r18.0<1>:d    r18.0<8;8,1>:d    3:w               {Compacted,@2}    // $17
        and (16|M0)              r16.0<1>:d    r16.0<8;8,1>:d    2040:w               {Compacted,@2} // $18
        and (16|M16)             r18.0<1>:d    r18.0<8;8,1>:d    2040:w               {Compacted,@2} // $19
        send.dc1 (16|M0)         null     r16     r12     0x80            0x04025EFE           {@2,$0} // wr:2+2, rd:0; untyped surface write with x // $20
        send.dc1 (16|M16)        null     r18     r14     0x80            0x04025EFE           {@1,$1} // wr:2+2, rd:0; untyped surface write with x // $21
(W)     send.dc0 (8|M0)          r20      r3      null    0x0            0x0219E0FE           {$2} // wr:1h+0, rd:1; synchronized SLM fence // $22
(W)     and (8|M0)               r21.0<1>:ud   r3.2<0;1,0>:ud    0x7F000000:ud                       // $23
(W)     mov (8|M0)               null<1>:ud    r20.0<8;8,1>:ud                  {$2.dst}             //  memory fence commit; $23
(W)     send.gtwy (1|M0)         null     r21     null    0x0            0x02000004           {@2,$3} // wr:1+0, rd:0; signal barrier // $23
(W)     sync.bar                             null                                                    // $23
        cmp (16|M0)   (lt)f0.0   null<1>:w     r1.0<16;16,1>:uw  0x40:uw                             // $24
        cmp (16|M16)  (lt)f0.0   null<1>:w     r2.0<16;16,1>:uw  0x40:uw                             // $25
(W)     csel (4|M0)   (eq)f0.0   r1.0<1>:w     r1.0<4;1>:w       r1.0<4;1>:w       r1.0<1>:w         // $26
(f0.0)  if (32|M0)                           _L_k0_0_cf        _L_k0_0_cf                            // $26
// B001: [inDivergent],  Preds:{B000},  Succs:{B002}
_0_005:
        send.dc1 (16|M0)         r22      r16     null    0x0            0x04205EFE           {$4} // wr:2+0, rd:2; untyped surface read with x // $28
        send.dc1 (16|M16)        r24      r18     null    0x0            0x04205EFE           {$5} // wr:2+0, rd:2; untyped surface read with x // $29
        send.dc1 (16|M0)         null     r8      r22     0x80            0x04025E01           {$4} // wr:2+2, rd:0; untyped surface write with x // $31
        send.dc1 (16|M16)        null     r10     r24     0x80            0x04025E01           {$5} // wr:2+2, rd:0; untyped surface write with x // $33
// B002: Preds:{B001, B000},  Succs:{B003}
_L_k0_0_cf:
        endif (32|M0)                        _0_004                                                  // $26
// B003: Preds:{B002},  Succs:{}
_0_004:
(W)     mov (8|M0)               r127.0<1>:f   r3.0<8;8,1>:f                    {Compacted}          // $35
(W)     send.dc0 (8|M0)          r26      r3      null    0x0            0x0219E000           {$6} // wr:1h+0, rd:1; synchronized global fence flushing // $35
(W)     mov (8|M0)               null<1>:ud    r26.0<8;8,1>:ud                  {$6.dst}             //  memory fence commit; $35
(W)     send.dc0 (8|M0)          r27      r3      null    0x0            0x0219E0FE           {$7} // wr:1h+0, rd:1; synchronized SLM fence // $35
(W)     mov (8|M0)               null<1>:ud    r27.0<8;8,1>:ud                  {$7.dst}             //  memory fence commit; $35
(W)     send.ts (8|M0)           null     r127    null    0x0            0x02000010           {EOT,@3} // wr:1+0, rd:0; end of thread // $35


//.BankConflicts: 0
//.RMWs: 0
//


//.numALUInst: 23
//.numALUOnlyDst: 8
//.numALUOnlySrc: 16
//.accSubDef: 0
//.accSubUse: 0
//.accSubCandidateDef: 0
//.accSubCandidateUse: 0
//
//
//.singlePipeAtOneDistNum: 4
//.allAtOneDistNum: 0
//.syncInstCount: 0
//.tokenReuseCount: 0
//.AfterWriteTokenDepCount: 3
//.AfterReadTokenDepCount: 0
