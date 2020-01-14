                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Jan  2 09:06:16 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module testparking
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _timer0_ISR
                                     13 	.globl __mcs51_genXRAMCLEAR
                                     14 	.globl __mcs51_genXINIT
                                     15 	.globl __mcs51_genRAMCLEAR
                                     16 	.globl __sdcc_gsinit_startup
                                     17 	.globl _main
                                     18 	.globl _Printer
                                     19 	.globl _Car5
                                     20 	.globl _Car4
                                     21 	.globl _Car3
                                     22 	.globl _Car2
                                     23 	.globl _Car1
                                     24 	.globl _delay
                                     25 	.globl _now
                                     26 	.globl _ThreadCreate
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _PS
                                     36 	.globl _PT1
                                     37 	.globl _PX1
                                     38 	.globl _PT0
                                     39 	.globl _PX0
                                     40 	.globl _RD
                                     41 	.globl _WR
                                     42 	.globl _T1
                                     43 	.globl _T0
                                     44 	.globl _INT1
                                     45 	.globl _INT0
                                     46 	.globl _TXD
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _EA
                                     57 	.globl _ES
                                     58 	.globl _ET1
                                     59 	.globl _EX1
                                     60 	.globl _ET0
                                     61 	.globl _EX0
                                     62 	.globl _P2_7
                                     63 	.globl _P2_6
                                     64 	.globl _P2_5
                                     65 	.globl _P2_4
                                     66 	.globl _P2_3
                                     67 	.globl _P2_2
                                     68 	.globl _P2_1
                                     69 	.globl _P2_0
                                     70 	.globl _SM0
                                     71 	.globl _SM1
                                     72 	.globl _SM2
                                     73 	.globl _REN
                                     74 	.globl _TB8
                                     75 	.globl _RB8
                                     76 	.globl _TI
                                     77 	.globl _RI
                                     78 	.globl _P1_7
                                     79 	.globl _P1_6
                                     80 	.globl _P1_5
                                     81 	.globl _P1_4
                                     82 	.globl _P1_3
                                     83 	.globl _P1_2
                                     84 	.globl _P1_1
                                     85 	.globl _P1_0
                                     86 	.globl _TF1
                                     87 	.globl _TR1
                                     88 	.globl _TF0
                                     89 	.globl _TR0
                                     90 	.globl _IE1
                                     91 	.globl _IT1
                                     92 	.globl _IE0
                                     93 	.globl _IT0
                                     94 	.globl _P0_7
                                     95 	.globl _P0_6
                                     96 	.globl _P0_5
                                     97 	.globl _P0_4
                                     98 	.globl _P0_3
                                     99 	.globl _P0_2
                                    100 	.globl _P0_1
                                    101 	.globl _P0_0
                                    102 	.globl _B
                                    103 	.globl _ACC
                                    104 	.globl _PSW
                                    105 	.globl _IP
                                    106 	.globl _P3
                                    107 	.globl _IE
                                    108 	.globl _P2
                                    109 	.globl _SBUF
                                    110 	.globl _SCON
                                    111 	.globl _P1
                                    112 	.globl _TH1
                                    113 	.globl _TH0
                                    114 	.globl _TL1
                                    115 	.globl _TL0
                                    116 	.globl _TMOD
                                    117 	.globl _TCON
                                    118 	.globl _PCON
                                    119 	.globl _DPH
                                    120 	.globl _DPL
                                    121 	.globl _SP
                                    122 	.globl _P0
                                    123 	.globl _Delay_Time
                                    124 	.globl _record_B
                                    125 	.globl _j
                                    126 	.globl _t
                                    127 	.globl _temp2
                                    128 	.globl _temp1
                                    129 	.globl _current
                                    130 	.globl _print
                                    131 	.globl _mutex
                                    132 	.globl _plot
                                    133 	.globl _log
                                    134 	.globl _flag
                                    135 	.globl _thread
                                    136 	.globl _counter
                                    137 	.globl _time
                                    138 	.globl _index
                                    139 	.globl _SelectThread
                                    140 	.globl _SaveCurrentSP
                                    141 	.globl _ID
                                    142 	.globl _Bitmap
                                    143 	.globl _ThreadSP
                                    144 ;--------------------------------------------------------
                                    145 ; special function registers
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0	=	0x0080
                           000081   150 _SP	=	0x0081
                           000082   151 _DPL	=	0x0082
                           000083   152 _DPH	=	0x0083
                           000087   153 _PCON	=	0x0087
                           000088   154 _TCON	=	0x0088
                           000089   155 _TMOD	=	0x0089
                           00008A   156 _TL0	=	0x008a
                           00008B   157 _TL1	=	0x008b
                           00008C   158 _TH0	=	0x008c
                           00008D   159 _TH1	=	0x008d
                           000090   160 _P1	=	0x0090
                           000098   161 _SCON	=	0x0098
                           000099   162 _SBUF	=	0x0099
                           0000A0   163 _P2	=	0x00a0
                           0000A8   164 _IE	=	0x00a8
                           0000B0   165 _P3	=	0x00b0
                           0000B8   166 _IP	=	0x00b8
                           0000D0   167 _PSW	=	0x00d0
                           0000E0   168 _ACC	=	0x00e0
                           0000F0   169 _B	=	0x00f0
                                    170 ;--------------------------------------------------------
                                    171 ; special function bits
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0_0	=	0x0080
                           000081   176 _P0_1	=	0x0081
                           000082   177 _P0_2	=	0x0082
                           000083   178 _P0_3	=	0x0083
                           000084   179 _P0_4	=	0x0084
                           000085   180 _P0_5	=	0x0085
                           000086   181 _P0_6	=	0x0086
                           000087   182 _P0_7	=	0x0087
                           000088   183 _IT0	=	0x0088
                           000089   184 _IE0	=	0x0089
                           00008A   185 _IT1	=	0x008a
                           00008B   186 _IE1	=	0x008b
                           00008C   187 _TR0	=	0x008c
                           00008D   188 _TF0	=	0x008d
                           00008E   189 _TR1	=	0x008e
                           00008F   190 _TF1	=	0x008f
                           000090   191 _P1_0	=	0x0090
                           000091   192 _P1_1	=	0x0091
                           000092   193 _P1_2	=	0x0092
                           000093   194 _P1_3	=	0x0093
                           000094   195 _P1_4	=	0x0094
                           000095   196 _P1_5	=	0x0095
                           000096   197 _P1_6	=	0x0096
                           000097   198 _P1_7	=	0x0097
                           000098   199 _RI	=	0x0098
                           000099   200 _TI	=	0x0099
                           00009A   201 _RB8	=	0x009a
                           00009B   202 _TB8	=	0x009b
                           00009C   203 _REN	=	0x009c
                           00009D   204 _SM2	=	0x009d
                           00009E   205 _SM1	=	0x009e
                           00009F   206 _SM0	=	0x009f
                           0000A0   207 _P2_0	=	0x00a0
                           0000A1   208 _P2_1	=	0x00a1
                           0000A2   209 _P2_2	=	0x00a2
                           0000A3   210 _P2_3	=	0x00a3
                           0000A4   211 _P2_4	=	0x00a4
                           0000A5   212 _P2_5	=	0x00a5
                           0000A6   213 _P2_6	=	0x00a6
                           0000A7   214 _P2_7	=	0x00a7
                           0000A8   215 _EX0	=	0x00a8
                           0000A9   216 _ET0	=	0x00a9
                           0000AA   217 _EX1	=	0x00aa
                           0000AB   218 _ET1	=	0x00ab
                           0000AC   219 _ES	=	0x00ac
                           0000AF   220 _EA	=	0x00af
                           0000B0   221 _P3_0	=	0x00b0
                           0000B1   222 _P3_1	=	0x00b1
                           0000B2   223 _P3_2	=	0x00b2
                           0000B3   224 _P3_3	=	0x00b3
                           0000B4   225 _P3_4	=	0x00b4
                           0000B5   226 _P3_5	=	0x00b5
                           0000B6   227 _P3_6	=	0x00b6
                           0000B7   228 _P3_7	=	0x00b7
                           0000B0   229 _RXD	=	0x00b0
                           0000B1   230 _TXD	=	0x00b1
                           0000B2   231 _INT0	=	0x00b2
                           0000B3   232 _INT1	=	0x00b3
                           0000B4   233 _T0	=	0x00b4
                           0000B5   234 _T1	=	0x00b5
                           0000B6   235 _WR	=	0x00b6
                           0000B7   236 _RD	=	0x00b7
                           0000B8   237 _PX0	=	0x00b8
                           0000B9   238 _PT0	=	0x00b9
                           0000BA   239 _PX1	=	0x00ba
                           0000BB   240 _PT1	=	0x00bb
                           0000BC   241 _PS	=	0x00bc
                           0000D0   242 _P	=	0x00d0
                           0000D1   243 _F1	=	0x00d1
                           0000D2   244 _OV	=	0x00d2
                           0000D3   245 _RS0	=	0x00d3
                           0000D4   246 _RS1	=	0x00d4
                           0000D5   247 _F0	=	0x00d5
                           0000D6   248 _AC	=	0x00d6
                           0000D7   249 _CY	=	0x00d7
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable register banks
                                    252 ;--------------------------------------------------------
                                    253 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        254 	.ds 8
                                    255 ;--------------------------------------------------------
                                    256 ; internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area DSEG    (DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; overlayable items in internal ram 
                                    261 ;--------------------------------------------------------
                                    262 ;--------------------------------------------------------
                                    263 ; Stack segment in internal ram 
                                    264 ;--------------------------------------------------------
                                    265 	.area	SSEG
      000008                        266 __start__stack:
      000008                        267 	.ds	1
                                    268 
                                    269 ;--------------------------------------------------------
                                    270 ; indirectly addressable internal ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area ISEG    (DATA)
                           000020   273 _ThreadSP	=	0x0020
                           000024   274 _Bitmap	=	0x0024
                           000028   275 _ID	=	0x0028
                           000029   276 _SaveCurrentSP	=	0x0029
                           00002A   277 _SelectThread	=	0x002a
                           00002B   278 _index	=	0x002b
                           00002C   279 _time	=	0x002c
                           00002D   280 _counter	=	0x002d
                           00002E   281 _thread	=	0x002e
                           00002F   282 _flag	=	0x002f
                           000030   283 _log	=	0x0030
                           00003A   284 _plot	=	0x003a
                           00003B   285 _mutex	=	0x003b
                           00003D   286 _print	=	0x003d
                           00004B   287 _current	=	0x004b
                           00004C   288 _temp1	=	0x004c
                           00004D   289 _temp2	=	0x004d
                           00004E   290 _t	=	0x004e
                           00005B   291 _j	=	0x005b
                           00005C   292 _record_B	=	0x005c
                           00006B   293 _Delay_Time	=	0x006b
                                    294 ;--------------------------------------------------------
                                    295 ; absolute internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area IABS    (ABS,DATA)
                                    298 	.area IABS    (ABS,DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; bit data
                                    301 ;--------------------------------------------------------
                                    302 	.area BSEG    (BIT)
                                    303 ;--------------------------------------------------------
                                    304 ; paged external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area PSEG    (PAG,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XSEG    (XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; absolute external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XABS    (ABS,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external initialized ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XISEG   (XDATA)
                                    319 	.area HOME    (CODE)
                                    320 	.area GSINIT0 (CODE)
                                    321 	.area GSINIT1 (CODE)
                                    322 	.area GSINIT2 (CODE)
                                    323 	.area GSINIT3 (CODE)
                                    324 	.area GSINIT4 (CODE)
                                    325 	.area GSINIT5 (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area CSEG    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; interrupt vector 
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
      000000                        333 __interrupt_vect:
      000000 02 04 8D         [24]  334 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  335 	reti
      000004                        336 	.ds	7
      00000B 02 04 94         [24]  337 	ljmp	_timer0_ISR
                                    338 ;--------------------------------------------------------
                                    339 ; global & static initialisations
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.globl __sdcc_gsinit_startup
                                    346 	.globl __sdcc_program_startup
                                    347 	.globl __start__stack
                                    348 	.globl __mcs51_genXINIT
                                    349 	.globl __mcs51_genXRAMCLEAR
                                    350 	.globl __mcs51_genRAMCLEAR
                                    351 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  352 	ljmp	__sdcc_program_startup
                                    353 ;--------------------------------------------------------
                                    354 ; Home
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area HOME    (CODE)
      00000E                        358 __sdcc_program_startup:
      00000E 02 04 59         [24]  359 	ljmp	_main
                                    360 ;	return from main will return to caller
                                    361 ;--------------------------------------------------------
                                    362 ; code
                                    363 ;--------------------------------------------------------
                                    364 	.area CSEG    (CODE)
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'Car1'
                                    367 ;------------------------------------------------------------
                                    368 ;	testparking.c:7: void Car1(void) {
                                    369 ;	-----------------------------------------
                                    370 ;	 function Car1
                                    371 ;	-----------------------------------------
      000014                        372 _Car1:
                           000007   373 	ar7 = 0x07
                           000006   374 	ar6 = 0x06
                           000005   375 	ar5 = 0x05
                           000004   376 	ar4 = 0x04
                           000003   377 	ar3 = 0x03
                           000002   378 	ar2 = 0x02
                           000001   379 	ar1 = 0x01
                           000000   380 	ar0 = 0x00
                                    381 ;	testparking.c:8: log[0] = now();
      000014 12 04 98         [24]  382 	lcall	_now
      000017 E5 82            [12]  383 	mov	a,dpl
      000019 78 30            [12]  384 	mov	r0,#_log
      00001B F6               [12]  385 	mov	@r0,a
                                    386 ;	testparking.c:10: SemaphoreWait( mutex );
      00001C 78 3B            [12]  387 	mov	r0,#_mutex
      00001E 16               [12]  388 	dec	@r0
      00001F                        389 00101$:
      00001F 78 3B            [12]  390 	mov	r0,#_mutex
      000021 E6               [12]  391 	mov	a,@r0
      000022 20 E7 FA         [24]  392 	jb	acc.7,00101$
                                    393 ;	testparking.c:11: if ( !plot[0] ) {
      000025 78 3A            [12]  394 	mov	r0,#_plot
      000027 E6               [12]  395 	mov	a,@r0
      000028 70 0E            [24]  396 	jnz	00105$
                                    397 ;	testparking.c:12: plot[0] = 1;
      00002A 78 3A            [12]  398 	mov	r0,#_plot
      00002C 76 01            [12]  399 	mov	@r0,#0x01
                                    400 ;	testparking.c:20: __endasm;
      00002E 78 30            [12]  401 	mov r0,#(_log + 0x0000)
      000030 E6               [12]  402 	mov a,@r0
      000031 FF               [12]  403 	mov r7,a
      000032 74 7F            [12]  404 	mov a,#0x7F
      000034 5F               [12]  405 	anl a,r7
      000035 F6               [12]  406 	mov @r0,a
      000036 80 0C            [24]  407 	sjmp	00106$
      000038                        408 00105$:
                                    409 ;	testparking.c:22: plot[1] = 1;
      000038 78 3B            [12]  410 	mov	r0,#(_plot + 0x0001)
      00003A 76 01            [12]  411 	mov	@r0,#0x01
                                    412 ;	testparking.c:30: __endasm;
      00003C 78 30            [12]  413 	mov r0,#(_log + 0x0000)
      00003E E6               [12]  414 	mov a,@r0
      00003F FF               [12]  415 	mov r7,a
      000040 74 80            [12]  416 	mov a,#0x80
      000042 4F               [12]  417 	orl a,r7
      000043 F6               [12]  418 	mov @r0,a
      000044                        419 00106$:
                                    420 ;	testparking.c:32: SemaphoreSignal( mutex );
      000044 78 3B            [12]  421 	mov	r0,#_mutex
      000046 06               [12]  422 	inc	@r0
                                    423 ;	testparking.c:34: SemaphoreSignal( print );
      000047 78 3D            [12]  424 	mov	r0,#_print
      000049 06               [12]  425 	inc	@r0
                                    426 ;	testparking.c:36: delay(1);
      00004A 75 82 01         [24]  427 	mov	dpl,#0x01
      00004D 12 04 9D         [24]  428 	lcall	_delay
                                    429 ;	testparking.c:37: log[1] = now();
      000050 12 04 98         [24]  430 	lcall	_now
      000053 E5 82            [12]  431 	mov	a,dpl
      000055 78 31            [12]  432 	mov	r0,#(_log + 0x0001)
      000057 F6               [12]  433 	mov	@r0,a
                                    434 ;	testparking.c:39: SemaphoreWait(mutex);
      000058 78 3B            [12]  435 	mov	r0,#_mutex
      00005A 16               [12]  436 	dec	@r0
      00005B                        437 00107$:
      00005B 78 3B            [12]  438 	mov	r0,#_mutex
      00005D E6               [12]  439 	mov	a,@r0
      00005E 20 E7 FA         [24]  440 	jb	acc.7,00107$
                                    441 ;	testparking.c:40: if ( (plot[0]-1)==0 ) {
      000061 78 3A            [12]  442 	mov	r0,#_plot
      000063 E6               [12]  443 	mov	a,@r0
      000064 FF               [12]  444 	mov	r7,a
      000065 33               [12]  445 	rlc	a
      000066 95 E0            [12]  446 	subb	a,acc
      000068 FE               [12]  447 	mov	r6,a
      000069 1F               [12]  448 	dec	r7
      00006A BF FF 01         [24]  449 	cjne	r7,#0xFF,00136$
      00006D 1E               [12]  450 	dec	r6
      00006E                        451 00136$:
      00006E EF               [12]  452 	mov	a,r7
      00006F 4E               [12]  453 	orl	a,r6
                                    454 ;	testparking.c:41: plot[0] = 0;
      000070 70 0D            [24]  455 	jnz	00111$
      000072 78 3A            [12]  456 	mov	r0,#_plot
      000074 F6               [12]  457 	mov	@r0,a
                                    458 ;	testparking.c:49: __endasm;
      000075 78 31            [12]  459 	mov r0,#(_log + 0x0001)
      000077 E6               [12]  460 	mov a,@r0
      000078 FF               [12]  461 	mov r7,a
      000079 74 7F            [12]  462 	mov a,#0x7F
      00007B 5F               [12]  463 	anl a,r7
      00007C F6               [12]  464 	mov @r0,a
      00007D 80 0C            [24]  465 	sjmp	00112$
      00007F                        466 00111$:
                                    467 ;	testparking.c:51: plot[1] = 0;
      00007F 78 3B            [12]  468 	mov	r0,#(_plot + 0x0001)
      000081 76 00            [12]  469 	mov	@r0,#0x00
                                    470 ;	testparking.c:59: __endasm;
      000083 78 31            [12]  471 	mov r0,#(_log + 0x0001)
      000085 E6               [12]  472 	mov a,@r0
      000086 FF               [12]  473 	mov r7,a
      000087 74 80            [12]  474 	mov a,#0x80
      000089 4F               [12]  475 	orl a,r7
      00008A F6               [12]  476 	mov @r0,a
      00008B                        477 00112$:
                                    478 ;	testparking.c:61: SemaphoreSignal( mutex );
      00008B 78 3B            [12]  479 	mov	r0,#_mutex
      00008D 06               [12]  480 	inc	@r0
                                    481 ;	testparking.c:63: SemaphoreSignal( print );
      00008E 78 3D            [12]  482 	mov	r0,#_print
      000090 06               [12]  483 	inc	@r0
      000091 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'Car2'
                                    487 ;------------------------------------------------------------
                                    488 ;	testparking.c:66: void Car2(void) {
                                    489 ;	-----------------------------------------
                                    490 ;	 function Car2
                                    491 ;	-----------------------------------------
      000092                        492 _Car2:
                                    493 ;	testparking.c:67: log[2] = now();
      000092 12 04 98         [24]  494 	lcall	_now
      000095 E5 82            [12]  495 	mov	a,dpl
      000097 78 32            [12]  496 	mov	r0,#(_log + 0x0002)
      000099 F6               [12]  497 	mov	@r0,a
                                    498 ;	testparking.c:69: SemaphoreWait( mutex );
      00009A 78 3B            [12]  499 	mov	r0,#_mutex
      00009C 16               [12]  500 	dec	@r0
      00009D                        501 00101$:
      00009D 78 3B            [12]  502 	mov	r0,#_mutex
      00009F E6               [12]  503 	mov	a,@r0
      0000A0 20 E7 FA         [24]  504 	jb	acc.7,00101$
                                    505 ;	testparking.c:70: if ( !plot[0] ) {
      0000A3 78 3A            [12]  506 	mov	r0,#_plot
      0000A5 E6               [12]  507 	mov	a,@r0
      0000A6 70 0E            [24]  508 	jnz	00105$
                                    509 ;	testparking.c:71: plot[0] = 2;
      0000A8 78 3A            [12]  510 	mov	r0,#_plot
      0000AA 76 02            [12]  511 	mov	@r0,#0x02
                                    512 ;	testparking.c:79: __endasm;
      0000AC 78 32            [12]  513 	mov r0,#(_log + 0x0002)
      0000AE E6               [12]  514 	mov a,@r0
      0000AF FF               [12]  515 	mov r7,a
      0000B0 74 7F            [12]  516 	mov a,#0x7F
      0000B2 5F               [12]  517 	anl a,r7
      0000B3 F6               [12]  518 	mov @r0,a
      0000B4 80 0C            [24]  519 	sjmp	00106$
      0000B6                        520 00105$:
                                    521 ;	testparking.c:81: plot[1] = 2;
      0000B6 78 3B            [12]  522 	mov	r0,#(_plot + 0x0001)
      0000B8 76 02            [12]  523 	mov	@r0,#0x02
                                    524 ;	testparking.c:89: __endasm;
      0000BA 78 32            [12]  525 	mov r0,#(_log + 0x0002)
      0000BC E6               [12]  526 	mov a,@r0
      0000BD FF               [12]  527 	mov r7,a
      0000BE 74 80            [12]  528 	mov a,#0x80
      0000C0 4F               [12]  529 	orl a,r7
      0000C1 F6               [12]  530 	mov @r0,a
      0000C2                        531 00106$:
                                    532 ;	testparking.c:91: SemaphoreSignal( mutex );
      0000C2 78 3B            [12]  533 	mov	r0,#_mutex
      0000C4 06               [12]  534 	inc	@r0
                                    535 ;	testparking.c:93: SemaphoreSignal( print );
      0000C5 78 3D            [12]  536 	mov	r0,#_print
      0000C7 06               [12]  537 	inc	@r0
                                    538 ;	testparking.c:95: delay(2);
      0000C8 75 82 02         [24]  539 	mov	dpl,#0x02
      0000CB 12 04 9D         [24]  540 	lcall	_delay
                                    541 ;	testparking.c:96: log[3] = now();
      0000CE 12 04 98         [24]  542 	lcall	_now
      0000D1 E5 82            [12]  543 	mov	a,dpl
      0000D3 78 33            [12]  544 	mov	r0,#(_log + 0x0003)
      0000D5 F6               [12]  545 	mov	@r0,a
                                    546 ;	testparking.c:98: SemaphoreWait( mutex );
      0000D6 78 3B            [12]  547 	mov	r0,#_mutex
      0000D8 16               [12]  548 	dec	@r0
      0000D9                        549 00107$:
      0000D9 78 3B            [12]  550 	mov	r0,#_mutex
      0000DB E6               [12]  551 	mov	a,@r0
      0000DC 20 E7 FA         [24]  552 	jb	acc.7,00107$
                                    553 ;	testparking.c:99: if ( (plot[0]-2)==0 ) {
      0000DF 78 3A            [12]  554 	mov	r0,#_plot
      0000E1 E6               [12]  555 	mov	a,@r0
      0000E2 FF               [12]  556 	mov	r7,a
      0000E3 33               [12]  557 	rlc	a
      0000E4 95 E0            [12]  558 	subb	a,acc
      0000E6 FE               [12]  559 	mov	r6,a
      0000E7 EF               [12]  560 	mov	a,r7
      0000E8 24 FE            [12]  561 	add	a,#0xFE
      0000EA FF               [12]  562 	mov	r7,a
      0000EB EE               [12]  563 	mov	a,r6
      0000EC 34 FF            [12]  564 	addc	a,#0xFF
      0000EE FE               [12]  565 	mov	r6,a
      0000EF 4F               [12]  566 	orl	a,r7
                                    567 ;	testparking.c:100: plot[0] = 0;
      0000F0 70 0D            [24]  568 	jnz	00111$
      0000F2 78 3A            [12]  569 	mov	r0,#_plot
      0000F4 F6               [12]  570 	mov	@r0,a
                                    571 ;	testparking.c:108: __endasm;
      0000F5 78 33            [12]  572 	mov r0,#(_log + 0x0003)
      0000F7 E6               [12]  573 	mov a,@r0
      0000F8 FF               [12]  574 	mov r7,a
      0000F9 74 7F            [12]  575 	mov a,#0x7F
      0000FB 5F               [12]  576 	anl a,r7
      0000FC F6               [12]  577 	mov @r0,a
      0000FD 80 0C            [24]  578 	sjmp	00112$
      0000FF                        579 00111$:
                                    580 ;	testparking.c:110: plot[1] = 0;
      0000FF 78 3B            [12]  581 	mov	r0,#(_plot + 0x0001)
      000101 76 00            [12]  582 	mov	@r0,#0x00
                                    583 ;	testparking.c:118: __endasm;
      000103 78 33            [12]  584 	mov r0,#(_log + 0x0003)
      000105 E6               [12]  585 	mov a,@r0
      000106 FF               [12]  586 	mov r7,a
      000107 74 80            [12]  587 	mov a,#0x80
      000109 4F               [12]  588 	orl a,r7
      00010A F6               [12]  589 	mov @r0,a
      00010B                        590 00112$:
                                    591 ;	testparking.c:120: SemaphoreSignal( mutex );
      00010B 78 3B            [12]  592 	mov	r0,#_mutex
      00010D 06               [12]  593 	inc	@r0
                                    594 ;	testparking.c:122: SemaphoreSignal( print );
      00010E 78 3D            [12]  595 	mov	r0,#_print
      000110 06               [12]  596 	inc	@r0
      000111 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'Car3'
                                    600 ;------------------------------------------------------------
                                    601 ;	testparking.c:125: void Car3(void) {
                                    602 ;	-----------------------------------------
                                    603 ;	 function Car3
                                    604 ;	-----------------------------------------
      000112                        605 _Car3:
                                    606 ;	testparking.c:126: log[4] = now();
      000112 12 04 98         [24]  607 	lcall	_now
      000115 E5 82            [12]  608 	mov	a,dpl
      000117 78 34            [12]  609 	mov	r0,#(_log + 0x0004)
      000119 F6               [12]  610 	mov	@r0,a
                                    611 ;	testparking.c:128: SemaphoreWait( mutex );
      00011A 78 3B            [12]  612 	mov	r0,#_mutex
      00011C 16               [12]  613 	dec	@r0
      00011D                        614 00101$:
      00011D 78 3B            [12]  615 	mov	r0,#_mutex
      00011F E6               [12]  616 	mov	a,@r0
      000120 20 E7 FA         [24]  617 	jb	acc.7,00101$
                                    618 ;	testparking.c:129: if ( !plot[0] ) {
      000123 78 3A            [12]  619 	mov	r0,#_plot
      000125 E6               [12]  620 	mov	a,@r0
      000126 70 0E            [24]  621 	jnz	00105$
                                    622 ;	testparking.c:130: plot[0] = 3;
      000128 78 3A            [12]  623 	mov	r0,#_plot
      00012A 76 03            [12]  624 	mov	@r0,#0x03
                                    625 ;	testparking.c:138: __endasm;
      00012C 78 34            [12]  626 	mov r0,#(_log + 0x0004)
      00012E E6               [12]  627 	mov a,@r0
      00012F FF               [12]  628 	mov r7,a
      000130 74 7F            [12]  629 	mov a,#0x7F
      000132 5F               [12]  630 	anl a,r7
      000133 F6               [12]  631 	mov @r0,a
      000134 80 0C            [24]  632 	sjmp	00106$
      000136                        633 00105$:
                                    634 ;	testparking.c:140: plot[1] = 3;
      000136 78 3B            [12]  635 	mov	r0,#(_plot + 0x0001)
      000138 76 03            [12]  636 	mov	@r0,#0x03
                                    637 ;	testparking.c:148: __endasm;
      00013A 78 34            [12]  638 	mov r0,#(_log + 0x0004)
      00013C E6               [12]  639 	mov a,@r0
      00013D FF               [12]  640 	mov r7,a
      00013E 74 80            [12]  641 	mov a,#0x80
      000140 4F               [12]  642 	orl a,r7
      000141 F6               [12]  643 	mov @r0,a
      000142                        644 00106$:
                                    645 ;	testparking.c:150: SemaphoreSignal( mutex );
      000142 78 3B            [12]  646 	mov	r0,#_mutex
      000144 06               [12]  647 	inc	@r0
                                    648 ;	testparking.c:152: SemaphoreSignal( print );
      000145 78 3D            [12]  649 	mov	r0,#_print
      000147 06               [12]  650 	inc	@r0
                                    651 ;	testparking.c:154: delay(1);
      000148 75 82 01         [24]  652 	mov	dpl,#0x01
      00014B 12 04 9D         [24]  653 	lcall	_delay
                                    654 ;	testparking.c:155: log[5] = now();
      00014E 12 04 98         [24]  655 	lcall	_now
      000151 E5 82            [12]  656 	mov	a,dpl
      000153 78 35            [12]  657 	mov	r0,#(_log + 0x0005)
      000155 F6               [12]  658 	mov	@r0,a
                                    659 ;	testparking.c:157: SemaphoreWait( mutex );
      000156 78 3B            [12]  660 	mov	r0,#_mutex
      000158 16               [12]  661 	dec	@r0
      000159                        662 00107$:
      000159 78 3B            [12]  663 	mov	r0,#_mutex
      00015B E6               [12]  664 	mov	a,@r0
      00015C 20 E7 FA         [24]  665 	jb	acc.7,00107$
                                    666 ;	testparking.c:158: if ( (plot[0]-3)==0 ) {
      00015F 78 3A            [12]  667 	mov	r0,#_plot
      000161 E6               [12]  668 	mov	a,@r0
      000162 FF               [12]  669 	mov	r7,a
      000163 33               [12]  670 	rlc	a
      000164 95 E0            [12]  671 	subb	a,acc
      000166 FE               [12]  672 	mov	r6,a
      000167 EF               [12]  673 	mov	a,r7
      000168 24 FD            [12]  674 	add	a,#0xFD
      00016A FF               [12]  675 	mov	r7,a
      00016B EE               [12]  676 	mov	a,r6
      00016C 34 FF            [12]  677 	addc	a,#0xFF
      00016E FE               [12]  678 	mov	r6,a
      00016F 4F               [12]  679 	orl	a,r7
                                    680 ;	testparking.c:159: plot[0] = 0;
      000170 70 0D            [24]  681 	jnz	00111$
      000172 78 3A            [12]  682 	mov	r0,#_plot
      000174 F6               [12]  683 	mov	@r0,a
                                    684 ;	testparking.c:167: __endasm;
      000175 78 35            [12]  685 	mov r0,#(_log + 0x0005)
      000177 E6               [12]  686 	mov a,@r0
      000178 FF               [12]  687 	mov r7,a
      000179 74 7F            [12]  688 	mov a,#0x7F
      00017B 5F               [12]  689 	anl a,r7
      00017C F6               [12]  690 	mov @r0,a
      00017D 80 0C            [24]  691 	sjmp	00112$
      00017F                        692 00111$:
                                    693 ;	testparking.c:169: plot[1] = 0;
      00017F 78 3B            [12]  694 	mov	r0,#(_plot + 0x0001)
      000181 76 00            [12]  695 	mov	@r0,#0x00
                                    696 ;	testparking.c:177: __endasm;
      000183 78 35            [12]  697 	mov r0,#(_log + 0x0005)
      000185 E6               [12]  698 	mov a,@r0
      000186 FF               [12]  699 	mov r7,a
      000187 74 80            [12]  700 	mov a,#0x80
      000189 4F               [12]  701 	orl a,r7
      00018A F6               [12]  702 	mov @r0,a
      00018B                        703 00112$:
                                    704 ;	testparking.c:179: SemaphoreSignal( mutex );
      00018B 78 3B            [12]  705 	mov	r0,#_mutex
      00018D 06               [12]  706 	inc	@r0
                                    707 ;	testparking.c:181: SemaphoreSignal( print );
      00018E 78 3D            [12]  708 	mov	r0,#_print
      000190 06               [12]  709 	inc	@r0
      000191 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'Car4'
                                    713 ;------------------------------------------------------------
                                    714 ;	testparking.c:184: void Car4(void) {
                                    715 ;	-----------------------------------------
                                    716 ;	 function Car4
                                    717 ;	-----------------------------------------
      000192                        718 _Car4:
                                    719 ;	testparking.c:185: log[6] = now();
      000192 12 04 98         [24]  720 	lcall	_now
      000195 E5 82            [12]  721 	mov	a,dpl
      000197 78 36            [12]  722 	mov	r0,#(_log + 0x0006)
      000199 F6               [12]  723 	mov	@r0,a
                                    724 ;	testparking.c:187: SemaphoreWait( mutex );
      00019A 78 3B            [12]  725 	mov	r0,#_mutex
      00019C 16               [12]  726 	dec	@r0
      00019D                        727 00101$:
      00019D 78 3B            [12]  728 	mov	r0,#_mutex
      00019F E6               [12]  729 	mov	a,@r0
      0001A0 20 E7 FA         [24]  730 	jb	acc.7,00101$
                                    731 ;	testparking.c:188: if ( !plot[0] ) {
      0001A3 78 3A            [12]  732 	mov	r0,#_plot
      0001A5 E6               [12]  733 	mov	a,@r0
      0001A6 70 0E            [24]  734 	jnz	00105$
                                    735 ;	testparking.c:189: plot[0] = 4;
      0001A8 78 3A            [12]  736 	mov	r0,#_plot
      0001AA 76 04            [12]  737 	mov	@r0,#0x04
                                    738 ;	testparking.c:197: __endasm;
      0001AC 78 36            [12]  739 	mov r0,#(_log + 0x0006)
      0001AE E6               [12]  740 	mov a,@r0
      0001AF FF               [12]  741 	mov r7,a
      0001B0 74 7F            [12]  742 	mov a,#0x7F
      0001B2 5F               [12]  743 	anl a,r7
      0001B3 F6               [12]  744 	mov @r0,a
      0001B4 80 0C            [24]  745 	sjmp	00106$
      0001B6                        746 00105$:
                                    747 ;	testparking.c:199: plot[1] = 4;
      0001B6 78 3B            [12]  748 	mov	r0,#(_plot + 0x0001)
      0001B8 76 04            [12]  749 	mov	@r0,#0x04
                                    750 ;	testparking.c:207: __endasm;
      0001BA 78 36            [12]  751 	mov r0,#(_log + 0x0006)
      0001BC E6               [12]  752 	mov a,@r0
      0001BD FF               [12]  753 	mov r7,a
      0001BE 74 80            [12]  754 	mov a,#0x80
      0001C0 4F               [12]  755 	orl a,r7
      0001C1 F6               [12]  756 	mov @r0,a
      0001C2                        757 00106$:
                                    758 ;	testparking.c:209: SemaphoreSignal( mutex );
      0001C2 78 3B            [12]  759 	mov	r0,#_mutex
      0001C4 06               [12]  760 	inc	@r0
                                    761 ;	testparking.c:211: SemaphoreSignal( print );
      0001C5 78 3D            [12]  762 	mov	r0,#_print
      0001C7 06               [12]  763 	inc	@r0
                                    764 ;	testparking.c:213: delay(3);
      0001C8 75 82 03         [24]  765 	mov	dpl,#0x03
      0001CB 12 04 9D         [24]  766 	lcall	_delay
                                    767 ;	testparking.c:214: log[7] = now();
      0001CE 12 04 98         [24]  768 	lcall	_now
      0001D1 E5 82            [12]  769 	mov	a,dpl
      0001D3 78 37            [12]  770 	mov	r0,#(_log + 0x0007)
      0001D5 F6               [12]  771 	mov	@r0,a
                                    772 ;	testparking.c:216: SemaphoreWait( mutex );
      0001D6 78 3B            [12]  773 	mov	r0,#_mutex
      0001D8 16               [12]  774 	dec	@r0
      0001D9                        775 00107$:
      0001D9 78 3B            [12]  776 	mov	r0,#_mutex
      0001DB E6               [12]  777 	mov	a,@r0
      0001DC 20 E7 FA         [24]  778 	jb	acc.7,00107$
                                    779 ;	testparking.c:217: if ( (plot[0]-4)==0 ) {
      0001DF 78 3A            [12]  780 	mov	r0,#_plot
      0001E1 E6               [12]  781 	mov	a,@r0
      0001E2 FF               [12]  782 	mov	r7,a
      0001E3 33               [12]  783 	rlc	a
      0001E4 95 E0            [12]  784 	subb	a,acc
      0001E6 FE               [12]  785 	mov	r6,a
      0001E7 EF               [12]  786 	mov	a,r7
      0001E8 24 FC            [12]  787 	add	a,#0xFC
      0001EA FF               [12]  788 	mov	r7,a
      0001EB EE               [12]  789 	mov	a,r6
      0001EC 34 FF            [12]  790 	addc	a,#0xFF
      0001EE FE               [12]  791 	mov	r6,a
      0001EF 4F               [12]  792 	orl	a,r7
                                    793 ;	testparking.c:218: plot[0] = 0;
      0001F0 70 0D            [24]  794 	jnz	00111$
      0001F2 78 3A            [12]  795 	mov	r0,#_plot
      0001F4 F6               [12]  796 	mov	@r0,a
                                    797 ;	testparking.c:226: __endasm;
      0001F5 78 37            [12]  798 	mov r0,#(_log + 0x0007)
      0001F7 E6               [12]  799 	mov a,@r0
      0001F8 FF               [12]  800 	mov r7,a
      0001F9 74 7F            [12]  801 	mov a,#0x7F
      0001FB 5F               [12]  802 	anl a,r7
      0001FC F6               [12]  803 	mov @r0,a
      0001FD 80 0C            [24]  804 	sjmp	00112$
      0001FF                        805 00111$:
                                    806 ;	testparking.c:228: plot[1] = 0;
      0001FF 78 3B            [12]  807 	mov	r0,#(_plot + 0x0001)
      000201 76 00            [12]  808 	mov	@r0,#0x00
                                    809 ;	testparking.c:236: __endasm;
      000203 78 37            [12]  810 	mov r0,#(_log + 0x0007)
      000205 E6               [12]  811 	mov a,@r0
      000206 FF               [12]  812 	mov r7,a
      000207 74 80            [12]  813 	mov a,#0x80
      000209 4F               [12]  814 	orl a,r7
      00020A F6               [12]  815 	mov @r0,a
      00020B                        816 00112$:
                                    817 ;	testparking.c:238: SemaphoreSignal( mutex );
      00020B 78 3B            [12]  818 	mov	r0,#_mutex
      00020D 06               [12]  819 	inc	@r0
                                    820 ;	testparking.c:240: SemaphoreSignal( print );
      00020E 78 3D            [12]  821 	mov	r0,#_print
      000210 06               [12]  822 	inc	@r0
      000211 22               [24]  823 	ret
                                    824 ;------------------------------------------------------------
                                    825 ;Allocation info for local variables in function 'Car5'
                                    826 ;------------------------------------------------------------
                                    827 ;	testparking.c:243: void Car5(void) {
                                    828 ;	-----------------------------------------
                                    829 ;	 function Car5
                                    830 ;	-----------------------------------------
      000212                        831 _Car5:
                                    832 ;	testparking.c:244: log[8] = now();
      000212 12 04 98         [24]  833 	lcall	_now
      000215 E5 82            [12]  834 	mov	a,dpl
      000217 78 38            [12]  835 	mov	r0,#(_log + 0x0008)
      000219 F6               [12]  836 	mov	@r0,a
                                    837 ;	testparking.c:246: SemaphoreWait( mutex );
      00021A 78 3B            [12]  838 	mov	r0,#_mutex
      00021C 16               [12]  839 	dec	@r0
      00021D                        840 00101$:
      00021D 78 3B            [12]  841 	mov	r0,#_mutex
      00021F E6               [12]  842 	mov	a,@r0
      000220 20 E7 FA         [24]  843 	jb	acc.7,00101$
                                    844 ;	testparking.c:247: if ( !plot[0] ) {
      000223 78 3A            [12]  845 	mov	r0,#_plot
      000225 E6               [12]  846 	mov	a,@r0
      000226 70 0E            [24]  847 	jnz	00105$
                                    848 ;	testparking.c:248: plot[0] = 5;
      000228 78 3A            [12]  849 	mov	r0,#_plot
      00022A 76 05            [12]  850 	mov	@r0,#0x05
                                    851 ;	testparking.c:256: __endasm;
      00022C 78 38            [12]  852 	mov r0,#(_log + 0x0008)
      00022E E6               [12]  853 	mov a,@r0
      00022F FF               [12]  854 	mov r7,a
      000230 74 7F            [12]  855 	mov a,#0x7F
      000232 5F               [12]  856 	anl a,r7
      000233 F6               [12]  857 	mov @r0,a
      000234 80 0C            [24]  858 	sjmp	00106$
      000236                        859 00105$:
                                    860 ;	testparking.c:258: plot[1] = 5;
      000236 78 3B            [12]  861 	mov	r0,#(_plot + 0x0001)
      000238 76 05            [12]  862 	mov	@r0,#0x05
                                    863 ;	testparking.c:266: __endasm;
      00023A 78 38            [12]  864 	mov r0,#(_log + 0x0008)
      00023C E6               [12]  865 	mov a,@r0
      00023D FF               [12]  866 	mov r7,a
      00023E 74 80            [12]  867 	mov a,#0x80
      000240 4F               [12]  868 	orl a,r7
      000241 F6               [12]  869 	mov @r0,a
      000242                        870 00106$:
                                    871 ;	testparking.c:268: SemaphoreSignal( mutex );
      000242 78 3B            [12]  872 	mov	r0,#_mutex
      000244 06               [12]  873 	inc	@r0
                                    874 ;	testparking.c:270: SemaphoreSignal( print );
      000245 78 3D            [12]  875 	mov	r0,#_print
      000247 06               [12]  876 	inc	@r0
                                    877 ;	testparking.c:272: delay(2);
      000248 75 82 02         [24]  878 	mov	dpl,#0x02
      00024B 12 04 9D         [24]  879 	lcall	_delay
                                    880 ;	testparking.c:273: log[9] = now();
      00024E 12 04 98         [24]  881 	lcall	_now
      000251 E5 82            [12]  882 	mov	a,dpl
      000253 78 39            [12]  883 	mov	r0,#(_log + 0x0009)
      000255 F6               [12]  884 	mov	@r0,a
                                    885 ;	testparking.c:275: SemaphoreWait( mutex );
      000256 78 3B            [12]  886 	mov	r0,#_mutex
      000258 16               [12]  887 	dec	@r0
      000259                        888 00107$:
      000259 78 3B            [12]  889 	mov	r0,#_mutex
      00025B E6               [12]  890 	mov	a,@r0
      00025C 20 E7 FA         [24]  891 	jb	acc.7,00107$
                                    892 ;	testparking.c:276: if ( (plot[0]-5)==0 ) {
      00025F 78 3A            [12]  893 	mov	r0,#_plot
      000261 E6               [12]  894 	mov	a,@r0
      000262 FF               [12]  895 	mov	r7,a
      000263 33               [12]  896 	rlc	a
      000264 95 E0            [12]  897 	subb	a,acc
      000266 FE               [12]  898 	mov	r6,a
      000267 EF               [12]  899 	mov	a,r7
      000268 24 FB            [12]  900 	add	a,#0xFB
      00026A FF               [12]  901 	mov	r7,a
      00026B EE               [12]  902 	mov	a,r6
      00026C 34 FF            [12]  903 	addc	a,#0xFF
      00026E FE               [12]  904 	mov	r6,a
      00026F 4F               [12]  905 	orl	a,r7
                                    906 ;	testparking.c:277: plot[0] = 0;
      000270 70 0D            [24]  907 	jnz	00111$
      000272 78 3A            [12]  908 	mov	r0,#_plot
      000274 F6               [12]  909 	mov	@r0,a
                                    910 ;	testparking.c:285: __endasm;
      000275 78 39            [12]  911 	mov r0,#(_log + 0x0009)
      000277 E6               [12]  912 	mov a,@r0
      000278 FF               [12]  913 	mov r7,a
      000279 74 7F            [12]  914 	mov a,#0x7F
      00027B 5F               [12]  915 	anl a,r7
      00027C F6               [12]  916 	mov @r0,a
      00027D 80 0C            [24]  917 	sjmp	00112$
      00027F                        918 00111$:
                                    919 ;	testparking.c:287: plot[1] = 0;
      00027F 78 3B            [12]  920 	mov	r0,#(_plot + 0x0001)
      000281 76 00            [12]  921 	mov	@r0,#0x00
                                    922 ;	testparking.c:295: __endasm;
      000283 78 39            [12]  923 	mov r0,#(_log + 0x0009)
      000285 E6               [12]  924 	mov a,@r0
      000286 FF               [12]  925 	mov r7,a
      000287 74 80            [12]  926 	mov a,#0x80
      000289 4F               [12]  927 	orl a,r7
      00028A F6               [12]  928 	mov @r0,a
      00028B                        929 00112$:
                                    930 ;	testparking.c:297: SemaphoreSignal( mutex );
      00028B 78 3B            [12]  931 	mov	r0,#_mutex
      00028D 06               [12]  932 	inc	@r0
                                    933 ;	testparking.c:299: SemaphoreSignal( print );
      00028E 78 3D            [12]  934 	mov	r0,#_print
      000290 06               [12]  935 	inc	@r0
      000291 22               [24]  936 	ret
                                    937 ;------------------------------------------------------------
                                    938 ;Allocation info for local variables in function 'Printer'
                                    939 ;------------------------------------------------------------
                                    940 ;	testparking.c:302: void Printer(void) {
                                    941 ;	-----------------------------------------
                                    942 ;	 function Printer
                                    943 ;	-----------------------------------------
      000292                        944 _Printer:
                                    945 ;	testparking.c:303: TMOD |= 0x20;
      000292 43 89 20         [24]  946 	orl	_TMOD,#0x20
                                    947 ;	testparking.c:304: TH1 = -6;
      000295 75 8D FA         [24]  948 	mov	_TH1,#0xFA
                                    949 ;	testparking.c:305: SCON = 0x50;
      000298 75 98 50         [24]  950 	mov	_SCON,#0x50
                                    951 ;	testparking.c:306: TR1 = 1;
      00029B D2 8E            [12]  952 	setb	_TR1
                                    953 ;	testparking.c:308: SemaphoreWait( print );
      00029D 78 3D            [12]  954 	mov	r0,#_print
      00029F 16               [12]  955 	dec	@r0
      0002A0                        956 00101$:
      0002A0 78 3D            [12]  957 	mov	r0,#_print
      0002A2 E6               [12]  958 	mov	a,@r0
      0002A3 20 E7 FA         [24]  959 	jb	acc.7,00101$
                                    960 ;	testparking.c:309: SemaphoreWait( print );
      0002A6 78 3D            [12]  961 	mov	r0,#_print
      0002A8 16               [12]  962 	dec	@r0
      0002A9                        963 00104$:
      0002A9 78 3D            [12]  964 	mov	r0,#_print
      0002AB E6               [12]  965 	mov	a,@r0
      0002AC 20 E7 FA         [24]  966 	jb	acc.7,00104$
                                    967 ;	testparking.c:310: SemaphoreWait( print );
      0002AF 78 3D            [12]  968 	mov	r0,#_print
      0002B1 16               [12]  969 	dec	@r0
      0002B2                        970 00107$:
      0002B2 78 3D            [12]  971 	mov	r0,#_print
      0002B4 E6               [12]  972 	mov	a,@r0
      0002B5 20 E7 FA         [24]  973 	jb	acc.7,00107$
                                    974 ;	testparking.c:311: SemaphoreWait( print );
      0002B8 78 3D            [12]  975 	mov	r0,#_print
      0002BA 16               [12]  976 	dec	@r0
      0002BB                        977 00110$:
      0002BB 78 3D            [12]  978 	mov	r0,#_print
      0002BD E6               [12]  979 	mov	a,@r0
      0002BE 20 E7 FA         [24]  980 	jb	acc.7,00110$
                                    981 ;	testparking.c:312: SemaphoreWait( print );
      0002C1 78 3D            [12]  982 	mov	r0,#_print
      0002C3 16               [12]  983 	dec	@r0
      0002C4                        984 00113$:
      0002C4 78 3D            [12]  985 	mov	r0,#_print
      0002C6 E6               [12]  986 	mov	a,@r0
      0002C7 20 E7 FA         [24]  987 	jb	acc.7,00113$
                                    988 ;	testparking.c:313: SemaphoreWait( print );
      0002CA 78 3D            [12]  989 	mov	r0,#_print
      0002CC 16               [12]  990 	dec	@r0
      0002CD                        991 00116$:
      0002CD 78 3D            [12]  992 	mov	r0,#_print
      0002CF E6               [12]  993 	mov	a,@r0
      0002D0 20 E7 FA         [24]  994 	jb	acc.7,00116$
                                    995 ;	testparking.c:314: SemaphoreWait( print );
      0002D3 78 3D            [12]  996 	mov	r0,#_print
      0002D5 16               [12]  997 	dec	@r0
      0002D6                        998 00119$:
      0002D6 78 3D            [12]  999 	mov	r0,#_print
      0002D8 E6               [12] 1000 	mov	a,@r0
      0002D9 20 E7 FA         [24] 1001 	jb	acc.7,00119$
                                   1002 ;	testparking.c:315: SemaphoreWait( print );
      0002DC 78 3D            [12] 1003 	mov	r0,#_print
      0002DE 16               [12] 1004 	dec	@r0
      0002DF                       1005 00122$:
      0002DF 78 3D            [12] 1006 	mov	r0,#_print
      0002E1 E6               [12] 1007 	mov	a,@r0
      0002E2 20 E7 FA         [24] 1008 	jb	acc.7,00122$
                                   1009 ;	testparking.c:316: SemaphoreWait( print );
      0002E5 78 3D            [12] 1010 	mov	r0,#_print
      0002E7 16               [12] 1011 	dec	@r0
      0002E8                       1012 00125$:
      0002E8 78 3D            [12] 1013 	mov	r0,#_print
      0002EA E6               [12] 1014 	mov	a,@r0
      0002EB 20 E7 FA         [24] 1015 	jb	acc.7,00125$
                                   1016 ;	testparking.c:317: SemaphoreWait( print );
      0002EE 78 3D            [12] 1017 	mov	r0,#_print
      0002F0 16               [12] 1018 	dec	@r0
      0002F1                       1019 00128$:
      0002F1 78 3D            [12] 1020 	mov	r0,#_print
      0002F3 E6               [12] 1021 	mov	a,@r0
      0002F4 20 E7 FA         [24] 1022 	jb	acc.7,00128$
                                   1023 ;	testparking.c:319: t = 0;
      0002F7 78 4E            [12] 1024 	mov	r0,#_t
      0002F9 76 00            [12] 1025 	mov	@r0,#0x00
                                   1026 ;	testparking.c:320: current = 1;
      0002FB 78 4B            [12] 1027 	mov	r0,#_current
      0002FD 76 01            [12] 1028 	mov	@r0,#0x01
                                   1029 ;	testparking.c:321: while( t<10 ){
      0002FF                       1030 00218$:
      0002FF 78 4E            [12] 1031 	mov	r0,#_t
      000301 C3               [12] 1032 	clr	c
      000302 E6               [12] 1033 	mov	a,@r0
      000303 64 80            [12] 1034 	xrl	a,#0x80
      000305 94 8A            [12] 1035 	subb	a,#0x8a
      000307 40 01            [24] 1036 	jc	00476$
      000309 22               [24] 1037 	ret
      00030A                       1038 00476$:
                                   1039 ;	testparking.c:322: for(j=0; j<10; j++){
      00030A 78 5B            [12] 1040 	mov	r0,#_j
      00030C 76 00            [12] 1041 	mov	@r0,#0x00
      00030E                       1042 00222$:
      00030E 78 5B            [12] 1043 	mov	r0,#_j
      000310 C3               [12] 1044 	clr	c
      000311 E6               [12] 1045 	mov	a,@r0
      000312 64 80            [12] 1046 	xrl	a,#0x80
      000314 94 8A            [12] 1047 	subb	a,#0x8a
      000316 40 03            [24] 1048 	jc	00477$
      000318 02 04 53         [24] 1049 	ljmp	00217$
      00031B                       1050 00477$:
                                   1051 ;	testparking.c:323: temp1 = log[j];
      00031B 78 5B            [12] 1052 	mov	r0,#_j
      00031D E6               [12] 1053 	mov	a,@r0
      00031E 24 30            [12] 1054 	add	a,#_log
      000320 F9               [12] 1055 	mov	r1,a
      000321 78 4C            [12] 1056 	mov	r0,#_temp1
      000323 E7               [12] 1057 	mov	a,@r1
      000324 F6               [12] 1058 	mov	@r0,a
                                   1059 ;	testparking.c:324: temp2 = ( temp1 & 0x7F );
      000325 78 4C            [12] 1060 	mov	r0,#_temp1
      000327 79 4D            [12] 1061 	mov	r1,#_temp2
      000329 74 7F            [12] 1062 	mov	a,#0x7F
      00032B 56               [12] 1063 	anl	a,@r0
      00032C F7               [12] 1064 	mov	@r1,a
                                   1065 ;	testparking.c:325: if( temp2==current ){
      00032D 78 4D            [12] 1066 	mov	r0,#_temp2
      00032F 79 4B            [12] 1067 	mov	r1,#_current
      000331 86 F0            [24] 1068 	mov	b,@r0
      000333 E7               [12] 1069 	mov	a,@r1
      000334 B5 F0 02         [24] 1070 	cjne	a,b,00478$
      000337 80 03            [24] 1071 	sjmp	00479$
      000339                       1072 00478$:
      000339 02 04 4D         [24] 1073 	ljmp	00223$
      00033C                       1074 00479$:
                                   1075 ;	testparking.c:326: SBUF = 'c';
      00033C 75 99 63         [24] 1076 	mov	_SBUF,#0x63
                                   1077 ;	testparking.c:327: while (!TI) { }
      00033F                       1078 00131$:
                                   1079 ;	testparking.c:328: TI = 0;
      00033F 10 99 02         [24] 1080 	jbc	_TI,00480$
      000342 80 FB            [24] 1081 	sjmp	00131$
      000344                       1082 00480$:
                                   1083 ;	testparking.c:329: SBUF = 'a';
      000344 75 99 61         [24] 1084 	mov	_SBUF,#0x61
                                   1085 ;	testparking.c:330: while (!TI) { }
      000347                       1086 00134$:
                                   1087 ;	testparking.c:331: TI = 0;
      000347 10 99 02         [24] 1088 	jbc	_TI,00481$
      00034A 80 FB            [24] 1089 	sjmp	00134$
      00034C                       1090 00481$:
                                   1091 ;	testparking.c:332: SBUF = 'r';
      00034C 75 99 72         [24] 1092 	mov	_SBUF,#0x72
                                   1093 ;	testparking.c:333: while (!TI) { }
      00034F                       1094 00137$:
                                   1095 ;	testparking.c:334: TI = 0;
      00034F 10 99 02         [24] 1096 	jbc	_TI,00482$
      000352 80 FB            [24] 1097 	sjmp	00137$
      000354                       1098 00482$:
                                   1099 ;	testparking.c:335: SBUF = '1' + j/2;
      000354 78 5B            [12] 1100 	mov	r0,#_j
      000356 C2 D5            [12] 1101 	clr	F0
      000358 75 F0 02         [24] 1102 	mov	b,#0x02
      00035B E6               [12] 1103 	mov	a,@r0
      00035C 30 E7 04         [24] 1104 	jnb	acc.7,00483$
      00035F B2 D5            [12] 1105 	cpl	F0
      000361 F4               [12] 1106 	cpl	a
      000362 04               [12] 1107 	inc	a
      000363                       1108 00483$:
      000363 84               [48] 1109 	div	ab
      000364 30 D5 02         [24] 1110 	jnb	F0,00484$
      000367 F4               [12] 1111 	cpl	a
      000368 04               [12] 1112 	inc	a
      000369                       1113 00484$:
      000369 24 31            [12] 1114 	add	a,#0x31
      00036B F5 99            [12] 1115 	mov	_SBUF,a
                                   1116 ;	testparking.c:336: while (!TI) { }
      00036D                       1117 00140$:
                                   1118 ;	testparking.c:337: TI = 0;
      00036D 10 99 02         [24] 1119 	jbc	_TI,00485$
      000370 80 FB            [24] 1120 	sjmp	00140$
      000372                       1121 00485$:
                                   1122 ;	testparking.c:338: SBUF = ' ';
      000372 75 99 20         [24] 1123 	mov	_SBUF,#0x20
                                   1124 ;	testparking.c:339: while (!TI) { }
      000375                       1125 00143$:
                                   1126 ;	testparking.c:340: TI = 0;
      000375 10 99 02         [24] 1127 	jbc	_TI,00486$
      000378 80 FB            [24] 1128 	sjmp	00143$
      00037A                       1129 00486$:
                                   1130 ;	testparking.c:341: if(j%2){
      00037A 78 5B            [12] 1131 	mov	r0,#_j
      00037C E6               [12] 1132 	mov	a,@r0
      00037D A2 E7            [12] 1133 	mov	c,acc.7
      00037F 54 01            [12] 1134 	anl	a,#0x01
      000381 60 04            [24] 1135 	jz	00487$
      000383 50 02            [24] 1136 	jnc	00487$
      000385 44 FE            [12] 1137 	orl	a,#0xfe
      000387                       1138 00487$:
      000387 60 1A            [24] 1139 	jz	00162$
                                   1140 ;	testparking.c:342: SBUF = 'o';
      000389 75 99 6F         [24] 1141 	mov	_SBUF,#0x6F
                                   1142 ;	testparking.c:343: while (!TI) { }
      00038C                       1143 00146$:
                                   1144 ;	testparking.c:344: TI = 0;
      00038C 10 99 02         [24] 1145 	jbc	_TI,00489$
      00038F 80 FB            [24] 1146 	sjmp	00146$
      000391                       1147 00489$:
                                   1148 ;	testparking.c:345: SBUF = 'u';
      000391 75 99 75         [24] 1149 	mov	_SBUF,#0x75
                                   1150 ;	testparking.c:346: while (!TI) { }
      000394                       1151 00149$:
                                   1152 ;	testparking.c:347: TI = 0;
      000394 10 99 02         [24] 1153 	jbc	_TI,00490$
      000397 80 FB            [24] 1154 	sjmp	00149$
      000399                       1155 00490$:
                                   1156 ;	testparking.c:348: SBUF = 't';
      000399 75 99 74         [24] 1157 	mov	_SBUF,#0x74
                                   1158 ;	testparking.c:349: while (!TI) { }
      00039C                       1159 00152$:
                                   1160 ;	testparking.c:350: TI = 0;
      00039C 10 99 02         [24] 1161 	jbc	_TI,00491$
      00039F 80 FB            [24] 1162 	sjmp	00152$
      0003A1                       1163 00491$:
      0003A1 80 10            [24] 1164 	sjmp	00163$
      0003A3                       1165 00162$:
                                   1166 ;	testparking.c:353: SBUF = 'i';
      0003A3 75 99 69         [24] 1167 	mov	_SBUF,#0x69
                                   1168 ;	testparking.c:354: while (!TI) { }
      0003A6                       1169 00155$:
                                   1170 ;	testparking.c:355: TI = 0;
      0003A6 10 99 02         [24] 1171 	jbc	_TI,00492$
      0003A9 80 FB            [24] 1172 	sjmp	00155$
      0003AB                       1173 00492$:
                                   1174 ;	testparking.c:356: SBUF = 'n';
      0003AB 75 99 6E         [24] 1175 	mov	_SBUF,#0x6E
                                   1176 ;	testparking.c:357: while (!TI) { }
      0003AE                       1177 00158$:
                                   1178 ;	testparking.c:358: TI = 0;
      0003AE 10 99 02         [24] 1179 	jbc	_TI,00493$
      0003B1 80 FB            [24] 1180 	sjmp	00158$
      0003B3                       1181 00493$:
      0003B3                       1182 00163$:
                                   1183 ;	testparking.c:360: SBUF = ' ';
      0003B3 75 99 20         [24] 1184 	mov	_SBUF,#0x20
                                   1185 ;	testparking.c:361: while (!TI) { }
      0003B6                       1186 00164$:
                                   1187 ;	testparking.c:362: TI = 0;
      0003B6 10 99 02         [24] 1188 	jbc	_TI,00494$
      0003B9 80 FB            [24] 1189 	sjmp	00164$
      0003BB                       1190 00494$:
                                   1191 ;	testparking.c:363: SBUF = 'p';
      0003BB 75 99 70         [24] 1192 	mov	_SBUF,#0x70
                                   1193 ;	testparking.c:364: while (!TI) { }
      0003BE                       1194 00167$:
                                   1195 ;	testparking.c:365: TI = 0;
      0003BE 10 99 02         [24] 1196 	jbc	_TI,00495$
      0003C1 80 FB            [24] 1197 	sjmp	00167$
      0003C3                       1198 00495$:
                                   1199 ;	testparking.c:366: SBUF = 'l';
      0003C3 75 99 6C         [24] 1200 	mov	_SBUF,#0x6C
                                   1201 ;	testparking.c:367: while (!TI) { }
      0003C6                       1202 00170$:
                                   1203 ;	testparking.c:368: TI = 0;
      0003C6 10 99 02         [24] 1204 	jbc	_TI,00496$
      0003C9 80 FB            [24] 1205 	sjmp	00170$
      0003CB                       1206 00496$:
                                   1207 ;	testparking.c:369: SBUF = 'o';
      0003CB 75 99 6F         [24] 1208 	mov	_SBUF,#0x6F
                                   1209 ;	testparking.c:370: while (!TI) { }
      0003CE                       1210 00173$:
                                   1211 ;	testparking.c:371: TI = 0;
      0003CE 10 99 02         [24] 1212 	jbc	_TI,00497$
      0003D1 80 FB            [24] 1213 	sjmp	00173$
      0003D3                       1214 00497$:
                                   1215 ;	testparking.c:372: SBUF = 't';
      0003D3 75 99 74         [24] 1216 	mov	_SBUF,#0x74
                                   1217 ;	testparking.c:373: while (!TI) { }
      0003D6                       1218 00176$:
                                   1219 ;	testparking.c:374: TI = 0;
      0003D6 10 99 02         [24] 1220 	jbc	_TI,00498$
      0003D9 80 FB            [24] 1221 	sjmp	00176$
      0003DB                       1222 00498$:
                                   1223 ;	testparking.c:375: SBUF = '1' + ( temp1 / 0x80 );
      0003DB 78 4C            [12] 1224 	mov	r0,#_temp1
      0003DD E6               [12] 1225 	mov	a,@r0
      0003DE 23               [12] 1226 	rl	a
      0003DF 54 01            [12] 1227 	anl	a,#0x01
      0003E1 FF               [12] 1228 	mov	r7,a
      0003E2 24 31            [12] 1229 	add	a,#0x31
      0003E4 F5 99            [12] 1230 	mov	_SBUF,a
                                   1231 ;	testparking.c:376: while (!TI) { }
      0003E6                       1232 00179$:
                                   1233 ;	testparking.c:377: TI = 0;
      0003E6 10 99 02         [24] 1234 	jbc	_TI,00499$
      0003E9 80 FB            [24] 1235 	sjmp	00179$
      0003EB                       1236 00499$:
                                   1237 ;	testparking.c:378: SBUF = ' ';
      0003EB 75 99 20         [24] 1238 	mov	_SBUF,#0x20
                                   1239 ;	testparking.c:379: while (!TI) { }
      0003EE                       1240 00182$:
                                   1241 ;	testparking.c:380: TI = 0;
      0003EE 10 99 02         [24] 1242 	jbc	_TI,00500$
      0003F1 80 FB            [24] 1243 	sjmp	00182$
      0003F3                       1244 00500$:
                                   1245 ;	testparking.c:381: SBUF = 'a';
      0003F3 75 99 61         [24] 1246 	mov	_SBUF,#0x61
                                   1247 ;	testparking.c:382: while (!TI) { }
      0003F6                       1248 00185$:
                                   1249 ;	testparking.c:383: TI = 0;
      0003F6 10 99 02         [24] 1250 	jbc	_TI,00501$
      0003F9 80 FB            [24] 1251 	sjmp	00185$
      0003FB                       1252 00501$:
                                   1253 ;	testparking.c:384: SBUF = 't';
      0003FB 75 99 74         [24] 1254 	mov	_SBUF,#0x74
                                   1255 ;	testparking.c:385: while (!TI) { }
      0003FE                       1256 00188$:
                                   1257 ;	testparking.c:386: TI = 0;
      0003FE 10 99 02         [24] 1258 	jbc	_TI,00502$
      000401 80 FB            [24] 1259 	sjmp	00188$
      000403                       1260 00502$:
                                   1261 ;	testparking.c:387: SBUF = ' ';
      000403 75 99 20         [24] 1262 	mov	_SBUF,#0x20
                                   1263 ;	testparking.c:388: while (!TI) { }
      000406                       1264 00191$:
                                   1265 ;	testparking.c:389: TI = 0;
      000406 10 99 02         [24] 1266 	jbc	_TI,00503$
      000409 80 FB            [24] 1267 	sjmp	00191$
      00040B                       1268 00503$:
                                   1269 ;	testparking.c:390: SBUF = 't';
      00040B 75 99 74         [24] 1270 	mov	_SBUF,#0x74
                                   1271 ;	testparking.c:391: while (!TI) { }
      00040E                       1272 00194$:
                                   1273 ;	testparking.c:392: TI = 0;
      00040E 10 99 02         [24] 1274 	jbc	_TI,00504$
      000411 80 FB            [24] 1275 	sjmp	00194$
      000413                       1276 00504$:
                                   1277 ;	testparking.c:393: SBUF = 'i';
      000413 75 99 69         [24] 1278 	mov	_SBUF,#0x69
                                   1279 ;	testparking.c:394: while (!TI) { }
      000416                       1280 00197$:
                                   1281 ;	testparking.c:395: TI = 0;
      000416 10 99 02         [24] 1282 	jbc	_TI,00505$
      000419 80 FB            [24] 1283 	sjmp	00197$
      00041B                       1284 00505$:
                                   1285 ;	testparking.c:396: SBUF = 'm';
      00041B 75 99 6D         [24] 1286 	mov	_SBUF,#0x6D
                                   1287 ;	testparking.c:397: while (!TI) { }
      00041E                       1288 00200$:
                                   1289 ;	testparking.c:398: TI = 0;
      00041E 10 99 02         [24] 1290 	jbc	_TI,00506$
      000421 80 FB            [24] 1291 	sjmp	00200$
      000423                       1292 00506$:
                                   1293 ;	testparking.c:399: SBUF = 'e';
      000423 75 99 65         [24] 1294 	mov	_SBUF,#0x65
                                   1295 ;	testparking.c:400: while (!TI) { }
      000426                       1296 00203$:
                                   1297 ;	testparking.c:401: TI = 0;
      000426 10 99 02         [24] 1298 	jbc	_TI,00507$
      000429 80 FB            [24] 1299 	sjmp	00203$
      00042B                       1300 00507$:
                                   1301 ;	testparking.c:402: SBUF = ' ';
      00042B 75 99 20         [24] 1302 	mov	_SBUF,#0x20
                                   1303 ;	testparking.c:403: while (!TI) { }
      00042E                       1304 00206$:
                                   1305 ;	testparking.c:404: TI = 0;
      00042E 10 99 02         [24] 1306 	jbc	_TI,00508$
      000431 80 FB            [24] 1307 	sjmp	00206$
      000433                       1308 00508$:
                                   1309 ;	testparking.c:405: SBUF = '0' + ( temp1 & 0x7F );
      000433 78 4C            [12] 1310 	mov	r0,#_temp1
      000435 74 7F            [12] 1311 	mov	a,#0x7F
      000437 56               [12] 1312 	anl	a,@r0
      000438 FF               [12] 1313 	mov	r7,a
      000439 24 30            [12] 1314 	add	a,#0x30
      00043B F5 99            [12] 1315 	mov	_SBUF,a
                                   1316 ;	testparking.c:406: while (!TI) { }
      00043D                       1317 00209$:
                                   1318 ;	testparking.c:407: TI = 0;
      00043D 10 99 02         [24] 1319 	jbc	_TI,00509$
      000440 80 FB            [24] 1320 	sjmp	00209$
      000442                       1321 00509$:
                                   1322 ;	testparking.c:408: SBUF = '\n';
      000442 75 99 0A         [24] 1323 	mov	_SBUF,#0x0A
                                   1324 ;	testparking.c:409: while (!TI) { }
      000445                       1325 00212$:
                                   1326 ;	testparking.c:410: TI = 0;
      000445 10 99 02         [24] 1327 	jbc	_TI,00510$
      000448 80 FB            [24] 1328 	sjmp	00212$
      00044A                       1329 00510$:
                                   1330 ;	testparking.c:411: t++;
      00044A 78 4E            [12] 1331 	mov	r0,#_t
      00044C 06               [12] 1332 	inc	@r0
      00044D                       1333 00223$:
                                   1334 ;	testparking.c:322: for(j=0; j<10; j++){
      00044D 78 5B            [12] 1335 	mov	r0,#_j
      00044F 06               [12] 1336 	inc	@r0
      000450 02 03 0E         [24] 1337 	ljmp	00222$
      000453                       1338 00217$:
                                   1339 ;	testparking.c:414: current++;
      000453 78 4B            [12] 1340 	mov	r0,#_current
      000455 06               [12] 1341 	inc	@r0
      000456 02 02 FF         [24] 1342 	ljmp	00218$
                                   1343 ;------------------------------------------------------------
                                   1344 ;Allocation info for local variables in function 'main'
                                   1345 ;------------------------------------------------------------
                                   1346 ;	testparking.c:420: void main(void) {
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function main
                                   1349 ;	-----------------------------------------
      000459                       1350 _main:
                                   1351 ;	testparking.c:422: plot[0] = plot[1] = 0;
      000459 78 3B            [12] 1352 	mov	r0,#(_plot + 0x0001)
      00045B 76 00            [12] 1353 	mov	@r0,#0x00
      00045D 78 3A            [12] 1354 	mov	r0,#_plot
      00045F 76 00            [12] 1355 	mov	@r0,#0x00
                                   1356 ;	testparking.c:424: SemaphoreCreate(mutex, 1);
      000461 78 3B            [12] 1357 	mov	r0,#_mutex
      000463 76 01            [12] 1358 	mov	@r0,#0x01
                                   1359 ;	testparking.c:425: SemaphoreCreate(print, 0);
      000465 78 3D            [12] 1360 	mov	r0,#_print
      000467 76 00            [12] 1361 	mov	@r0,#0x00
                                   1362 ;	testparking.c:427: ThreadCreate(Car1);
      000469 90 00 14         [24] 1363 	mov	dptr,#_Car1
      00046C 12 06 35         [24] 1364 	lcall	_ThreadCreate
                                   1365 ;	testparking.c:428: ThreadCreate(Car2);
      00046F 90 00 92         [24] 1366 	mov	dptr,#_Car2
      000472 12 06 35         [24] 1367 	lcall	_ThreadCreate
                                   1368 ;	testparking.c:429: ThreadCreate(Car3);
      000475 90 01 12         [24] 1369 	mov	dptr,#_Car3
      000478 12 06 35         [24] 1370 	lcall	_ThreadCreate
                                   1371 ;	testparking.c:430: ThreadCreate(Car4);
      00047B 90 01 92         [24] 1372 	mov	dptr,#_Car4
      00047E 12 06 35         [24] 1373 	lcall	_ThreadCreate
                                   1374 ;	testparking.c:431: ThreadCreate(Car5);
      000481 90 02 12         [24] 1375 	mov	dptr,#_Car5
      000484 12 06 35         [24] 1376 	lcall	_ThreadCreate
                                   1377 ;	testparking.c:432: ThreadCreate(Printer);
      000487 90 02 92         [24] 1378 	mov	dptr,#_Printer
      00048A 02 06 35         [24] 1379 	ljmp	_ThreadCreate
                                   1380 ;------------------------------------------------------------
                                   1381 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                   1382 ;------------------------------------------------------------
                                   1383 ;	testparking.c:435: void _sdcc_gsinit_startup(void) {
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function _sdcc_gsinit_startup
                                   1386 ;	-----------------------------------------
      00048D                       1387 __sdcc_gsinit_startup:
                                   1388 ;	testparking.c:438: __endasm;
      00048D 02 05 ED         [24] 1389 	ljmp _Bootstrap
      000490 22               [24] 1390 	ret
                                   1391 ;------------------------------------------------------------
                                   1392 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                   1393 ;------------------------------------------------------------
                                   1394 ;	testparking.c:441: void _mcs51_genRAMCLEAR(void) {}
                                   1395 ;	-----------------------------------------
                                   1396 ;	 function _mcs51_genRAMCLEAR
                                   1397 ;	-----------------------------------------
      000491                       1398 __mcs51_genRAMCLEAR:
      000491 22               [24] 1399 	ret
                                   1400 ;------------------------------------------------------------
                                   1401 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                   1402 ;------------------------------------------------------------
                                   1403 ;	testparking.c:442: void _mcs51_genXINIT(void) {}
                                   1404 ;	-----------------------------------------
                                   1405 ;	 function _mcs51_genXINIT
                                   1406 ;	-----------------------------------------
      000492                       1407 __mcs51_genXINIT:
      000492 22               [24] 1408 	ret
                                   1409 ;------------------------------------------------------------
                                   1410 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                   1411 ;------------------------------------------------------------
                                   1412 ;	testparking.c:443: void _mcs51_genXRAMCLEAR(void) {}
                                   1413 ;	-----------------------------------------
                                   1414 ;	 function _mcs51_genXRAMCLEAR
                                   1415 ;	-----------------------------------------
      000493                       1416 __mcs51_genXRAMCLEAR:
      000493 22               [24] 1417 	ret
                                   1418 ;------------------------------------------------------------
                                   1419 ;Allocation info for local variables in function 'timer0_ISR'
                                   1420 ;------------------------------------------------------------
                                   1421 ;	testparking.c:444: void timer0_ISR(void) __interrupt(1) {
                                   1422 ;	-----------------------------------------
                                   1423 ;	 function timer0_ISR
                                   1424 ;	-----------------------------------------
      000494                       1425 _timer0_ISR:
                                   1426 ;	testparking.c:447: __endasm;
      000494 02 05 39         [24] 1427 	ljmp _myTimer0Handler
      000497 32               [24] 1428 	reti
                                   1429 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1430 ;	eliminated unneeded push/pop psw
                                   1431 ;	eliminated unneeded push/pop dpl
                                   1432 ;	eliminated unneeded push/pop dph
                                   1433 ;	eliminated unneeded push/pop b
                                   1434 ;	eliminated unneeded push/pop acc
                                   1435 	.area CSEG    (CODE)
                                   1436 	.area CONST   (CODE)
                                   1437 	.area XINIT   (CODE)
                                   1438 	.area CABS    (ABS,CODE)
