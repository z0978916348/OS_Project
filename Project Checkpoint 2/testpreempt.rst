                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sat Dec 21 08:01:00 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module testpreempt
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
                                     18 	.globl _Consumer
                                     19 	.globl _Producer
                                     20 	.globl _ThreadExit
                                     21 	.globl _ThreadCreate
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _sharedVar
                                    119 	.globl _Buffer
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 ;--------------------------------------------------------
                                    239 ; Stack segment in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	SSEG
      000008                        242 __start__stack:
      000008                        243 	.ds	1
                                    244 
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                           000030   249 _Buffer	=	0x0030
                           000033   250 _sharedVar	=	0x0033
                                    251 ;--------------------------------------------------------
                                    252 ; absolute internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area IABS    (ABS,DATA)
                                    255 	.area IABS    (ABS,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; bit data
                                    258 ;--------------------------------------------------------
                                    259 	.area BSEG    (BIT)
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; interrupt vector 
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
      000000                        290 __interrupt_vect:
      000000 02 00 6D         [24]  291 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  292 	reti
      000004                        293 	.ds	7
      00000B 02 00 74         [24]  294 	ljmp	_timer0_ISR
                                    295 ;--------------------------------------------------------
                                    296 ; global & static initialisations
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.globl __sdcc_gsinit_startup
                                    303 	.globl __sdcc_program_startup
                                    304 	.globl __start__stack
                                    305 	.globl __mcs51_genXINIT
                                    306 	.globl __mcs51_genXRAMCLEAR
                                    307 	.globl __mcs51_genRAMCLEAR
                                    308 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  309 	ljmp	__sdcc_program_startup
                                    310 ;--------------------------------------------------------
                                    311 ; Home
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area HOME    (CODE)
      00000E                        315 __sdcc_program_startup:
      00000E 02 00 5A         [24]  316 	ljmp	_main
                                    317 ;	return from main will return to caller
                                    318 ;--------------------------------------------------------
                                    319 ; code
                                    320 ;--------------------------------------------------------
                                    321 	.area CSEG    (CODE)
                                    322 ;------------------------------------------------------------
                                    323 ;Allocation info for local variables in function 'Producer'
                                    324 ;------------------------------------------------------------
                                    325 ;	testpreempt.c:7: void Producer(void) {
                                    326 ;	-----------------------------------------
                                    327 ;	 function Producer
                                    328 ;	-----------------------------------------
      000014                        329 _Producer:
                           000007   330 	ar7 = 0x07
                           000006   331 	ar6 = 0x06
                           000005   332 	ar5 = 0x05
                           000004   333 	ar4 = 0x04
                           000003   334 	ar3 = 0x03
                           000002   335 	ar2 = 0x02
                           000001   336 	ar1 = 0x01
                           000000   337 	ar0 = 0x00
                                    338 ;	testpreempt.c:8: sharedVar = 'A';
      000014 78 33            [12]  339 	mov	r0,#_sharedVar
      000016 76 41            [12]  340 	mov	@r0,#0x41
                                    341 ;	testpreempt.c:10: while(Buffer) {}
      000018                        342 00101$:
      000018 78 30            [12]  343 	mov	r0,#_Buffer
      00001A E6               [12]  344 	mov	a,@r0
      00001B 70 FB            [24]  345 	jnz	00101$
                                    346 ;	testpreempt.c:11: EA = 0;     // disable interrupts 
      00001D C2 AF            [12]  347 	clr	_EA
                                    348 ;	testpreempt.c:12: Buffer = sharedVar;
      00001F 78 33            [12]  349 	mov	r0,#_sharedVar
      000021 79 30            [12]  350 	mov	r1,#_Buffer
      000023 E6               [12]  351 	mov	a,@r0
      000024 F7               [12]  352 	mov	@r1,a
                                    353 ;	testpreempt.c:13: EA = 1;     // reenable interrupts 
      000025 D2 AF            [12]  354 	setb	_EA
                                    355 ;	testpreempt.c:14: if(sharedVar=='Z') sharedVar = 'A';
      000027 78 33            [12]  356 	mov	r0,#_sharedVar
      000029 B6 5A 06         [24]  357 	cjne	@r0,#0x5A,00105$
      00002C 78 33            [12]  358 	mov	r0,#_sharedVar
      00002E 76 41            [12]  359 	mov	@r0,#0x41
      000030 80 E6            [24]  360 	sjmp	00101$
      000032                        361 00105$:
                                    362 ;	testpreempt.c:15: else sharedVar++;
      000032 78 33            [12]  363 	mov	r0,#_sharedVar
      000034 06               [12]  364 	inc	@r0
      000035 80 E1            [24]  365 	sjmp	00101$
                                    366 ;------------------------------------------------------------
                                    367 ;Allocation info for local variables in function 'Consumer'
                                    368 ;------------------------------------------------------------
                                    369 ;	testpreempt.c:19: void Consumer(void) {
                                    370 ;	-----------------------------------------
                                    371 ;	 function Consumer
                                    372 ;	-----------------------------------------
      000037                        373 _Consumer:
                                    374 ;	testpreempt.c:20: TMOD |= 0x20;   // preserve the Bootstrap code's setting 
      000037 43 89 20         [24]  375 	orl	_TMOD,#0x20
                                    376 ;	testpreempt.c:21: TH1 = -6;
      00003A 75 8D FA         [24]  377 	mov	_TH1,#0xFA
                                    378 ;	testpreempt.c:22: SCON = 0x50;
      00003D 75 98 50         [24]  379 	mov	_SCON,#0x50
                                    380 ;	testpreempt.c:23: TR1 = 1;
      000040 D2 8E            [12]  381 	setb	_TR1
                                    382 ;	testpreempt.c:25: while(!Buffer) {}
      000042                        383 00101$:
      000042 78 30            [12]  384 	mov	r0,#_Buffer
      000044 E6               [12]  385 	mov	a,@r0
      000045 60 FB            [24]  386 	jz	00101$
                                    387 ;	testpreempt.c:26: EA = 0;
      000047 C2 AF            [12]  388 	clr	_EA
                                    389 ;	testpreempt.c:27: SBUF = Buffer;
      000049 78 30            [12]  390 	mov	r0,#_Buffer
      00004B 86 99            [24]  391 	mov	_SBUF,@r0
                                    392 ;	testpreempt.c:28: Buffer = 0;
      00004D 78 30            [12]  393 	mov	r0,#_Buffer
      00004F 76 00            [12]  394 	mov	@r0,#0x00
                                    395 ;	testpreempt.c:29: EA = 1;
      000051 D2 AF            [12]  396 	setb	_EA
                                    397 ;	testpreempt.c:30: while (!TI) { }
      000053                        398 00104$:
                                    399 ;	testpreempt.c:31: TI = 0;
      000053 10 99 02         [24]  400 	jbc	_TI,00125$
      000056 80 FB            [24]  401 	sjmp	00104$
      000058                        402 00125$:
      000058 80 E8            [24]  403 	sjmp	00101$
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'main'
                                    406 ;------------------------------------------------------------
                                    407 ;	testpreempt.c:35: void main(void) {
                                    408 ;	-----------------------------------------
                                    409 ;	 function main
                                    410 ;	-----------------------------------------
      00005A                        411 _main:
                                    412 ;	testpreempt.c:36: Buffer = 0;
      00005A 78 30            [12]  413 	mov	r0,#_Buffer
      00005C 76 00            [12]  414 	mov	@r0,#0x00
                                    415 ;	testpreempt.c:38: ThreadCreate(Producer);
      00005E 90 00 14         [24]  416 	mov	dptr,#_Producer
      000061 12 01 2A         [24]  417 	lcall	_ThreadCreate
                                    418 ;	testpreempt.c:39: ThreadCreate(Consumer);
      000064 90 00 37         [24]  419 	mov	dptr,#_Consumer
      000067 12 01 2A         [24]  420 	lcall	_ThreadCreate
                                    421 ;	testpreempt.c:40: ThreadExit();
      00006A 02 01 E4         [24]  422 	ljmp	_ThreadExit
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    425 ;------------------------------------------------------------
                                    426 ;	testpreempt.c:43: void _sdcc_gsinit_startup(void) {
                                    427 ;	-----------------------------------------
                                    428 ;	 function _sdcc_gsinit_startup
                                    429 ;	-----------------------------------------
      00006D                        430 __sdcc_gsinit_startup:
                                    431 ;	testpreempt.c:46: __endasm;
      00006D 02 00 E9         [24]  432 	ljmp _Bootstrap
      000070 22               [24]  433 	ret
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    436 ;------------------------------------------------------------
                                    437 ;	testpreempt.c:49: void _mcs51_genRAMCLEAR(void) {}
                                    438 ;	-----------------------------------------
                                    439 ;	 function _mcs51_genRAMCLEAR
                                    440 ;	-----------------------------------------
      000071                        441 __mcs51_genRAMCLEAR:
      000071 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    445 ;------------------------------------------------------------
                                    446 ;	testpreempt.c:50: void _mcs51_genXINIT(void) {}
                                    447 ;	-----------------------------------------
                                    448 ;	 function _mcs51_genXINIT
                                    449 ;	-----------------------------------------
      000072                        450 __mcs51_genXINIT:
      000072 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    454 ;------------------------------------------------------------
                                    455 ;	testpreempt.c:51: void _mcs51_genXRAMCLEAR(void) {}
                                    456 ;	-----------------------------------------
                                    457 ;	 function _mcs51_genXRAMCLEAR
                                    458 ;	-----------------------------------------
      000073                        459 __mcs51_genXRAMCLEAR:
      000073 22               [24]  460 	ret
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'timer0_ISR'
                                    463 ;------------------------------------------------------------
                                    464 ;	testpreempt.c:52: void timer0_ISR(void) __interrupt(1) {
                                    465 ;	-----------------------------------------
                                    466 ;	 function timer0_ISR
                                    467 ;	-----------------------------------------
      000074                        468 _timer0_ISR:
                                    469 ;	testpreempt.c:55: __endasm;
      000074 02 00 AE         [24]  470 	ljmp _myTimer0Handler
      000077 32               [24]  471 	reti
                                    472 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    473 ;	eliminated unneeded push/pop psw
                                    474 ;	eliminated unneeded push/pop dpl
                                    475 ;	eliminated unneeded push/pop dph
                                    476 ;	eliminated unneeded push/pop b
                                    477 ;	eliminated unneeded push/pop acc
                                    478 	.area CSEG    (CODE)
                                    479 	.area CONST   (CODE)
                                    480 	.area XINIT   (CODE)
                                    481 	.area CABS    (ABS,CODE)
