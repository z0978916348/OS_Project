                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Jan  2 09:06:16 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module preemptive
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Bootstrap
                                     13 	.globl _myTimer0Handler
                                     14 	.globl _thread_manager
                                     15 	.globl _delay
                                     16 	.globl _now
                                     17 	.globl _main
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _Delay_Time
                                    115 	.globl _record_B
                                    116 	.globl _j
                                    117 	.globl _t
                                    118 	.globl _temp2
                                    119 	.globl _temp1
                                    120 	.globl _current
                                    121 	.globl _print
                                    122 	.globl _mutex
                                    123 	.globl _plot
                                    124 	.globl _log
                                    125 	.globl _flag
                                    126 	.globl _thread
                                    127 	.globl _counter
                                    128 	.globl _time
                                    129 	.globl _index
                                    130 	.globl _SelectThread
                                    131 	.globl _SaveCurrentSP
                                    132 	.globl _ID
                                    133 	.globl _Bitmap
                                    134 	.globl _ThreadSP
                                    135 	.globl _ThreadCreate
                                    136 	.globl _ThreadYield
                                    137 	.globl _ThreadExit
                                    138 ;--------------------------------------------------------
                                    139 ; special function registers
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0	=	0x0080
                           000081   144 _SP	=	0x0081
                           000082   145 _DPL	=	0x0082
                           000083   146 _DPH	=	0x0083
                           000087   147 _PCON	=	0x0087
                           000088   148 _TCON	=	0x0088
                           000089   149 _TMOD	=	0x0089
                           00008A   150 _TL0	=	0x008a
                           00008B   151 _TL1	=	0x008b
                           00008C   152 _TH0	=	0x008c
                           00008D   153 _TH1	=	0x008d
                           000090   154 _P1	=	0x0090
                           000098   155 _SCON	=	0x0098
                           000099   156 _SBUF	=	0x0099
                           0000A0   157 _P2	=	0x00a0
                           0000A8   158 _IE	=	0x00a8
                           0000B0   159 _P3	=	0x00b0
                           0000B8   160 _IP	=	0x00b8
                           0000D0   161 _PSW	=	0x00d0
                           0000E0   162 _ACC	=	0x00e0
                           0000F0   163 _B	=	0x00f0
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _F1	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                                    244 ;--------------------------------------------------------
                                    245 ; overlayable register banks
                                    246 ;--------------------------------------------------------
                                    247 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        248 	.ds 8
                                    249 ;--------------------------------------------------------
                                    250 ; internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area DSEG    (DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable items in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	OSEG    (OVR,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; indirectly addressable internal ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area ISEG    (DATA)
                           000020   261 _ThreadSP	=	0x0020
                           000024   262 _Bitmap	=	0x0024
                           000028   263 _ID	=	0x0028
                           000029   264 _SaveCurrentSP	=	0x0029
                           00002A   265 _SelectThread	=	0x002a
                           00002B   266 _index	=	0x002b
                           00002C   267 _time	=	0x002c
                           00002D   268 _counter	=	0x002d
                           00002E   269 _thread	=	0x002e
                           00002F   270 _flag	=	0x002f
                           000030   271 _log	=	0x0030
                           00003A   272 _plot	=	0x003a
                           00003B   273 _mutex	=	0x003b
                           00003D   274 _print	=	0x003d
                           00004B   275 _current	=	0x004b
                           00004C   276 _temp1	=	0x004c
                           00004D   277 _temp2	=	0x004d
                           00004E   278 _t	=	0x004e
                           00005B   279 _j	=	0x005b
                           00005C   280 _record_B	=	0x005c
                           00006B   281 _Delay_Time	=	0x006b
                                    282 ;--------------------------------------------------------
                                    283 ; absolute internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area IABS    (ABS,DATA)
                                    286 	.area IABS    (ABS,DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; bit data
                                    289 ;--------------------------------------------------------
                                    290 	.area BSEG    (BIT)
                                    291 ;--------------------------------------------------------
                                    292 ; paged external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area PSEG    (PAG,XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XSEG    (XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XABS    (ABS,XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; external initialized ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XISEG   (XDATA)
                                    307 	.area HOME    (CODE)
                                    308 	.area GSINIT0 (CODE)
                                    309 	.area GSINIT1 (CODE)
                                    310 	.area GSINIT2 (CODE)
                                    311 	.area GSINIT3 (CODE)
                                    312 	.area GSINIT4 (CODE)
                                    313 	.area GSINIT5 (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area CSEG    (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; global & static initialisations
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; Home
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
                                    328 	.area HOME    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; code
                                    331 ;--------------------------------------------------------
                                    332 	.area CSEG    (CODE)
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'now'
                                    335 ;------------------------------------------------------------
                                    336 ;	preemptive.c:30: unsigned char now( void ) { 
                                    337 ;	-----------------------------------------
                                    338 ;	 function now
                                    339 ;	-----------------------------------------
      000498                        340 _now:
                           000007   341 	ar7 = 0x07
                           000006   342 	ar6 = 0x06
                           000005   343 	ar5 = 0x05
                           000004   344 	ar4 = 0x04
                           000003   345 	ar3 = 0x03
                           000002   346 	ar2 = 0x02
                           000001   347 	ar1 = 0x01
                           000000   348 	ar0 = 0x00
                                    349 ;	preemptive.c:31: return time; 
      000498 78 2C            [12]  350 	mov	r0,#_time
      00049A 86 82            [24]  351 	mov	dpl,@r0
      00049C 22               [24]  352 	ret
                                    353 ;------------------------------------------------------------
                                    354 ;Allocation info for local variables in function 'delay'
                                    355 ;------------------------------------------------------------
                                    356 ;p                         Allocated to registers r7 
                                    357 ;------------------------------------------------------------
                                    358 ;	preemptive.c:34: void delay(unsigned char p) {
                                    359 ;	-----------------------------------------
                                    360 ;	 function delay
                                    361 ;	-----------------------------------------
      00049D                        362 _delay:
      00049D AF 82            [24]  363 	mov	r7,dpl
                                    364 ;	preemptive.c:35: Delay_Time[ID] = now() + p;
      00049F 78 28            [12]  365 	mov	r0,#_ID
      0004A1 E6               [12]  366 	mov	a,@r0
      0004A2 24 6B            [12]  367 	add	a,#_Delay_Time
      0004A4 F9               [12]  368 	mov	r1,a
      0004A5 C0 07            [24]  369 	push	ar7
      0004A7 C0 01            [24]  370 	push	ar1
      0004A9 12 04 98         [24]  371 	lcall	_now
      0004AC E5 82            [12]  372 	mov	a,dpl
      0004AE D0 01            [24]  373 	pop	ar1
      0004B0 D0 07            [24]  374 	pop	ar7
      0004B2 2F               [12]  375 	add	a,r7
      0004B3 F7               [12]  376 	mov	@r1,a
                                    377 ;	preemptive.c:36: Bitmap[ID] = -2;
      0004B4 78 28            [12]  378 	mov	r0,#_ID
      0004B6 E6               [12]  379 	mov	a,@r0
      0004B7 24 24            [12]  380 	add	a,#_Bitmap
      0004B9 F8               [12]  381 	mov	r0,a
      0004BA 76 FE            [12]  382 	mov	@r0,#0xFE
                                    383 ;	preemptive.c:37: ThreadYield();
      0004BC 02 06 B5         [24]  384 	ljmp	_ThreadYield
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'thread_manager'
                                    387 ;------------------------------------------------------------
                                    388 ;	preemptive.c:40: void thread_manager(void){
                                    389 ;	-----------------------------------------
                                    390 ;	 function thread_manager
                                    391 ;	-----------------------------------------
      0004BF                        392 _thread_manager:
                                    393 ;	preemptive.c:41: while(1){
      0004BF                        394 00112$:
                                    395 ;	preemptive.c:42: EA = 0;
      0004BF C2 AF            [12]  396 	clr	_EA
                                    397 ;	preemptive.c:43: record_B = SelectThread = 0;
      0004C1 78 2A            [12]  398 	mov	r0,#_SelectThread
      0004C3 76 00            [12]  399 	mov	@r0,#0x00
      0004C5 78 5C            [12]  400 	mov	r0,#_record_B
      0004C7 76 00            [12]  401 	mov	@r0,#0x00
                                    402 ;	preemptive.c:44: for(index=1; index<MAXTHREADS; index++) 
      0004C9 78 2B            [12]  403 	mov	r0,#_index
      0004CB 76 01            [12]  404 	mov	@r0,#0x01
      0004CD                        405 00115$:
      0004CD 78 2B            [12]  406 	mov	r0,#_index
      0004CF C3               [12]  407 	clr	c
      0004D0 E6               [12]  408 	mov	a,@r0
      0004D1 64 80            [12]  409 	xrl	a,#0x80
      0004D3 94 84            [12]  410 	subb	a,#0x84
      0004D5 50 2C            [24]  411 	jnc	00103$
                                    412 ;	preemptive.c:45: if( record_B < Bitmap[index] ) {
      0004D7 78 2B            [12]  413 	mov	r0,#_index
      0004D9 E6               [12]  414 	mov	a,@r0
      0004DA 24 24            [12]  415 	add	a,#_Bitmap
      0004DC F9               [12]  416 	mov	r1,a
      0004DD 87 07            [24]  417 	mov	ar7,@r1
      0004DF 78 5C            [12]  418 	mov	r0,#_record_B
      0004E1 C3               [12]  419 	clr	c
      0004E2 E6               [12]  420 	mov	a,@r0
      0004E3 64 80            [12]  421 	xrl	a,#0x80
      0004E5 8F F0            [24]  422 	mov	b,r7
      0004E7 63 F0 80         [24]  423 	xrl	b,#0x80
      0004EA 95 F0            [12]  424 	subb	a,b
      0004EC 50 10            [24]  425 	jnc	00116$
                                    426 ;	preemptive.c:46: record_B = Bitmap[index];
      0004EE 78 2B            [12]  427 	mov	r0,#_index
      0004F0 E6               [12]  428 	mov	a,@r0
      0004F1 24 24            [12]  429 	add	a,#_Bitmap
      0004F3 F9               [12]  430 	mov	r1,a
      0004F4 78 5C            [12]  431 	mov	r0,#_record_B
      0004F6 E7               [12]  432 	mov	a,@r1
      0004F7 F6               [12]  433 	mov	@r0,a
                                    434 ;	preemptive.c:47: SelectThread = index;
      0004F8 78 2B            [12]  435 	mov	r0,#_index
      0004FA 79 2A            [12]  436 	mov	r1,#_SelectThread
      0004FC E6               [12]  437 	mov	a,@r0
      0004FD F7               [12]  438 	mov	@r1,a
      0004FE                        439 00116$:
                                    440 ;	preemptive.c:44: for(index=1; index<MAXTHREADS; index++) 
      0004FE 78 2B            [12]  441 	mov	r0,#_index
      000500 06               [12]  442 	inc	@r0
      000501 80 CA            [24]  443 	sjmp	00115$
      000503                        444 00103$:
                                    445 ;	preemptive.c:49: if( SelectThread==0 ) flag = 1;
      000503 78 2A            [12]  446 	mov	r0,#_SelectThread
      000505 E6               [12]  447 	mov	a,@r0
      000506 70 04            [24]  448 	jnz	00105$
      000508 78 2F            [12]  449 	mov	r0,#_flag
      00050A 76 01            [12]  450 	mov	@r0,#0x01
      00050C                        451 00105$:
                                    452 ;	preemptive.c:50: EA = 1;
      00050C D2 AF            [12]  453 	setb	_EA
                                    454 ;	preemptive.c:51: while( flag ) {}
      00050E                        455 00106$:
      00050E 78 2F            [12]  456 	mov	r0,#_flag
      000510 E6               [12]  457 	mov	a,@r0
      000511 70 FB            [24]  458 	jnz	00106$
                                    459 ;	preemptive.c:52: EA = 0;
      000513 C2 AF            [12]  460 	clr	_EA
                                    461 ;	preemptive.c:53: if( SelectThread ){
      000515 78 2A            [12]  462 	mov	r0,#_SelectThread
      000517 E6               [12]  463 	mov	a,@r0
      000518 60 1B            [24]  464 	jz	00110$
                                    465 ;	preemptive.c:54: ID = SelectThread;
      00051A 78 2A            [12]  466 	mov	r0,#_SelectThread
      00051C 79 28            [12]  467 	mov	r1,#_ID
      00051E E6               [12]  468 	mov	a,@r0
      00051F F7               [12]  469 	mov	@r1,a
                                    470 ;	preemptive.c:55: RESTORESTATE;
      000520 78 28            [12]  471 	mov	r0,#_ID
      000522 E6               [12]  472 	mov	a,@r0
      000523 24 20            [12]  473 	add	a,#_ThreadSP
      000525 F9               [12]  474 	mov	r1,a
      000526 87 81            [24]  475 	mov	_SP,@r1
      000528 D0 D0            [24]  476 	pop PSW 
      00052A D0 83            [24]  477 	pop DPH 
      00052C D0 82            [24]  478 	pop DPL 
      00052E D0 F0            [24]  479 	pop B 
      000530 D0 E0            [24]  480 	pop ACC 
                                    481 ;	preemptive.c:56: EA = 1;
      000532 D2 AF            [12]  482 	setb	_EA
                                    483 ;	preemptive.c:57: return;
      000534 22               [24]  484 	ret
      000535                        485 00110$:
                                    486 ;	preemptive.c:59: EA = 1;
      000535 D2 AF            [12]  487 	setb	_EA
      000537 80 86            [24]  488 	sjmp	00112$
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'myTimer0Handler'
                                    491 ;------------------------------------------------------------
                                    492 ;	preemptive.c:63: void myTimer0Handler(void){
                                    493 ;	-----------------------------------------
                                    494 ;	 function myTimer0Handler
                                    495 ;	-----------------------------------------
      000539                        496 _myTimer0Handler:
                                    497 ;	preemptive.c:64: SAVESTATE;
      000539 C0 E0            [24]  498 	push ACC 
      00053B C0 F0            [24]  499 	push B 
      00053D C0 82            [24]  500 	push DPL 
      00053F C0 83            [24]  501 	push DPH 
      000541 C0 D0            [24]  502 	push PSW 
      000543 C2 D4            [12]  503 	clr RS1 
      000545 C2 D3            [12]  504 	clr RS0 
      000547 78 28            [12]  505 	mov	r0,#_ID
      000549 E6               [12]  506 	mov	a,@r0
      00054A 24 20            [12]  507 	add	a,#_ThreadSP
      00054C F8               [12]  508 	mov	r0,a
      00054D A6 81            [24]  509 	mov	@r0,_SP
                                    510 ;	preemptive.c:66: flag = 0;
      00054F 78 2F            [12]  511 	mov	r0,#_flag
      000551 76 00            [12]  512 	mov	@r0,#0x00
                                    513 ;	preemptive.c:68: counter = (counter==4) ? 0 : counter+1;
      000553 78 2D            [12]  514 	mov	r0,#_counter
      000555 B6 04 04         [24]  515 	cjne	@r0,#0x04,00118$
      000558 7F 00            [12]  516 	mov	r7,#0x00
      00055A 80 05            [24]  517 	sjmp	00119$
      00055C                        518 00118$:
      00055C 78 2D            [12]  519 	mov	r0,#_counter
      00055E E6               [12]  520 	mov	a,@r0
      00055F 04               [12]  521 	inc	a
      000560 FF               [12]  522 	mov	r7,a
      000561                        523 00119$:
      000561 78 2D            [12]  524 	mov	r0,#_counter
      000563 A6 07            [24]  525 	mov	@r0,ar7
                                    526 ;	preemptive.c:69: if(!counter) time++;
      000565 78 2D            [12]  527 	mov	r0,#_counter
      000567 E6               [12]  528 	mov	a,@r0
      000568 70 03            [24]  529 	jnz	00102$
      00056A 78 2C            [12]  530 	mov	r0,#_time
      00056C 06               [12]  531 	inc	@r0
      00056D                        532 00102$:
                                    533 ;	preemptive.c:71: for(index=1; index<MAXTHREADS; index++){
      00056D 78 2B            [12]  534 	mov	r0,#_index
      00056F 76 01            [12]  535 	mov	@r0,#0x01
      000571                        536 00114$:
      000571 78 2B            [12]  537 	mov	r0,#_index
      000573 C3               [12]  538 	clr	c
      000574 E6               [12]  539 	mov	a,@r0
      000575 64 80            [12]  540 	xrl	a,#0x80
      000577 94 84            [12]  541 	subb	a,#0x84
      000579 50 5A            [24]  542 	jnc	00112$
                                    543 ;	preemptive.c:72: if( Bitmap[index]>0 ){
      00057B 78 2B            [12]  544 	mov	r0,#_index
      00057D E6               [12]  545 	mov	a,@r0
      00057E 24 24            [12]  546 	add	a,#_Bitmap
      000580 F9               [12]  547 	mov	r1,a
      000581 87 07            [24]  548 	mov	ar7,@r1
      000583 C3               [12]  549 	clr	c
      000584 74 80            [12]  550 	mov	a,#(0x00 ^ 0x80)
      000586 8F F0            [24]  551 	mov	b,r7
      000588 63 F0 80         [24]  552 	xrl	b,#0x80
      00058B 95 F0            [12]  553 	subb	a,b
      00058D 50 20            [24]  554 	jnc	00110$
                                    555 ;	preemptive.c:73: if( index==ID ) Bitmap[index]=1;
      00058F 78 2B            [12]  556 	mov	r0,#_index
      000591 79 28            [12]  557 	mov	r1,#_ID
      000593 86 F0            [24]  558 	mov	b,@r0
      000595 E7               [12]  559 	mov	a,@r1
      000596 B5 F0 0A         [24]  560 	cjne	a,b,00104$
      000599 78 2B            [12]  561 	mov	r0,#_index
      00059B E6               [12]  562 	mov	a,@r0
      00059C 24 24            [12]  563 	add	a,#_Bitmap
      00059E F8               [12]  564 	mov	r0,a
      00059F 76 01            [12]  565 	mov	@r0,#0x01
      0005A1 80 2D            [24]  566 	sjmp	00115$
      0005A3                        567 00104$:
                                    568 ;	preemptive.c:74: else Bitmap[index]++;
      0005A3 78 2B            [12]  569 	mov	r0,#_index
      0005A5 E6               [12]  570 	mov	a,@r0
      0005A6 24 24            [12]  571 	add	a,#_Bitmap
      0005A8 F9               [12]  572 	mov	r1,a
      0005A9 E7               [12]  573 	mov	a,@r1
      0005AA FF               [12]  574 	mov	r7,a
      0005AB 04               [12]  575 	inc	a
      0005AC F7               [12]  576 	mov	@r1,a
      0005AD 80 21            [24]  577 	sjmp	00115$
      0005AF                        578 00110$:
                                    579 ;	preemptive.c:76: else if( Bitmap[index]==-2 && Delay_Time[index]==time ) Bitmap[index] = 10;
      0005AF 78 2B            [12]  580 	mov	r0,#_index
      0005B1 E6               [12]  581 	mov	a,@r0
      0005B2 24 24            [12]  582 	add	a,#_Bitmap
      0005B4 F9               [12]  583 	mov	r1,a
      0005B5 87 07            [24]  584 	mov	ar7,@r1
      0005B7 BF FE 16         [24]  585 	cjne	r7,#0xFE,00115$
      0005BA 78 2B            [12]  586 	mov	r0,#_index
      0005BC E6               [12]  587 	mov	a,@r0
      0005BD 24 6B            [12]  588 	add	a,#_Delay_Time
      0005BF F9               [12]  589 	mov	r1,a
      0005C0 87 07            [24]  590 	mov	ar7,@r1
      0005C2 78 2C            [12]  591 	mov	r0,#_time
      0005C4 E6               [12]  592 	mov	a,@r0
      0005C5 B5 07 08         [24]  593 	cjne	a,ar7,00115$
      0005C8 78 2B            [12]  594 	mov	r0,#_index
      0005CA E6               [12]  595 	mov	a,@r0
      0005CB 24 24            [12]  596 	add	a,#_Bitmap
      0005CD F8               [12]  597 	mov	r0,a
      0005CE 76 0A            [12]  598 	mov	@r0,#0x0A
      0005D0                        599 00115$:
                                    600 ;	preemptive.c:71: for(index=1; index<MAXTHREADS; index++){
      0005D0 78 2B            [12]  601 	mov	r0,#_index
      0005D2 06               [12]  602 	inc	@r0
      0005D3 80 9C            [24]  603 	sjmp	00114$
      0005D5                        604 00112$:
                                    605 ;	preemptive.c:78: ID = 0; //manager_ID
      0005D5 78 28            [12]  606 	mov	r0,#_ID
      0005D7 76 00            [12]  607 	mov	@r0,#0x00
                                    608 ;	preemptive.c:79: RESTORESTATE;
      0005D9 78 28            [12]  609 	mov	r0,#_ID
      0005DB E6               [12]  610 	mov	a,@r0
      0005DC 24 20            [12]  611 	add	a,#_ThreadSP
      0005DE F9               [12]  612 	mov	r1,a
      0005DF 87 81            [24]  613 	mov	_SP,@r1
      0005E1 D0 D0            [24]  614 	pop PSW 
      0005E3 D0 83            [24]  615 	pop DPH 
      0005E5 D0 82            [24]  616 	pop DPL 
      0005E7 D0 F0            [24]  617 	pop B 
      0005E9 D0 E0            [24]  618 	pop ACC 
                                    619 ;	preemptive.c:82: __endasm;
      0005EB 32               [24]  620 	reti
      0005EC 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'Bootstrap'
                                    624 ;------------------------------------------------------------
                                    625 ;	preemptive.c:85: void Bootstrap(void) {
                                    626 ;	-----------------------------------------
                                    627 ;	 function Bootstrap
                                    628 ;	-----------------------------------------
      0005ED                        629 _Bootstrap:
                                    630 ;	preemptive.c:86: Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
      0005ED 78 27            [12]  631 	mov	r0,#(_Bitmap + 0x0003)
      0005EF 76 00            [12]  632 	mov	@r0,#0x00
      0005F1 78 26            [12]  633 	mov	r0,#(_Bitmap + 0x0002)
      0005F3 76 00            [12]  634 	mov	@r0,#0x00
      0005F5 78 25            [12]  635 	mov	r0,#(_Bitmap + 0x0001)
      0005F7 76 00            [12]  636 	mov	@r0,#0x00
      0005F9 78 24            [12]  637 	mov	r0,#_Bitmap
      0005FB 76 00            [12]  638 	mov	@r0,#0x00
                                    639 ;	preemptive.c:88: time = 1, counter = 0;
      0005FD 78 2C            [12]  640 	mov	r0,#_time
      0005FF 76 01            [12]  641 	mov	@r0,#0x01
      000601 78 2D            [12]  642 	mov	r0,#_counter
      000603 76 00            [12]  643 	mov	@r0,#0x00
                                    644 ;	preemptive.c:90: TMOD = 0;
      000605 75 89 00         [24]  645 	mov	_TMOD,#0x00
                                    646 ;	preemptive.c:91: IE = 0x82;
      000608 75 A8 82         [24]  647 	mov	_IE,#0x82
                                    648 ;	preemptive.c:92: TR0 = 1;
      00060B D2 8C            [12]  649 	setb	_TR0
                                    650 ;	preemptive.c:94: SemaphoreCreate(thread, 4);
      00060D 78 2E            [12]  651 	mov	r0,#_thread
      00060F 76 04            [12]  652 	mov	@r0,#0x04
                                    653 ;	preemptive.c:96: ThreadCreate( thread_manager );
      000611 90 04 BF         [24]  654 	mov	dptr,#_thread_manager
      000614 12 06 35         [24]  655 	lcall	_ThreadCreate
                                    656 ;	preemptive.c:97: ID = ThreadCreate( main );
      000617 90 04 59         [24]  657 	mov	dptr,#_main
      00061A 12 06 35         [24]  658 	lcall	_ThreadCreate
      00061D E5 82            [12]  659 	mov	a,dpl
      00061F 78 28            [12]  660 	mov	r0,#_ID
      000621 F6               [12]  661 	mov	@r0,a
                                    662 ;	preemptive.c:98: RESTORESTATE;
      000622 78 28            [12]  663 	mov	r0,#_ID
      000624 E6               [12]  664 	mov	a,@r0
      000625 24 20            [12]  665 	add	a,#_ThreadSP
      000627 F9               [12]  666 	mov	r1,a
      000628 87 81            [24]  667 	mov	_SP,@r1
      00062A D0 D0            [24]  668 	pop PSW 
      00062C D0 83            [24]  669 	pop DPH 
      00062E D0 82            [24]  670 	pop DPL 
      000630 D0 F0            [24]  671 	pop B 
      000632 D0 E0            [24]  672 	pop ACC 
      000634 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'ThreadCreate'
                                    676 ;------------------------------------------------------------
                                    677 ;fp                        Allocated to registers 
                                    678 ;------------------------------------------------------------
                                    679 ;	preemptive.c:101: ThreadID ThreadCreate(FunctionPtr fp) {
                                    680 ;	-----------------------------------------
                                    681 ;	 function ThreadCreate
                                    682 ;	-----------------------------------------
      000635                        683 _ThreadCreate:
                                    684 ;	preemptive.c:102: SemaphoreWait( thread );
      000635 78 2E            [12]  685 	mov	r0,#_thread
      000637 16               [12]  686 	dec	@r0
      000638                        687 00101$:
      000638 78 2E            [12]  688 	mov	r0,#_thread
      00063A E6               [12]  689 	mov	a,@r0
      00063B 20 E7 FA         [24]  690 	jb	acc.7,00101$
                                    691 ;	preemptive.c:103: EA = 0;// disable interrupts 
      00063E C2 AF            [12]  692 	clr	_EA
                                    693 ;	preemptive.c:104: for(index=0; index<MAXTHREADS; index++) 
      000640 78 2B            [12]  694 	mov	r0,#_index
      000642 76 00            [12]  695 	mov	@r0,#0x00
      000644                        696 00110$:
      000644 78 2B            [12]  697 	mov	r0,#_index
      000646 C3               [12]  698 	clr	c
      000647 E6               [12]  699 	mov	a,@r0
      000648 64 80            [12]  700 	xrl	a,#0x80
      00064A 94 84            [12]  701 	subb	a,#0x84
      00064C 50 0E            [24]  702 	jnc	00106$
                                    703 ;	preemptive.c:105: if( !Bitmap[index] ) 
      00064E 78 2B            [12]  704 	mov	r0,#_index
      000650 E6               [12]  705 	mov	a,@r0
      000651 24 24            [12]  706 	add	a,#_Bitmap
      000653 F9               [12]  707 	mov	r1,a
      000654 E7               [12]  708 	mov	a,@r1
      000655 60 05            [24]  709 	jz	00106$
                                    710 ;	preemptive.c:104: for(index=0; index<MAXTHREADS; index++) 
      000657 78 2B            [12]  711 	mov	r0,#_index
      000659 06               [12]  712 	inc	@r0
      00065A 80 E8            [24]  713 	sjmp	00110$
      00065C                        714 00106$:
                                    715 ;	preemptive.c:107: if( index==MAXTHREADS ) 
      00065C 78 2B            [12]  716 	mov	r0,#_index
      00065E B6 04 04         [24]  717 	cjne	@r0,#0x04,00108$
                                    718 ;	preemptive.c:108: return -1;
      000661 75 82 FF         [24]  719 	mov	dpl,#0xFF
      000664 22               [24]  720 	ret
      000665                        721 00108$:
                                    722 ;	preemptive.c:110: Bitmap[index] = 1;
      000665 78 2B            [12]  723 	mov	r0,#_index
      000667 E6               [12]  724 	mov	a,@r0
      000668 24 24            [12]  725 	add	a,#_Bitmap
      00066A F8               [12]  726 	mov	r0,a
      00066B 76 01            [12]  727 	mov	@r0,#0x01
                                    728 ;	preemptive.c:111: SaveCurrentSP = SP;
      00066D 78 29            [12]  729 	mov	r0,#_SaveCurrentSP
      00066F A6 81            [24]  730 	mov	@r0,_SP
                                    731 ;	preemptive.c:112: SP = 0x3F + index*0x10;
      000671 78 2B            [12]  732 	mov	r0,#_index
      000673 E6               [12]  733 	mov	a,@r0
      000674 C4               [12]  734 	swap	a
      000675 54 F0            [12]  735 	anl	a,#0xF0
      000677 FF               [12]  736 	mov	r7,a
      000678 24 3F            [12]  737 	add	a,#0x3F
      00067A F5 81            [12]  738 	mov	_SP,a
                                    739 ;	preemptive.c:127: __endasm;
      00067C E5 82            [12]  740 	mov a,DPL
      00067E 85 83 F0         [24]  741 	mov b,DPH
      000681 90 07 04         [24]  742 	mov dptr,#_ThreadExit
      000684 C0 82            [24]  743 	push DPL
      000686 C0 83            [24]  744 	push DPH
      000688 C0 E0            [24]  745 	push a
      00068A C0 F0            [24]  746 	push b
      00068C 74 00            [12]  747 	mov a,#0x00
      00068E C0 E0            [24]  748 	push a
      000690 C0 E0            [24]  749 	push a
      000692 C0 E0            [24]  750 	push a
      000694 C0 E0            [24]  751 	push a
                                    752 ;	preemptive.c:128: SelectThread = index<<3;
      000696 78 2B            [12]  753 	mov	r0,#_index
      000698 79 2A            [12]  754 	mov	r1,#_SelectThread
      00069A E6               [12]  755 	mov	a,@r0
      00069B C4               [12]  756 	swap	a
      00069C 03               [12]  757 	rr	a
      00069D 54 F8            [12]  758 	anl	a,#0xF8
      00069F F7               [12]  759 	mov	@r1,a
                                    760 ;	preemptive.c:131: __endasm;
      0006A0 C0 2A            [24]  761 	push _SelectThread
                                    762 ;	preemptive.c:133: ThreadSP[index] = SP;
      0006A2 78 2B            [12]  763 	mov	r0,#_index
      0006A4 E6               [12]  764 	mov	a,@r0
      0006A5 24 20            [12]  765 	add	a,#_ThreadSP
      0006A7 F8               [12]  766 	mov	r0,a
      0006A8 A6 81            [24]  767 	mov	@r0,_SP
                                    768 ;	preemptive.c:134: SP = SaveCurrentSP;
      0006AA 78 29            [12]  769 	mov	r0,#_SaveCurrentSP
      0006AC 86 81            [24]  770 	mov	_SP,@r0
                                    771 ;	preemptive.c:135: EA = 1;// reenable interrupts 
      0006AE D2 AF            [12]  772 	setb	_EA
                                    773 ;	preemptive.c:136: return index;
      0006B0 78 2B            [12]  774 	mov	r0,#_index
      0006B2 86 82            [24]  775 	mov	dpl,@r0
      0006B4 22               [24]  776 	ret
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'ThreadYield'
                                    779 ;------------------------------------------------------------
                                    780 ;	preemptive.c:139: void ThreadYield(void) {
                                    781 ;	-----------------------------------------
                                    782 ;	 function ThreadYield
                                    783 ;	-----------------------------------------
      0006B5                        784 _ThreadYield:
                                    785 ;	preemptive.c:140: EA = 0;// disable interrupts 
      0006B5 C2 AF            [12]  786 	clr	_EA
                                    787 ;	preemptive.c:141: SAVESTATE;
      0006B7 C0 E0            [24]  788 	push ACC 
      0006B9 C0 F0            [24]  789 	push B 
      0006BB C0 82            [24]  790 	push DPL 
      0006BD C0 83            [24]  791 	push DPH 
      0006BF C0 D0            [24]  792 	push PSW 
      0006C1 C2 D4            [12]  793 	clr RS1 
      0006C3 C2 D3            [12]  794 	clr RS0 
      0006C5 78 28            [12]  795 	mov	r0,#_ID
      0006C7 E6               [12]  796 	mov	a,@r0
      0006C8 24 20            [12]  797 	add	a,#_ThreadSP
      0006CA F8               [12]  798 	mov	r0,a
      0006CB A6 81            [24]  799 	mov	@r0,_SP
                                    800 ;	preemptive.c:142: do {
      0006CD                        801 00106$:
                                    802 ;	preemptive.c:143: if( ID==MAXTHREADS-1 )
      0006CD 78 28            [12]  803 	mov	r0,#_ID
      0006CF B6 03 06         [24]  804 	cjne	@r0,#0x03,00102$
                                    805 ;	preemptive.c:144: ID = 0;
      0006D2 78 28            [12]  806 	mov	r0,#_ID
      0006D4 76 00            [12]  807 	mov	@r0,#0x00
      0006D6 80 03            [24]  808 	sjmp	00103$
      0006D8                        809 00102$:
                                    810 ;	preemptive.c:146: ID++;
      0006D8 78 28            [12]  811 	mov	r0,#_ID
      0006DA 06               [12]  812 	inc	@r0
      0006DB                        813 00103$:
                                    814 ;	preemptive.c:147: if( Bitmap[ID]>0 ) 
      0006DB 78 28            [12]  815 	mov	r0,#_ID
      0006DD E6               [12]  816 	mov	a,@r0
      0006DE 24 24            [12]  817 	add	a,#_Bitmap
      0006E0 F9               [12]  818 	mov	r1,a
      0006E1 87 07            [24]  819 	mov	ar7,@r1
      0006E3 C3               [12]  820 	clr	c
      0006E4 74 80            [12]  821 	mov	a,#(0x00 ^ 0x80)
      0006E6 8F F0            [24]  822 	mov	b,r7
      0006E8 63 F0 80         [24]  823 	xrl	b,#0x80
      0006EB 95 F0            [12]  824 	subb	a,b
      0006ED 50 DE            [24]  825 	jnc	00106$
                                    826 ;	preemptive.c:150: RESTORESTATE;
      0006EF 78 28            [12]  827 	mov	r0,#_ID
      0006F1 E6               [12]  828 	mov	a,@r0
      0006F2 24 20            [12]  829 	add	a,#_ThreadSP
      0006F4 F9               [12]  830 	mov	r1,a
      0006F5 87 81            [24]  831 	mov	_SP,@r1
      0006F7 D0 D0            [24]  832 	pop PSW 
      0006F9 D0 83            [24]  833 	pop DPH 
      0006FB D0 82            [24]  834 	pop DPL 
      0006FD D0 F0            [24]  835 	pop B 
      0006FF D0 E0            [24]  836 	pop ACC 
                                    837 ;	preemptive.c:151: EA = 1;// reenable interrupts 
      000701 D2 AF            [12]  838 	setb	_EA
      000703 22               [24]  839 	ret
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'ThreadExit'
                                    842 ;------------------------------------------------------------
                                    843 ;	preemptive.c:154: void ThreadExit(void) {
                                    844 ;	-----------------------------------------
                                    845 ;	 function ThreadExit
                                    846 ;	-----------------------------------------
      000704                        847 _ThreadExit:
                                    848 ;	preemptive.c:155: SemaphoreSignal( thread );
      000704 78 2E            [12]  849 	mov	r0,#_thread
      000706 06               [12]  850 	inc	@r0
                                    851 ;	preemptive.c:156: EA = 0;// disable interrupts 
      000707 C2 AF            [12]  852 	clr	_EA
                                    853 ;	preemptive.c:157: Bitmap[ID] = 0;
      000709 78 28            [12]  854 	mov	r0,#_ID
      00070B E6               [12]  855 	mov	a,@r0
      00070C 24 24            [12]  856 	add	a,#_Bitmap
      00070E F8               [12]  857 	mov	r0,a
      00070F 76 00            [12]  858 	mov	@r0,#0x00
                                    859 ;	preemptive.c:161: __endasm;
      000711 C2 D4            [12]  860 	clr RS1
      000713 C2 D3            [12]  861 	clr RS0
                                    862 ;	preemptive.c:162: do {
      000715                        863 00106$:
                                    864 ;	preemptive.c:163: if( ID==MAXTHREADS-1 ) 
      000715 78 28            [12]  865 	mov	r0,#_ID
      000717 B6 03 06         [24]  866 	cjne	@r0,#0x03,00102$
                                    867 ;	preemptive.c:164: ID = 0;
      00071A 78 28            [12]  868 	mov	r0,#_ID
      00071C 76 00            [12]  869 	mov	@r0,#0x00
      00071E 80 03            [24]  870 	sjmp	00103$
      000720                        871 00102$:
                                    872 ;	preemptive.c:166: ID++;
      000720 78 28            [12]  873 	mov	r0,#_ID
      000722 06               [12]  874 	inc	@r0
      000723                        875 00103$:
                                    876 ;	preemptive.c:167: if( Bitmap[ID]>0 ) 
      000723 78 28            [12]  877 	mov	r0,#_ID
      000725 E6               [12]  878 	mov	a,@r0
      000726 24 24            [12]  879 	add	a,#_Bitmap
      000728 F9               [12]  880 	mov	r1,a
      000729 87 07            [24]  881 	mov	ar7,@r1
      00072B C3               [12]  882 	clr	c
      00072C 74 80            [12]  883 	mov	a,#(0x00 ^ 0x80)
      00072E 8F F0            [24]  884 	mov	b,r7
      000730 63 F0 80         [24]  885 	xrl	b,#0x80
      000733 95 F0            [12]  886 	subb	a,b
      000735 50 DE            [24]  887 	jnc	00106$
                                    888 ;	preemptive.c:170: RESTORESTATE;
      000737 78 28            [12]  889 	mov	r0,#_ID
      000739 E6               [12]  890 	mov	a,@r0
      00073A 24 20            [12]  891 	add	a,#_ThreadSP
      00073C F9               [12]  892 	mov	r1,a
      00073D 87 81            [24]  893 	mov	_SP,@r1
      00073F D0 D0            [24]  894 	pop PSW 
      000741 D0 83            [24]  895 	pop DPH 
      000743 D0 82            [24]  896 	pop DPL 
      000745 D0 F0            [24]  897 	pop B 
      000747 D0 E0            [24]  898 	pop ACC 
                                    899 ;	preemptive.c:171: EA = 1;// reenable interrupts 
      000749 D2 AF            [12]  900 	setb	_EA
      00074B 22               [24]  901 	ret
                                    902 	.area CSEG    (CODE)
                                    903 	.area CONST   (CODE)
                                    904 	.area XINIT   (CODE)
                                    905 	.area CABS    (ABS,CODE)
