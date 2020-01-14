                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Tue Dec 24 19:21:44 2019
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
                                    118 	.globl _Btail
                                    119 	.globl _Bhead
                                    120 	.globl _empty
                                    121 	.globl _full
                                    122 	.globl _mutex
                                    123 	.globl _sharedVar
                                    124 	.globl _Buffer
                                    125 	.globl _index
                                    126 	.globl _SelectThread
                                    127 	.globl _SaveCurrentSP
                                    128 	.globl _manager_ID
                                    129 	.globl _ID
                                    130 	.globl _Bitmap
                                    131 	.globl _ThreadSP
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 _P0	=	0x0080
                           000081   138 _SP	=	0x0081
                           000082   139 _DPL	=	0x0082
                           000083   140 _DPH	=	0x0083
                           000087   141 _PCON	=	0x0087
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008A   144 _TL0	=	0x008a
                           00008B   145 _TL1	=	0x008b
                           00008C   146 _TH0	=	0x008c
                           00008D   147 _TH1	=	0x008d
                           000090   148 _P1	=	0x0090
                           000098   149 _SCON	=	0x0098
                           000099   150 _SBUF	=	0x0099
                           0000A0   151 _P2	=	0x00a0
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 _PSW	=	0x00d0
                           0000E0   156 _ACC	=	0x00e0
                           0000F0   157 _B	=	0x00f0
                                    158 ;--------------------------------------------------------
                                    159 ; special function bits
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           000080   163 _P0_0	=	0x0080
                           000081   164 _P0_1	=	0x0081
                           000082   165 _P0_2	=	0x0082
                           000083   166 _P0_3	=	0x0083
                           000084   167 _P0_4	=	0x0084
                           000085   168 _P0_5	=	0x0085
                           000086   169 _P0_6	=	0x0086
                           000087   170 _P0_7	=	0x0087
                           000088   171 _IT0	=	0x0088
                           000089   172 _IE0	=	0x0089
                           00008A   173 _IT1	=	0x008a
                           00008B   174 _IE1	=	0x008b
                           00008C   175 _TR0	=	0x008c
                           00008D   176 _TF0	=	0x008d
                           00008E   177 _TR1	=	0x008e
                           00008F   178 _TF1	=	0x008f
                           000090   179 _P1_0	=	0x0090
                           000091   180 _P1_1	=	0x0091
                           000092   181 _P1_2	=	0x0092
                           000093   182 _P1_3	=	0x0093
                           000094   183 _P1_4	=	0x0094
                           000095   184 _P1_5	=	0x0095
                           000096   185 _P1_6	=	0x0096
                           000097   186 _P1_7	=	0x0097
                           000098   187 _RI	=	0x0098
                           000099   188 _TI	=	0x0099
                           00009A   189 _RB8	=	0x009a
                           00009B   190 _TB8	=	0x009b
                           00009C   191 _REN	=	0x009c
                           00009D   192 _SM2	=	0x009d
                           00009E   193 _SM1	=	0x009e
                           00009F   194 _SM0	=	0x009f
                           0000A0   195 _P2_0	=	0x00a0
                           0000A1   196 _P2_1	=	0x00a1
                           0000A2   197 _P2_2	=	0x00a2
                           0000A3   198 _P2_3	=	0x00a3
                           0000A4   199 _P2_4	=	0x00a4
                           0000A5   200 _P2_5	=	0x00a5
                           0000A6   201 _P2_6	=	0x00a6
                           0000A7   202 _P2_7	=	0x00a7
                           0000A8   203 _EX0	=	0x00a8
                           0000A9   204 _ET0	=	0x00a9
                           0000AA   205 _EX1	=	0x00aa
                           0000AB   206 _ET1	=	0x00ab
                           0000AC   207 _ES	=	0x00ac
                           0000AF   208 _EA	=	0x00af
                           0000B0   209 _P3_0	=	0x00b0
                           0000B1   210 _P3_1	=	0x00b1
                           0000B2   211 _P3_2	=	0x00b2
                           0000B3   212 _P3_3	=	0x00b3
                           0000B4   213 _P3_4	=	0x00b4
                           0000B5   214 _P3_5	=	0x00b5
                           0000B6   215 _P3_6	=	0x00b6
                           0000B7   216 _P3_7	=	0x00b7
                           0000B0   217 _RXD	=	0x00b0
                           0000B1   218 _TXD	=	0x00b1
                           0000B2   219 _INT0	=	0x00b2
                           0000B3   220 _INT1	=	0x00b3
                           0000B4   221 _T0	=	0x00b4
                           0000B5   222 _T1	=	0x00b5
                           0000B6   223 _WR	=	0x00b6
                           0000B7   224 _RD	=	0x00b7
                           0000B8   225 _PX0	=	0x00b8
                           0000B9   226 _PT0	=	0x00b9
                           0000BA   227 _PX1	=	0x00ba
                           0000BB   228 _PT1	=	0x00bb
                           0000BC   229 _PS	=	0x00bc
                           0000D0   230 _P	=	0x00d0
                           0000D1   231 _F1	=	0x00d1
                           0000D2   232 _OV	=	0x00d2
                           0000D3   233 _RS0	=	0x00d3
                           0000D4   234 _RS1	=	0x00d4
                           0000D5   235 _F0	=	0x00d5
                           0000D6   236 _AC	=	0x00d6
                           0000D7   237 _CY	=	0x00d7
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable register banks
                                    240 ;--------------------------------------------------------
                                    241 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        242 	.ds 8
                                    243 ;--------------------------------------------------------
                                    244 ; internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area DSEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable items in internal ram 
                                    249 ;--------------------------------------------------------
                                    250 ;--------------------------------------------------------
                                    251 ; Stack segment in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 	.area	SSEG
      000008                        254 __start__stack:
      000008                        255 	.ds	1
                                    256 
                                    257 ;--------------------------------------------------------
                                    258 ; indirectly addressable internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area ISEG    (DATA)
                           000020   261 _ThreadSP	=	0x0020
                           000024   262 _Bitmap	=	0x0024
                           000028   263 _ID	=	0x0028
                           000029   264 _manager_ID	=	0x0029
                           00002A   265 _SaveCurrentSP	=	0x002a
                           00002B   266 _SelectThread	=	0x002b
                           00002C   267 _index	=	0x002c
                           000030   268 _Buffer	=	0x0030
                           000033   269 _sharedVar	=	0x0033
                           000035   270 _mutex	=	0x0035
                           000036   271 _full	=	0x0036
                           000037   272 _empty	=	0x0037
                           00003B   273 _Bhead	=	0x003b
                           00003C   274 _Btail	=	0x003c
                                    275 ;--------------------------------------------------------
                                    276 ; absolute internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area IABS    (ABS,DATA)
                                    279 	.area IABS    (ABS,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; bit data
                                    282 ;--------------------------------------------------------
                                    283 	.area BSEG    (BIT)
                                    284 ;--------------------------------------------------------
                                    285 ; paged external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area PSEG    (PAG,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XSEG    (XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; absolute external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XABS    (ABS,XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; external initialized ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XISEG   (XDATA)
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT0 (CODE)
                                    302 	.area GSINIT1 (CODE)
                                    303 	.area GSINIT2 (CODE)
                                    304 	.area GSINIT3 (CODE)
                                    305 	.area GSINIT4 (CODE)
                                    306 	.area GSINIT5 (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area CSEG    (CODE)
                                    310 ;--------------------------------------------------------
                                    311 ; interrupt vector 
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
      000000                        314 __interrupt_vect:
      000000 02 00 C7         [24]  315 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  316 	reti
      000004                        317 	.ds	7
      00000B 02 00 CE         [24]  318 	ljmp	_timer0_ISR
                                    319 ;--------------------------------------------------------
                                    320 ; global & static initialisations
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.globl __sdcc_gsinit_startup
                                    327 	.globl __sdcc_program_startup
                                    328 	.globl __start__stack
                                    329 	.globl __mcs51_genXINIT
                                    330 	.globl __mcs51_genXRAMCLEAR
                                    331 	.globl __mcs51_genRAMCLEAR
                                    332 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  333 	ljmp	__sdcc_program_startup
                                    334 ;--------------------------------------------------------
                                    335 ; Home
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
                                    338 	.area HOME    (CODE)
      00000E                        339 __sdcc_program_startup:
      00000E 02 00 98         [24]  340 	ljmp	_main
                                    341 ;	return from main will return to caller
                                    342 ;--------------------------------------------------------
                                    343 ; code
                                    344 ;--------------------------------------------------------
                                    345 	.area CSEG    (CODE)
                                    346 ;------------------------------------------------------------
                                    347 ;Allocation info for local variables in function 'Producer'
                                    348 ;------------------------------------------------------------
                                    349 ;	testpreempt.c:12: void Producer(void) {
                                    350 ;	-----------------------------------------
                                    351 ;	 function Producer
                                    352 ;	-----------------------------------------
      000014                        353 _Producer:
                           000007   354 	ar7 = 0x07
                           000006   355 	ar6 = 0x06
                           000005   356 	ar5 = 0x05
                           000004   357 	ar4 = 0x04
                           000003   358 	ar3 = 0x03
                           000002   359 	ar2 = 0x02
                           000001   360 	ar1 = 0x01
                           000000   361 	ar0 = 0x00
                                    362 ;	testpreempt.c:13: sharedVar = 'A';
      000014 78 33            [12]  363 	mov	r0,#_sharedVar
      000016 76 41            [12]  364 	mov	@r0,#0x41
                                    365 ;	testpreempt.c:14: while (1) {
      000018                        366 00114$:
                                    367 ;	testpreempt.c:15: SemaphoreWait(empty);
      000018 78 37            [12]  368 	mov	r0,#_empty
      00001A 16               [12]  369 	dec	@r0
      00001B                        370 00101$:
      00001B 78 37            [12]  371 	mov	r0,#_empty
      00001D E6               [12]  372 	mov	a,@r0
      00001E 20 E7 FA         [24]  373 	jb	acc.7,00101$
                                    374 ;	testpreempt.c:16: SemaphoreWait(mutex);
      000021 78 35            [12]  375 	mov	r0,#_mutex
      000023 16               [12]  376 	dec	@r0
      000024                        377 00104$:
      000024 78 35            [12]  378 	mov	r0,#_mutex
      000026 E6               [12]  379 	mov	a,@r0
      000027 20 E7 FA         [24]  380 	jb	acc.7,00104$
                                    381 ;	testpreempt.c:17: Buffer[Bhead] = sharedVar;
      00002A 78 3B            [12]  382 	mov	r0,#_Bhead
      00002C E6               [12]  383 	mov	a,@r0
      00002D 24 30            [12]  384 	add	a,#_Buffer
      00002F F8               [12]  385 	mov	r0,a
      000030 79 33            [12]  386 	mov	r1,#_sharedVar
      000032 E7               [12]  387 	mov	a,@r1
      000033 F6               [12]  388 	mov	@r0,a
                                    389 ;	testpreempt.c:18: SemaphoreSignal(mutex);
      000034 78 35            [12]  390 	mov	r0,#_mutex
      000036 06               [12]  391 	inc	@r0
                                    392 ;	testpreempt.c:19: SemaphoreSignal(full);
      000037 78 36            [12]  393 	mov	r0,#_full
      000039 06               [12]  394 	inc	@r0
                                    395 ;	testpreempt.c:20: if( Bhead==2 ) 
      00003A 78 3B            [12]  396 	mov	r0,#_Bhead
      00003C B6 02 06         [24]  397 	cjne	@r0,#0x02,00108$
                                    398 ;	testpreempt.c:21: Bhead=0;
      00003F 78 3B            [12]  399 	mov	r0,#_Bhead
      000041 76 00            [12]  400 	mov	@r0,#0x00
      000043 80 03            [24]  401 	sjmp	00109$
      000045                        402 00108$:
                                    403 ;	testpreempt.c:23: Bhead++;
      000045 78 3B            [12]  404 	mov	r0,#_Bhead
      000047 06               [12]  405 	inc	@r0
      000048                        406 00109$:
                                    407 ;	testpreempt.c:24: if( sharedVar=='Z' ) 
      000048 78 33            [12]  408 	mov	r0,#_sharedVar
      00004A B6 5A 06         [24]  409 	cjne	@r0,#0x5A,00111$
                                    410 ;	testpreempt.c:25: sharedVar = 'A';
      00004D 78 33            [12]  411 	mov	r0,#_sharedVar
      00004F 76 41            [12]  412 	mov	@r0,#0x41
      000051 80 C5            [24]  413 	sjmp	00114$
      000053                        414 00111$:
                                    415 ;	testpreempt.c:27: sharedVar++;
      000053 78 33            [12]  416 	mov	r0,#_sharedVar
      000055 06               [12]  417 	inc	@r0
      000056 80 C0            [24]  418 	sjmp	00114$
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'Consumer'
                                    421 ;------------------------------------------------------------
                                    422 ;	testpreempt.c:31: void Consumer(void) {
                                    423 ;	-----------------------------------------
                                    424 ;	 function Consumer
                                    425 ;	-----------------------------------------
      000058                        426 _Consumer:
                                    427 ;	testpreempt.c:32: TMOD |= 0x20;
      000058 43 89 20         [24]  428 	orl	_TMOD,#0x20
                                    429 ;	testpreempt.c:33: TH1 = -6;
      00005B 75 8D FA         [24]  430 	mov	_TH1,#0xFA
                                    431 ;	testpreempt.c:34: SCON = 0x50;
      00005E 75 98 50         [24]  432 	mov	_SCON,#0x50
                                    433 ;	testpreempt.c:35: TR1 = 1;
      000061 D2 8E            [12]  434 	setb	_TR1
                                    435 ;	testpreempt.c:36: while (1) {
      000063                        436 00114$:
                                    437 ;	testpreempt.c:37: SemaphoreWait(full);
      000063 78 36            [12]  438 	mov	r0,#_full
      000065 16               [12]  439 	dec	@r0
      000066                        440 00101$:
      000066 78 36            [12]  441 	mov	r0,#_full
      000068 E6               [12]  442 	mov	a,@r0
      000069 20 E7 FA         [24]  443 	jb	acc.7,00101$
                                    444 ;	testpreempt.c:38: SemaphoreWait(mutex);
      00006C 78 35            [12]  445 	mov	r0,#_mutex
      00006E 16               [12]  446 	dec	@r0
      00006F                        447 00104$:
      00006F 78 35            [12]  448 	mov	r0,#_mutex
      000071 E6               [12]  449 	mov	a,@r0
      000072 20 E7 FA         [24]  450 	jb	acc.7,00104$
                                    451 ;	testpreempt.c:39: SBUF = Buffer[Btail];
      000075 78 3C            [12]  452 	mov	r0,#_Btail
      000077 E6               [12]  453 	mov	a,@r0
      000078 24 30            [12]  454 	add	a,#_Buffer
      00007A F9               [12]  455 	mov	r1,a
      00007B 87 99            [24]  456 	mov	_SBUF,@r1
                                    457 ;	testpreempt.c:40: SemaphoreSignal(mutex);
      00007D 78 35            [12]  458 	mov	r0,#_mutex
      00007F 06               [12]  459 	inc	@r0
                                    460 ;	testpreempt.c:41: SemaphoreSignal(empty);
      000080 78 37            [12]  461 	mov	r0,#_empty
      000082 06               [12]  462 	inc	@r0
                                    463 ;	testpreempt.c:42: if( Btail==2 ) 
      000083 78 3C            [12]  464 	mov	r0,#_Btail
      000085 B6 02 06         [24]  465 	cjne	@r0,#0x02,00108$
                                    466 ;	testpreempt.c:43: Btail=0;
      000088 78 3C            [12]  467 	mov	r0,#_Btail
      00008A 76 00            [12]  468 	mov	@r0,#0x00
      00008C 80 03            [24]  469 	sjmp	00110$
      00008E                        470 00108$:
                                    471 ;	testpreempt.c:45: Btail++;
      00008E 78 3C            [12]  472 	mov	r0,#_Btail
      000090 06               [12]  473 	inc	@r0
                                    474 ;	testpreempt.c:46: while (!TI) {}
      000091                        475 00110$:
                                    476 ;	testpreempt.c:47: TI = 0;
      000091 10 99 02         [24]  477 	jbc	_TI,00146$
      000094 80 FB            [24]  478 	sjmp	00110$
      000096                        479 00146$:
      000096 80 CB            [24]  480 	sjmp	00114$
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'main'
                                    483 ;------------------------------------------------------------
                                    484 ;	testpreempt.c:51: void main(void) {
                                    485 ;	-----------------------------------------
                                    486 ;	 function main
                                    487 ;	-----------------------------------------
      000098                        488 _main:
                                    489 ;	testpreempt.c:52: Buffer[0] = Buffer[1] = Buffer[2] = 0;
      000098 78 32            [12]  490 	mov	r0,#(_Buffer + 0x0002)
      00009A 76 00            [12]  491 	mov	@r0,#0x00
      00009C 78 31            [12]  492 	mov	r0,#(_Buffer + 0x0001)
      00009E 76 00            [12]  493 	mov	@r0,#0x00
      0000A0 78 30            [12]  494 	mov	r0,#_Buffer
      0000A2 76 00            [12]  495 	mov	@r0,#0x00
                                    496 ;	testpreempt.c:53: Bhead = Btail = 0;
      0000A4 78 3C            [12]  497 	mov	r0,#_Btail
      0000A6 76 00            [12]  498 	mov	@r0,#0x00
      0000A8 78 3B            [12]  499 	mov	r0,#_Bhead
      0000AA 76 00            [12]  500 	mov	@r0,#0x00
                                    501 ;	testpreempt.c:55: SemaphoreCreate(mutex, 1);
      0000AC 78 35            [12]  502 	mov	r0,#_mutex
      0000AE 76 01            [12]  503 	mov	@r0,#0x01
                                    504 ;	testpreempt.c:56: SemaphoreCreate(full, 0);
      0000B0 78 36            [12]  505 	mov	r0,#_full
      0000B2 76 00            [12]  506 	mov	@r0,#0x00
                                    507 ;	testpreempt.c:57: SemaphoreCreate(empty, 3);
      0000B4 78 37            [12]  508 	mov	r0,#_empty
      0000B6 76 03            [12]  509 	mov	@r0,#0x03
                                    510 ;	testpreempt.c:59: ThreadCreate( Producer );
      0000B8 90 00 14         [24]  511 	mov	dptr,#_Producer
      0000BB 12 01 84         [24]  512 	lcall	_ThreadCreate
                                    513 ;	testpreempt.c:60: ThreadCreate( Consumer );
      0000BE 90 00 58         [24]  514 	mov	dptr,#_Consumer
      0000C1 12 01 84         [24]  515 	lcall	_ThreadCreate
                                    516 ;	testpreempt.c:61: ThreadExit();
      0000C4 02 02 4A         [24]  517 	ljmp	_ThreadExit
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    520 ;------------------------------------------------------------
                                    521 ;	testpreempt.c:64: void _sdcc_gsinit_startup(void) {
                                    522 ;	-----------------------------------------
                                    523 ;	 function _sdcc_gsinit_startup
                                    524 ;	-----------------------------------------
      0000C7                        525 __sdcc_gsinit_startup:
                                    526 ;	testpreempt.c:67: __endasm;
      0000C7 02 01 43         [24]  527 	ljmp _Bootstrap
      0000CA 22               [24]  528 	ret
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    531 ;------------------------------------------------------------
                                    532 ;	testpreempt.c:70: void _mcs51_genRAMCLEAR(void) {}
                                    533 ;	-----------------------------------------
                                    534 ;	 function _mcs51_genRAMCLEAR
                                    535 ;	-----------------------------------------
      0000CB                        536 __mcs51_genRAMCLEAR:
      0000CB 22               [24]  537 	ret
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    540 ;------------------------------------------------------------
                                    541 ;	testpreempt.c:71: void _mcs51_genXINIT(void) {}
                                    542 ;	-----------------------------------------
                                    543 ;	 function _mcs51_genXINIT
                                    544 ;	-----------------------------------------
      0000CC                        545 __mcs51_genXINIT:
      0000CC 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    549 ;------------------------------------------------------------
                                    550 ;	testpreempt.c:72: void _mcs51_genXRAMCLEAR(void) {}
                                    551 ;	-----------------------------------------
                                    552 ;	 function _mcs51_genXRAMCLEAR
                                    553 ;	-----------------------------------------
      0000CD                        554 __mcs51_genXRAMCLEAR:
      0000CD 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'timer0_ISR'
                                    558 ;------------------------------------------------------------
                                    559 ;	testpreempt.c:73: void timer0_ISR(void) __interrupt(1) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function timer0_ISR
                                    562 ;	-----------------------------------------
      0000CE                        563 _timer0_ISR:
                                    564 ;	testpreempt.c:76: __endasm;
      0000CE 02 01 08         [24]  565 	ljmp _myTimer0Handler
      0000D1 32               [24]  566 	reti
                                    567 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    568 ;	eliminated unneeded push/pop psw
                                    569 ;	eliminated unneeded push/pop dpl
                                    570 ;	eliminated unneeded push/pop dph
                                    571 ;	eliminated unneeded push/pop b
                                    572 ;	eliminated unneeded push/pop acc
                                    573 	.area CSEG    (CODE)
                                    574 	.area CONST   (CODE)
                                    575 	.area XINIT   (CODE)
                                    576 	.area CABS    (ABS,CODE)
