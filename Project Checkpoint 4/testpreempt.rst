                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Dec 26 02:06:12 2019
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
                                     19 	.globl _Producer2
                                     20 	.globl _Producer1
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
                                    118 	.globl _flag
                                    119 	.globl _change
                                    120 	.globl _Btail
                                    121 	.globl _Bhead
                                    122 	.globl _empty
                                    123 	.globl _full
                                    124 	.globl _mutex
                                    125 	.globl _sharedNum
                                    126 	.globl _sharedVar
                                    127 	.globl _Buffer
                                    128 	.globl _index
                                    129 	.globl _SelectThread
                                    130 	.globl _SaveCurrentSP
                                    131 	.globl _manager_ID
                                    132 	.globl _ID
                                    133 	.globl _Bitmap
                                    134 	.globl _ThreadSP
                                    135 ;--------------------------------------------------------
                                    136 ; special function registers
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0	=	0x0080
                           000081   141 _SP	=	0x0081
                           000082   142 _DPL	=	0x0082
                           000083   143 _DPH	=	0x0083
                           000087   144 _PCON	=	0x0087
                           000088   145 _TCON	=	0x0088
                           000089   146 _TMOD	=	0x0089
                           00008A   147 _TL0	=	0x008a
                           00008B   148 _TL1	=	0x008b
                           00008C   149 _TH0	=	0x008c
                           00008D   150 _TH1	=	0x008d
                           000090   151 _P1	=	0x0090
                           000098   152 _SCON	=	0x0098
                           000099   153 _SBUF	=	0x0099
                           0000A0   154 _P2	=	0x00a0
                           0000A8   155 _IE	=	0x00a8
                           0000B0   156 _P3	=	0x00b0
                           0000B8   157 _IP	=	0x00b8
                           0000D0   158 _PSW	=	0x00d0
                           0000E0   159 _ACC	=	0x00e0
                           0000F0   160 _B	=	0x00f0
                                    161 ;--------------------------------------------------------
                                    162 ; special function bits
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
                           000080   166 _P0_0	=	0x0080
                           000081   167 _P0_1	=	0x0081
                           000082   168 _P0_2	=	0x0082
                           000083   169 _P0_3	=	0x0083
                           000084   170 _P0_4	=	0x0084
                           000085   171 _P0_5	=	0x0085
                           000086   172 _P0_6	=	0x0086
                           000087   173 _P0_7	=	0x0087
                           000088   174 _IT0	=	0x0088
                           000089   175 _IE0	=	0x0089
                           00008A   176 _IT1	=	0x008a
                           00008B   177 _IE1	=	0x008b
                           00008C   178 _TR0	=	0x008c
                           00008D   179 _TF0	=	0x008d
                           00008E   180 _TR1	=	0x008e
                           00008F   181 _TF1	=	0x008f
                           000090   182 _P1_0	=	0x0090
                           000091   183 _P1_1	=	0x0091
                           000092   184 _P1_2	=	0x0092
                           000093   185 _P1_3	=	0x0093
                           000094   186 _P1_4	=	0x0094
                           000095   187 _P1_5	=	0x0095
                           000096   188 _P1_6	=	0x0096
                           000097   189 _P1_7	=	0x0097
                           000098   190 _RI	=	0x0098
                           000099   191 _TI	=	0x0099
                           00009A   192 _RB8	=	0x009a
                           00009B   193 _TB8	=	0x009b
                           00009C   194 _REN	=	0x009c
                           00009D   195 _SM2	=	0x009d
                           00009E   196 _SM1	=	0x009e
                           00009F   197 _SM0	=	0x009f
                           0000A0   198 _P2_0	=	0x00a0
                           0000A1   199 _P2_1	=	0x00a1
                           0000A2   200 _P2_2	=	0x00a2
                           0000A3   201 _P2_3	=	0x00a3
                           0000A4   202 _P2_4	=	0x00a4
                           0000A5   203 _P2_5	=	0x00a5
                           0000A6   204 _P2_6	=	0x00a6
                           0000A7   205 _P2_7	=	0x00a7
                           0000A8   206 _EX0	=	0x00a8
                           0000A9   207 _ET0	=	0x00a9
                           0000AA   208 _EX1	=	0x00aa
                           0000AB   209 _ET1	=	0x00ab
                           0000AC   210 _ES	=	0x00ac
                           0000AF   211 _EA	=	0x00af
                           0000B0   212 _P3_0	=	0x00b0
                           0000B1   213 _P3_1	=	0x00b1
                           0000B2   214 _P3_2	=	0x00b2
                           0000B3   215 _P3_3	=	0x00b3
                           0000B4   216 _P3_4	=	0x00b4
                           0000B5   217 _P3_5	=	0x00b5
                           0000B6   218 _P3_6	=	0x00b6
                           0000B7   219 _P3_7	=	0x00b7
                           0000B0   220 _RXD	=	0x00b0
                           0000B1   221 _TXD	=	0x00b1
                           0000B2   222 _INT0	=	0x00b2
                           0000B3   223 _INT1	=	0x00b3
                           0000B4   224 _T0	=	0x00b4
                           0000B5   225 _T1	=	0x00b5
                           0000B6   226 _WR	=	0x00b6
                           0000B7   227 _RD	=	0x00b7
                           0000B8   228 _PX0	=	0x00b8
                           0000B9   229 _PT0	=	0x00b9
                           0000BA   230 _PX1	=	0x00ba
                           0000BB   231 _PT1	=	0x00bb
                           0000BC   232 _PS	=	0x00bc
                           0000D0   233 _P	=	0x00d0
                           0000D1   234 _F1	=	0x00d1
                           0000D2   235 _OV	=	0x00d2
                           0000D3   236 _RS0	=	0x00d3
                           0000D4   237 _RS1	=	0x00d4
                           0000D5   238 _F0	=	0x00d5
                           0000D6   239 _AC	=	0x00d6
                           0000D7   240 _CY	=	0x00d7
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable register banks
                                    243 ;--------------------------------------------------------
                                    244 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        245 	.ds 8
                                    246 ;--------------------------------------------------------
                                    247 ; internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area DSEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	SSEG
      000008                        257 __start__stack:
      000008                        258 	.ds	1
                                    259 
                                    260 ;--------------------------------------------------------
                                    261 ; indirectly addressable internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area ISEG    (DATA)
                           000020   264 _ThreadSP	=	0x0020
                           000024   265 _Bitmap	=	0x0024
                           000028   266 _ID	=	0x0028
                           000029   267 _manager_ID	=	0x0029
                           00002A   268 _SaveCurrentSP	=	0x002a
                           00002B   269 _SelectThread	=	0x002b
                           00002C   270 _index	=	0x002c
                           000030   271 _Buffer	=	0x0030
                           000033   272 _sharedVar	=	0x0033
                           000034   273 _sharedNum	=	0x0034
                           000035   274 _mutex	=	0x0035
                           000036   275 _full	=	0x0036
                           000037   276 _empty	=	0x0037
                           00003B   277 _Bhead	=	0x003b
                           00003C   278 _Btail	=	0x003c
                           00003D   279 _change	=	0x003d
                           00003D   280 _flag	=	0x003d
                                    281 ;--------------------------------------------------------
                                    282 ; absolute internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area IABS    (ABS,DATA)
                                    285 	.area IABS    (ABS,DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; bit data
                                    288 ;--------------------------------------------------------
                                    289 	.area BSEG    (BIT)
                                    290 ;--------------------------------------------------------
                                    291 ; paged external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area PSEG    (PAG,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XSEG    (XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XABS    (ABS,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external initialized ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XISEG   (XDATA)
                                    306 	.area HOME    (CODE)
                                    307 	.area GSINIT0 (CODE)
                                    308 	.area GSINIT1 (CODE)
                                    309 	.area GSINIT2 (CODE)
                                    310 	.area GSINIT3 (CODE)
                                    311 	.area GSINIT4 (CODE)
                                    312 	.area GSINIT5 (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.area GSFINAL (CODE)
                                    315 	.area CSEG    (CODE)
                                    316 ;--------------------------------------------------------
                                    317 ; interrupt vector 
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
      000000                        320 __interrupt_vect:
      000000 02 01 1F         [24]  321 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  322 	reti
      000004                        323 	.ds	7
      00000B 02 01 26         [24]  324 	ljmp	_timer0_ISR
                                    325 ;--------------------------------------------------------
                                    326 ; global & static initialisations
                                    327 ;--------------------------------------------------------
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT  (CODE)
                                    330 	.area GSFINAL (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.globl __sdcc_gsinit_startup
                                    333 	.globl __sdcc_program_startup
                                    334 	.globl __start__stack
                                    335 	.globl __mcs51_genXINIT
                                    336 	.globl __mcs51_genXRAMCLEAR
                                    337 	.globl __mcs51_genRAMCLEAR
                                    338 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  339 	ljmp	__sdcc_program_startup
                                    340 ;--------------------------------------------------------
                                    341 ; Home
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area HOME    (CODE)
      00000E                        345 __sdcc_program_startup:
      00000E 02 00 EC         [24]  346 	ljmp	_main
                                    347 ;	return from main will return to caller
                                    348 ;--------------------------------------------------------
                                    349 ; code
                                    350 ;--------------------------------------------------------
                                    351 	.area CSEG    (CODE)
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'Producer1'
                                    354 ;------------------------------------------------------------
                                    355 ;	testpreempt.c:14: void Producer1(void) {
                                    356 ;	-----------------------------------------
                                    357 ;	 function Producer1
                                    358 ;	-----------------------------------------
      000014                        359 _Producer1:
                           000007   360 	ar7 = 0x07
                           000006   361 	ar6 = 0x06
                           000005   362 	ar5 = 0x05
                           000004   363 	ar4 = 0x04
                           000003   364 	ar3 = 0x03
                           000002   365 	ar2 = 0x02
                           000001   366 	ar1 = 0x01
                           000000   367 	ar0 = 0x00
                                    368 ;	testpreempt.c:15: sharedVar = 'A';
      000014 78 33            [12]  369 	mov	r0,#_sharedVar
      000016 76 41            [12]  370 	mov	@r0,#0x41
                                    371 ;	testpreempt.c:17: while( change==0 ) {}
      000018                        372 00101$:
      000018 78 3D            [12]  373 	mov	r0,#_change
      00001A E6               [12]  374 	mov	a,@r0
      00001B 60 FB            [24]  375 	jz	00101$
                                    376 ;	testpreempt.c:18: change++;
      00001D 78 3D            [12]  377 	mov	r0,#_change
      00001F 06               [12]  378 	inc	@r0
                                    379 ;	testpreempt.c:19: SemaphoreWait(empty);
      000020 78 37            [12]  380 	mov	r0,#_empty
      000022 16               [12]  381 	dec	@r0
      000023                        382 00104$:
      000023 78 37            [12]  383 	mov	r0,#_empty
      000025 E6               [12]  384 	mov	a,@r0
      000026 20 E7 FA         [24]  385 	jb	acc.7,00104$
                                    386 ;	testpreempt.c:20: SemaphoreWait(mutex);
      000029 78 35            [12]  387 	mov	r0,#_mutex
      00002B 16               [12]  388 	dec	@r0
      00002C                        389 00107$:
      00002C 78 35            [12]  390 	mov	r0,#_mutex
      00002E E6               [12]  391 	mov	a,@r0
      00002F 20 E7 FA         [24]  392 	jb	acc.7,00107$
                                    393 ;	testpreempt.c:21: Buffer[Bhead] = sharedVar;
      000032 78 3B            [12]  394 	mov	r0,#_Bhead
      000034 E6               [12]  395 	mov	a,@r0
      000035 24 30            [12]  396 	add	a,#_Buffer
      000037 F8               [12]  397 	mov	r0,a
      000038 79 33            [12]  398 	mov	r1,#_sharedVar
      00003A E7               [12]  399 	mov	a,@r1
      00003B F6               [12]  400 	mov	@r0,a
                                    401 ;	testpreempt.c:22: SemaphoreSignal(mutex);
      00003C 78 35            [12]  402 	mov	r0,#_mutex
      00003E 06               [12]  403 	inc	@r0
                                    404 ;	testpreempt.c:23: SemaphoreSignal(full);
      00003F 78 36            [12]  405 	mov	r0,#_full
      000041 06               [12]  406 	inc	@r0
                                    407 ;	testpreempt.c:24: if( Bhead==2 ) 
      000042 78 3B            [12]  408 	mov	r0,#_Bhead
      000044 B6 02 06         [24]  409 	cjne	@r0,#0x02,00111$
                                    410 ;	testpreempt.c:25: Bhead=0;
      000047 78 3B            [12]  411 	mov	r0,#_Bhead
      000049 76 00            [12]  412 	mov	@r0,#0x00
      00004B 80 03            [24]  413 	sjmp	00112$
      00004D                        414 00111$:
                                    415 ;	testpreempt.c:27: Bhead++;
      00004D 78 3B            [12]  416 	mov	r0,#_Bhead
      00004F 06               [12]  417 	inc	@r0
      000050                        418 00112$:
                                    419 ;	testpreempt.c:28: if( sharedVar=='Z' ) 
      000050 78 33            [12]  420 	mov	r0,#_sharedVar
      000052 B6 5A 06         [24]  421 	cjne	@r0,#0x5A,00114$
                                    422 ;	testpreempt.c:29: sharedVar = 'A';
      000055 78 33            [12]  423 	mov	r0,#_sharedVar
      000057 76 41            [12]  424 	mov	@r0,#0x41
      000059 80 BD            [24]  425 	sjmp	00101$
      00005B                        426 00114$:
                                    427 ;	testpreempt.c:31: sharedVar++;
      00005B 78 33            [12]  428 	mov	r0,#_sharedVar
      00005D 06               [12]  429 	inc	@r0
      00005E 80 B8            [24]  430 	sjmp	00101$
                                    431 ;------------------------------------------------------------
                                    432 ;Allocation info for local variables in function 'Producer2'
                                    433 ;------------------------------------------------------------
                                    434 ;	testpreempt.c:34: void Producer2(void) {
                                    435 ;	-----------------------------------------
                                    436 ;	 function Producer2
                                    437 ;	-----------------------------------------
      000060                        438 _Producer2:
                                    439 ;	testpreempt.c:35: sharedNum ='0';
      000060 78 34            [12]  440 	mov	r0,#_sharedNum
      000062 76 30            [12]  441 	mov	@r0,#0x30
                                    442 ;	testpreempt.c:37: while( change!=0 ){}
      000064                        443 00101$:
      000064 78 3D            [12]  444 	mov	r0,#_change
      000066 E6               [12]  445 	mov	a,@r0
      000067 70 FB            [24]  446 	jnz	00101$
                                    447 ;	testpreempt.c:38: change--;
      000069 78 3D            [12]  448 	mov	r0,#_change
      00006B 16               [12]  449 	dec	@r0
                                    450 ;	testpreempt.c:39: SemaphoreWait(empty);
      00006C 78 37            [12]  451 	mov	r0,#_empty
      00006E 16               [12]  452 	dec	@r0
      00006F                        453 00104$:
      00006F 78 37            [12]  454 	mov	r0,#_empty
      000071 E6               [12]  455 	mov	a,@r0
      000072 20 E7 FA         [24]  456 	jb	acc.7,00104$
                                    457 ;	testpreempt.c:40: SemaphoreWait(mutex);
      000075 78 35            [12]  458 	mov	r0,#_mutex
      000077 16               [12]  459 	dec	@r0
      000078                        460 00107$:
      000078 78 35            [12]  461 	mov	r0,#_mutex
      00007A E6               [12]  462 	mov	a,@r0
      00007B 20 E7 FA         [24]  463 	jb	acc.7,00107$
                                    464 ;	testpreempt.c:41: Buffer[Bhead] = sharedNum;
      00007E 78 3B            [12]  465 	mov	r0,#_Bhead
      000080 E6               [12]  466 	mov	a,@r0
      000081 24 30            [12]  467 	add	a,#_Buffer
      000083 F8               [12]  468 	mov	r0,a
      000084 79 34            [12]  469 	mov	r1,#_sharedNum
      000086 E7               [12]  470 	mov	a,@r1
      000087 F6               [12]  471 	mov	@r0,a
                                    472 ;	testpreempt.c:42: SemaphoreSignal(mutex);
      000088 78 35            [12]  473 	mov	r0,#_mutex
      00008A 06               [12]  474 	inc	@r0
                                    475 ;	testpreempt.c:43: SemaphoreSignal(full);
      00008B 78 36            [12]  476 	mov	r0,#_full
      00008D 06               [12]  477 	inc	@r0
                                    478 ;	testpreempt.c:44: if( Bhead==2 ) 
      00008E 78 3B            [12]  479 	mov	r0,#_Bhead
      000090 B6 02 06         [24]  480 	cjne	@r0,#0x02,00111$
                                    481 ;	testpreempt.c:45: Bhead=0;
      000093 78 3B            [12]  482 	mov	r0,#_Bhead
      000095 76 00            [12]  483 	mov	@r0,#0x00
      000097 80 03            [24]  484 	sjmp	00112$
      000099                        485 00111$:
                                    486 ;	testpreempt.c:47: Bhead++;
      000099 78 3B            [12]  487 	mov	r0,#_Bhead
      00009B 06               [12]  488 	inc	@r0
      00009C                        489 00112$:
                                    490 ;	testpreempt.c:48: if( sharedNum=='9' ) 
      00009C 78 34            [12]  491 	mov	r0,#_sharedNum
      00009E B6 39 06         [24]  492 	cjne	@r0,#0x39,00114$
                                    493 ;	testpreempt.c:49: sharedNum ='0';
      0000A1 78 34            [12]  494 	mov	r0,#_sharedNum
      0000A3 76 30            [12]  495 	mov	@r0,#0x30
      0000A5 80 BD            [24]  496 	sjmp	00101$
      0000A7                        497 00114$:
                                    498 ;	testpreempt.c:51: sharedNum++;
      0000A7 78 34            [12]  499 	mov	r0,#_sharedNum
      0000A9 06               [12]  500 	inc	@r0
      0000AA 80 B8            [24]  501 	sjmp	00101$
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'Consumer'
                                    504 ;------------------------------------------------------------
                                    505 ;	testpreempt.c:54: void Consumer(void) {
                                    506 ;	-----------------------------------------
                                    507 ;	 function Consumer
                                    508 ;	-----------------------------------------
      0000AC                        509 _Consumer:
                                    510 ;	testpreempt.c:55: TMOD |= 0x20;
      0000AC 43 89 20         [24]  511 	orl	_TMOD,#0x20
                                    512 ;	testpreempt.c:56: TH1 = -6;
      0000AF 75 8D FA         [24]  513 	mov	_TH1,#0xFA
                                    514 ;	testpreempt.c:57: SCON = 0x50;
      0000B2 75 98 50         [24]  515 	mov	_SCON,#0x50
                                    516 ;	testpreempt.c:58: TR1 = 1;
      0000B5 D2 8E            [12]  517 	setb	_TR1
                                    518 ;	testpreempt.c:59: while (1) {
      0000B7                        519 00114$:
                                    520 ;	testpreempt.c:60: SemaphoreWait(full);
      0000B7 78 36            [12]  521 	mov	r0,#_full
      0000B9 16               [12]  522 	dec	@r0
      0000BA                        523 00101$:
      0000BA 78 36            [12]  524 	mov	r0,#_full
      0000BC E6               [12]  525 	mov	a,@r0
      0000BD 20 E7 FA         [24]  526 	jb	acc.7,00101$
                                    527 ;	testpreempt.c:61: SemaphoreWait(mutex);
      0000C0 78 35            [12]  528 	mov	r0,#_mutex
      0000C2 16               [12]  529 	dec	@r0
      0000C3                        530 00104$:
      0000C3 78 35            [12]  531 	mov	r0,#_mutex
      0000C5 E6               [12]  532 	mov	a,@r0
      0000C6 20 E7 FA         [24]  533 	jb	acc.7,00104$
                                    534 ;	testpreempt.c:62: SBUF = Buffer[Btail];
      0000C9 78 3C            [12]  535 	mov	r0,#_Btail
      0000CB E6               [12]  536 	mov	a,@r0
      0000CC 24 30            [12]  537 	add	a,#_Buffer
      0000CE F9               [12]  538 	mov	r1,a
      0000CF 87 99            [24]  539 	mov	_SBUF,@r1
                                    540 ;	testpreempt.c:63: SemaphoreSignal(mutex);
      0000D1 78 35            [12]  541 	mov	r0,#_mutex
      0000D3 06               [12]  542 	inc	@r0
                                    543 ;	testpreempt.c:64: SemaphoreSignal(empty);
      0000D4 78 37            [12]  544 	mov	r0,#_empty
      0000D6 06               [12]  545 	inc	@r0
                                    546 ;	testpreempt.c:65: if( Btail==2 ) 
      0000D7 78 3C            [12]  547 	mov	r0,#_Btail
      0000D9 B6 02 06         [24]  548 	cjne	@r0,#0x02,00108$
                                    549 ;	testpreempt.c:66: Btail=0;
      0000DC 78 3C            [12]  550 	mov	r0,#_Btail
      0000DE 76 00            [12]  551 	mov	@r0,#0x00
      0000E0 80 03            [24]  552 	sjmp	00110$
      0000E2                        553 00108$:
                                    554 ;	testpreempt.c:68: Btail++;
      0000E2 78 3C            [12]  555 	mov	r0,#_Btail
      0000E4 06               [12]  556 	inc	@r0
                                    557 ;	testpreempt.c:69: while (!TI) {}
      0000E5                        558 00110$:
                                    559 ;	testpreempt.c:70: TI = 0;
      0000E5 10 99 02         [24]  560 	jbc	_TI,00146$
      0000E8 80 FB            [24]  561 	sjmp	00110$
      0000EA                        562 00146$:
      0000EA 80 CB            [24]  563 	sjmp	00114$
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'main'
                                    566 ;------------------------------------------------------------
                                    567 ;	testpreempt.c:74: void main(void) {
                                    568 ;	-----------------------------------------
                                    569 ;	 function main
                                    570 ;	-----------------------------------------
      0000EC                        571 _main:
                                    572 ;	testpreempt.c:75: Buffer[0] = Buffer[1] = Buffer[2] = 0;
      0000EC 78 32            [12]  573 	mov	r0,#(_Buffer + 0x0002)
      0000EE 76 00            [12]  574 	mov	@r0,#0x00
      0000F0 78 31            [12]  575 	mov	r0,#(_Buffer + 0x0001)
      0000F2 76 00            [12]  576 	mov	@r0,#0x00
      0000F4 78 30            [12]  577 	mov	r0,#_Buffer
      0000F6 76 00            [12]  578 	mov	@r0,#0x00
                                    579 ;	testpreempt.c:76: Bhead = Btail = 0;
      0000F8 78 3C            [12]  580 	mov	r0,#_Btail
      0000FA 76 00            [12]  581 	mov	@r0,#0x00
      0000FC 78 3B            [12]  582 	mov	r0,#_Bhead
      0000FE 76 00            [12]  583 	mov	@r0,#0x00
                                    584 ;	testpreempt.c:77: change = 0;
      000100 78 3D            [12]  585 	mov	r0,#_change
      000102 76 00            [12]  586 	mov	@r0,#0x00
                                    587 ;	testpreempt.c:78: SemaphoreCreate(mutex, 1);
      000104 78 35            [12]  588 	mov	r0,#_mutex
      000106 76 01            [12]  589 	mov	@r0,#0x01
                                    590 ;	testpreempt.c:79: SemaphoreCreate(full, 0);
      000108 78 36            [12]  591 	mov	r0,#_full
      00010A 76 00            [12]  592 	mov	@r0,#0x00
                                    593 ;	testpreempt.c:80: SemaphoreCreate(empty, 3);
      00010C 78 37            [12]  594 	mov	r0,#_empty
      00010E 76 03            [12]  595 	mov	@r0,#0x03
                                    596 ;	testpreempt.c:81: ThreadCreate( Producer1 );
      000110 90 00 14         [24]  597 	mov	dptr,#_Producer1
      000113 12 01 DC         [24]  598 	lcall	_ThreadCreate
                                    599 ;	testpreempt.c:82: ThreadCreate( Producer2 );
      000116 90 00 60         [24]  600 	mov	dptr,#_Producer2
      000119 12 01 DC         [24]  601 	lcall	_ThreadCreate
                                    602 ;	testpreempt.c:83: Consumer();
      00011C 02 00 AC         [24]  603 	ljmp	_Consumer
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    606 ;------------------------------------------------------------
                                    607 ;	testpreempt.c:86: void _sdcc_gsinit_startup(void) {
                                    608 ;	-----------------------------------------
                                    609 ;	 function _sdcc_gsinit_startup
                                    610 ;	-----------------------------------------
      00011F                        611 __sdcc_gsinit_startup:
                                    612 ;	testpreempt.c:89: __endasm;
      00011F 02 01 9B         [24]  613 	ljmp _Bootstrap
      000122 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    617 ;------------------------------------------------------------
                                    618 ;	testpreempt.c:92: void _mcs51_genRAMCLEAR(void) {}
                                    619 ;	-----------------------------------------
                                    620 ;	 function _mcs51_genRAMCLEAR
                                    621 ;	-----------------------------------------
      000123                        622 __mcs51_genRAMCLEAR:
      000123 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    626 ;------------------------------------------------------------
                                    627 ;	testpreempt.c:93: void _mcs51_genXINIT(void) {}
                                    628 ;	-----------------------------------------
                                    629 ;	 function _mcs51_genXINIT
                                    630 ;	-----------------------------------------
      000124                        631 __mcs51_genXINIT:
      000124 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    635 ;------------------------------------------------------------
                                    636 ;	testpreempt.c:94: void _mcs51_genXRAMCLEAR(void) {}
                                    637 ;	-----------------------------------------
                                    638 ;	 function _mcs51_genXRAMCLEAR
                                    639 ;	-----------------------------------------
      000125                        640 __mcs51_genXRAMCLEAR:
      000125 22               [24]  641 	ret
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'timer0_ISR'
                                    644 ;------------------------------------------------------------
                                    645 ;	testpreempt.c:95: void timer0_ISR(void) __interrupt(1) {
                                    646 ;	-----------------------------------------
                                    647 ;	 function timer0_ISR
                                    648 ;	-----------------------------------------
      000126                        649 _timer0_ISR:
                                    650 ;	testpreempt.c:98: __endasm;
      000126 02 01 60         [24]  651 	ljmp _myTimer0Handler
      000129 32               [24]  652 	reti
                                    653 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    654 ;	eliminated unneeded push/pop psw
                                    655 ;	eliminated unneeded push/pop dpl
                                    656 ;	eliminated unneeded push/pop dph
                                    657 ;	eliminated unneeded push/pop b
                                    658 ;	eliminated unneeded push/pop acc
                                    659 	.area CSEG    (CODE)
                                    660 	.area CONST   (CODE)
                                    661 	.area XINIT   (CODE)
                                    662 	.area CABS    (ABS,CODE)
