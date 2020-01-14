                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Tue Dec 24 19:21:44 2019
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
                                     15 	.globl _main
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _index
                                    113 	.globl _SelectThread
                                    114 	.globl _SaveCurrentSP
                                    115 	.globl _manager_ID
                                    116 	.globl _ID
                                    117 	.globl _Bitmap
                                    118 	.globl _ThreadSP
                                    119 	.globl _ThreadCreate
                                    120 	.globl _ThreadYield
                                    121 	.globl _ThreadExit
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                           000020   245 _ThreadSP	=	0x0020
                           000024   246 _Bitmap	=	0x0024
                           000028   247 _ID	=	0x0028
                           000029   248 _manager_ID	=	0x0029
                           00002A   249 _SaveCurrentSP	=	0x002a
                           00002B   250 _SelectThread	=	0x002b
                           00002C   251 _index	=	0x002c
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; code
                                    301 ;--------------------------------------------------------
                                    302 	.area CSEG    (CODE)
                                    303 ;------------------------------------------------------------
                                    304 ;Allocation info for local variables in function 'thread_manager'
                                    305 ;------------------------------------------------------------
                                    306 ;	preemptive.c:30: void thread_manager(void){
                                    307 ;	-----------------------------------------
                                    308 ;	 function thread_manager
                                    309 ;	-----------------------------------------
      0000D2                        310 _thread_manager:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	preemptive.c:31: do {
      0000D2                        320 00106$:
                                    321 ;	preemptive.c:32: if( ID==MAXTHREADS-1 ) 
      0000D2 78 28            [12]  322 	mov	r0,#_ID
      0000D4 B6 03 06         [24]  323 	cjne	@r0,#0x03,00102$
                                    324 ;	preemptive.c:33: ID = 0;
      0000D7 78 28            [12]  325 	mov	r0,#_ID
      0000D9 76 00            [12]  326 	mov	@r0,#0x00
      0000DB 80 03            [24]  327 	sjmp	00103$
      0000DD                        328 00102$:
                                    329 ;	preemptive.c:35: ID++;
      0000DD 78 28            [12]  330 	mov	r0,#_ID
      0000DF 06               [12]  331 	inc	@r0
      0000E0                        332 00103$:
                                    333 ;	preemptive.c:36: if( Bitmap[ID]>0 ) 
      0000E0 78 28            [12]  334 	mov	r0,#_ID
      0000E2 E6               [12]  335 	mov	a,@r0
      0000E3 24 24            [12]  336 	add	a,#_Bitmap
      0000E5 F9               [12]  337 	mov	r1,a
      0000E6 87 07            [24]  338 	mov	ar7,@r1
      0000E8 C3               [12]  339 	clr	c
      0000E9 74 80            [12]  340 	mov	a,#(0x00 ^ 0x80)
      0000EB 8F F0            [24]  341 	mov	b,r7
      0000ED 63 F0 80         [24]  342 	xrl	b,#0x80
      0000F0 95 F0            [12]  343 	subb	a,b
      0000F2 50 DE            [24]  344 	jnc	00106$
                                    345 ;	preemptive.c:39: RESTORESTATE;
      0000F4 78 28            [12]  346 	mov	r0,#_ID
      0000F6 E6               [12]  347 	mov	a,@r0
      0000F7 24 20            [12]  348 	add	a,#_ThreadSP
      0000F9 F9               [12]  349 	mov	r1,a
      0000FA 87 81            [24]  350 	mov	_SP,@r1
      0000FC D0 D0            [24]  351 	pop PSW 
      0000FE D0 83            [24]  352 	pop DPH 
      000100 D0 82            [24]  353 	pop DPL 
      000102 D0 F0            [24]  354 	pop B 
      000104 D0 E0            [24]  355 	pop ACC 
                                    356 ;	preemptive.c:43: __endasm;
      000106 32               [24]  357 	reti
      000107 22               [24]  358 	ret
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'myTimer0Handler'
                                    361 ;------------------------------------------------------------
                                    362 ;	preemptive.c:46: void myTimer0Handler(void){
                                    363 ;	-----------------------------------------
                                    364 ;	 function myTimer0Handler
                                    365 ;	-----------------------------------------
      000108                        366 _myTimer0Handler:
                                    367 ;	preemptive.c:47: SAVESTATE;
      000108 C0 E0            [24]  368 	push ACC 
      00010A C0 F0            [24]  369 	push B 
      00010C C0 82            [24]  370 	push DPL 
      00010E C0 83            [24]  371 	push DPH 
      000110 C0 D0            [24]  372 	push PSW 
      000112 C2 D4            [12]  373 	clr RS1 
      000114 C2 D3            [12]  374 	clr RS0 
      000116 78 28            [12]  375 	mov	r0,#_ID
      000118 E6               [12]  376 	mov	a,@r0
      000119 24 20            [12]  377 	add	a,#_ThreadSP
      00011B F8               [12]  378 	mov	r0,a
      00011C A6 81            [24]  379 	mov	@r0,_SP
                                    380 ;	preemptive.c:48: SaveCurrentSP = ID;
      00011E 78 28            [12]  381 	mov	r0,#_ID
      000120 79 2A            [12]  382 	mov	r1,#_SaveCurrentSP
      000122 E6               [12]  383 	mov	a,@r0
      000123 F7               [12]  384 	mov	@r1,a
                                    385 ;	preemptive.c:49: ID = manager_ID;
      000124 78 29            [12]  386 	mov	r0,#_manager_ID
      000126 79 28            [12]  387 	mov	r1,#_ID
      000128 E6               [12]  388 	mov	a,@r0
      000129 F7               [12]  389 	mov	@r1,a
                                    390 ;	preemptive.c:50: RESTORESTATE;
      00012A 78 28            [12]  391 	mov	r0,#_ID
      00012C E6               [12]  392 	mov	a,@r0
      00012D 24 20            [12]  393 	add	a,#_ThreadSP
      00012F F9               [12]  394 	mov	r1,a
      000130 87 81            [24]  395 	mov	_SP,@r1
      000132 D0 D0            [24]  396 	pop PSW 
      000134 D0 83            [24]  397 	pop DPH 
      000136 D0 82            [24]  398 	pop DPL 
      000138 D0 F0            [24]  399 	pop B 
      00013A D0 E0            [24]  400 	pop ACC 
                                    401 ;	preemptive.c:51: ID = SaveCurrentSP;
      00013C 78 2A            [12]  402 	mov	r0,#_SaveCurrentSP
      00013E 79 28            [12]  403 	mov	r1,#_ID
      000140 E6               [12]  404 	mov	a,@r0
      000141 F7               [12]  405 	mov	@r1,a
      000142 22               [24]  406 	ret
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'Bootstrap'
                                    409 ;------------------------------------------------------------
                                    410 ;	preemptive.c:54: void Bootstrap(void) {
                                    411 ;	-----------------------------------------
                                    412 ;	 function Bootstrap
                                    413 ;	-----------------------------------------
      000143                        414 _Bootstrap:
                                    415 ;	preemptive.c:55: Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
      000143 78 27            [12]  416 	mov	r0,#(_Bitmap + 0x0003)
      000145 76 00            [12]  417 	mov	@r0,#0x00
      000147 78 26            [12]  418 	mov	r0,#(_Bitmap + 0x0002)
      000149 76 00            [12]  419 	mov	@r0,#0x00
      00014B 78 25            [12]  420 	mov	r0,#(_Bitmap + 0x0001)
      00014D 76 00            [12]  421 	mov	@r0,#0x00
      00014F 78 24            [12]  422 	mov	r0,#_Bitmap
      000151 76 00            [12]  423 	mov	@r0,#0x00
                                    424 ;	preemptive.c:57: TMOD = 0;
      000153 75 89 00         [24]  425 	mov	_TMOD,#0x00
                                    426 ;	preemptive.c:58: IE = 0x82;
      000156 75 A8 82         [24]  427 	mov	_IE,#0x82
                                    428 ;	preemptive.c:59: TR0 = 1;
      000159 D2 8C            [12]  429 	setb	_TR0
                                    430 ;	preemptive.c:61: manager_ID = ThreadCreate( thread_manager );
      00015B 90 00 D2         [24]  431 	mov	dptr,#_thread_manager
      00015E 12 01 84         [24]  432 	lcall	_ThreadCreate
      000161 E5 82            [12]  433 	mov	a,dpl
      000163 78 29            [12]  434 	mov	r0,#_manager_ID
      000165 F6               [12]  435 	mov	@r0,a
                                    436 ;	preemptive.c:62: ID = ThreadCreate( main );
      000166 90 00 98         [24]  437 	mov	dptr,#_main
      000169 12 01 84         [24]  438 	lcall	_ThreadCreate
      00016C E5 82            [12]  439 	mov	a,dpl
      00016E 78 28            [12]  440 	mov	r0,#_ID
      000170 F6               [12]  441 	mov	@r0,a
                                    442 ;	preemptive.c:63: RESTORESTATE;
      000171 78 28            [12]  443 	mov	r0,#_ID
      000173 E6               [12]  444 	mov	a,@r0
      000174 24 20            [12]  445 	add	a,#_ThreadSP
      000176 F9               [12]  446 	mov	r1,a
      000177 87 81            [24]  447 	mov	_SP,@r1
      000179 D0 D0            [24]  448 	pop PSW 
      00017B D0 83            [24]  449 	pop DPH 
      00017D D0 82            [24]  450 	pop DPL 
      00017F D0 F0            [24]  451 	pop B 
      000181 D0 E0            [24]  452 	pop ACC 
      000183 22               [24]  453 	ret
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'ThreadCreate'
                                    456 ;------------------------------------------------------------
                                    457 ;fp                        Allocated to registers 
                                    458 ;------------------------------------------------------------
                                    459 ;	preemptive.c:66: ThreadID ThreadCreate(FunctionPtr fp) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function ThreadCreate
                                    462 ;	-----------------------------------------
      000184                        463 _ThreadCreate:
                                    464 ;	preemptive.c:67: EA = 0;// disable interrupts 
      000184 C2 AF            [12]  465 	clr	_EA
                                    466 ;	preemptive.c:68: for(index=0; index<MAXTHREADS; index++) 
      000186 78 2C            [12]  467 	mov	r0,#_index
      000188 76 00            [12]  468 	mov	@r0,#0x00
      00018A                        469 00107$:
      00018A 78 2C            [12]  470 	mov	r0,#_index
      00018C C3               [12]  471 	clr	c
      00018D E6               [12]  472 	mov	a,@r0
      00018E 64 80            [12]  473 	xrl	a,#0x80
      000190 94 84            [12]  474 	subb	a,#0x84
      000192 50 0E            [24]  475 	jnc	00103$
                                    476 ;	preemptive.c:69: if( !Bitmap[index] ) 
      000194 78 2C            [12]  477 	mov	r0,#_index
      000196 E6               [12]  478 	mov	a,@r0
      000197 24 24            [12]  479 	add	a,#_Bitmap
      000199 F9               [12]  480 	mov	r1,a
      00019A E7               [12]  481 	mov	a,@r1
      00019B 60 05            [24]  482 	jz	00103$
                                    483 ;	preemptive.c:68: for(index=0; index<MAXTHREADS; index++) 
      00019D 78 2C            [12]  484 	mov	r0,#_index
      00019F 06               [12]  485 	inc	@r0
      0001A0 80 E8            [24]  486 	sjmp	00107$
      0001A2                        487 00103$:
                                    488 ;	preemptive.c:71: if( index==MAXTHREADS ) 
      0001A2 78 2C            [12]  489 	mov	r0,#_index
      0001A4 B6 04 04         [24]  490 	cjne	@r0,#0x04,00105$
                                    491 ;	preemptive.c:72: return -1;
      0001A7 75 82 FF         [24]  492 	mov	dpl,#0xFF
      0001AA 22               [24]  493 	ret
      0001AB                        494 00105$:
                                    495 ;	preemptive.c:74: Bitmap[index] = 1;
      0001AB 78 2C            [12]  496 	mov	r0,#_index
      0001AD E6               [12]  497 	mov	a,@r0
      0001AE 24 24            [12]  498 	add	a,#_Bitmap
      0001B0 F8               [12]  499 	mov	r0,a
      0001B1 76 01            [12]  500 	mov	@r0,#0x01
                                    501 ;	preemptive.c:75: SaveCurrentSP = SP;
      0001B3 78 2A            [12]  502 	mov	r0,#_SaveCurrentSP
      0001B5 A6 81            [24]  503 	mov	@r0,_SP
                                    504 ;	preemptive.c:76: SP = 0x3F + index*0x10;
      0001B7 78 2C            [12]  505 	mov	r0,#_index
      0001B9 E6               [12]  506 	mov	a,@r0
      0001BA C4               [12]  507 	swap	a
      0001BB 54 F0            [12]  508 	anl	a,#0xF0
      0001BD FF               [12]  509 	mov	r7,a
      0001BE 24 3F            [12]  510 	add	a,#0x3F
      0001C0 F5 81            [12]  511 	mov	_SP,a
                                    512 ;	preemptive.c:91: __endasm;
      0001C2 E5 82            [12]  513 	mov a,DPL
      0001C4 85 83 F0         [24]  514 	mov b,DPH
      0001C7 90 02 4A         [24]  515 	mov dptr,#_ThreadExit
      0001CA C0 82            [24]  516 	push DPL
      0001CC C0 83            [24]  517 	push DPH
      0001CE C0 E0            [24]  518 	push a
      0001D0 C0 F0            [24]  519 	push b
      0001D2 74 00            [12]  520 	mov a,#0x00
      0001D4 C0 E0            [24]  521 	push a
      0001D6 C0 E0            [24]  522 	push a
      0001D8 C0 E0            [24]  523 	push a
      0001DA C0 E0            [24]  524 	push a
                                    525 ;	preemptive.c:92: SelectThread = index<<3;
      0001DC 78 2C            [12]  526 	mov	r0,#_index
      0001DE 79 2B            [12]  527 	mov	r1,#_SelectThread
      0001E0 E6               [12]  528 	mov	a,@r0
      0001E1 C4               [12]  529 	swap	a
      0001E2 03               [12]  530 	rr	a
      0001E3 54 F8            [12]  531 	anl	a,#0xF8
      0001E5 F7               [12]  532 	mov	@r1,a
                                    533 ;	preemptive.c:95: __endasm;
      0001E6 C0 2B            [24]  534 	push _SelectThread
                                    535 ;	preemptive.c:97: ThreadSP[index] = SP;
      0001E8 78 2C            [12]  536 	mov	r0,#_index
      0001EA E6               [12]  537 	mov	a,@r0
      0001EB 24 20            [12]  538 	add	a,#_ThreadSP
      0001ED F8               [12]  539 	mov	r0,a
      0001EE A6 81            [24]  540 	mov	@r0,_SP
                                    541 ;	preemptive.c:98: SP = SaveCurrentSP;
      0001F0 78 2A            [12]  542 	mov	r0,#_SaveCurrentSP
      0001F2 86 81            [24]  543 	mov	_SP,@r0
                                    544 ;	preemptive.c:99: EA = 1;// reenable interrupts 
      0001F4 D2 AF            [12]  545 	setb	_EA
                                    546 ;	preemptive.c:100: return index;
      0001F6 78 2C            [12]  547 	mov	r0,#_index
      0001F8 86 82            [24]  548 	mov	dpl,@r0
      0001FA 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'ThreadYield'
                                    552 ;------------------------------------------------------------
                                    553 ;	preemptive.c:103: void ThreadYield(void) {
                                    554 ;	-----------------------------------------
                                    555 ;	 function ThreadYield
                                    556 ;	-----------------------------------------
      0001FB                        557 _ThreadYield:
                                    558 ;	preemptive.c:104: EA = 0;// disable interrupts 
      0001FB C2 AF            [12]  559 	clr	_EA
                                    560 ;	preemptive.c:105: SAVESTATE;
      0001FD C0 E0            [24]  561 	push ACC 
      0001FF C0 F0            [24]  562 	push B 
      000201 C0 82            [24]  563 	push DPL 
      000203 C0 83            [24]  564 	push DPH 
      000205 C0 D0            [24]  565 	push PSW 
      000207 C2 D4            [12]  566 	clr RS1 
      000209 C2 D3            [12]  567 	clr RS0 
      00020B 78 28            [12]  568 	mov	r0,#_ID
      00020D E6               [12]  569 	mov	a,@r0
      00020E 24 20            [12]  570 	add	a,#_ThreadSP
      000210 F8               [12]  571 	mov	r0,a
      000211 A6 81            [24]  572 	mov	@r0,_SP
                                    573 ;	preemptive.c:106: do {
      000213                        574 00106$:
                                    575 ;	preemptive.c:107: if( ID==MAXTHREADS-1 )
      000213 78 28            [12]  576 	mov	r0,#_ID
      000215 B6 03 06         [24]  577 	cjne	@r0,#0x03,00102$
                                    578 ;	preemptive.c:108: ID = 0;
      000218 78 28            [12]  579 	mov	r0,#_ID
      00021A 76 00            [12]  580 	mov	@r0,#0x00
      00021C 80 03            [24]  581 	sjmp	00103$
      00021E                        582 00102$:
                                    583 ;	preemptive.c:110: ID++;
      00021E 78 28            [12]  584 	mov	r0,#_ID
      000220 06               [12]  585 	inc	@r0
      000221                        586 00103$:
                                    587 ;	preemptive.c:111: if( Bitmap[ID]>0 ) 
      000221 78 28            [12]  588 	mov	r0,#_ID
      000223 E6               [12]  589 	mov	a,@r0
      000224 24 24            [12]  590 	add	a,#_Bitmap
      000226 F9               [12]  591 	mov	r1,a
      000227 87 07            [24]  592 	mov	ar7,@r1
      000229 C3               [12]  593 	clr	c
      00022A 74 80            [12]  594 	mov	a,#(0x00 ^ 0x80)
      00022C 8F F0            [24]  595 	mov	b,r7
      00022E 63 F0 80         [24]  596 	xrl	b,#0x80
      000231 95 F0            [12]  597 	subb	a,b
      000233 50 DE            [24]  598 	jnc	00106$
                                    599 ;	preemptive.c:114: RESTORESTATE;
      000235 78 28            [12]  600 	mov	r0,#_ID
      000237 E6               [12]  601 	mov	a,@r0
      000238 24 20            [12]  602 	add	a,#_ThreadSP
      00023A F9               [12]  603 	mov	r1,a
      00023B 87 81            [24]  604 	mov	_SP,@r1
      00023D D0 D0            [24]  605 	pop PSW 
      00023F D0 83            [24]  606 	pop DPH 
      000241 D0 82            [24]  607 	pop DPL 
      000243 D0 F0            [24]  608 	pop B 
      000245 D0 E0            [24]  609 	pop ACC 
                                    610 ;	preemptive.c:115: EA = 1;// reenable interrupts 
      000247 D2 AF            [12]  611 	setb	_EA
      000249 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'ThreadExit'
                                    615 ;------------------------------------------------------------
                                    616 ;	preemptive.c:118: void ThreadExit(void) {
                                    617 ;	-----------------------------------------
                                    618 ;	 function ThreadExit
                                    619 ;	-----------------------------------------
      00024A                        620 _ThreadExit:
                                    621 ;	preemptive.c:119: EA = 0;// disable interrupts 
      00024A C2 AF            [12]  622 	clr	_EA
                                    623 ;	preemptive.c:120: Bitmap[ID] = 0;
      00024C 78 28            [12]  624 	mov	r0,#_ID
      00024E E6               [12]  625 	mov	a,@r0
      00024F 24 24            [12]  626 	add	a,#_Bitmap
      000251 F8               [12]  627 	mov	r0,a
      000252 76 00            [12]  628 	mov	@r0,#0x00
                                    629 ;	preemptive.c:121: do {
      000254                        630 00106$:
                                    631 ;	preemptive.c:122: if( ID==MAXTHREADS-1 ) 
      000254 78 28            [12]  632 	mov	r0,#_ID
      000256 B6 03 06         [24]  633 	cjne	@r0,#0x03,00102$
                                    634 ;	preemptive.c:123: ID = 0;
      000259 78 28            [12]  635 	mov	r0,#_ID
      00025B 76 00            [12]  636 	mov	@r0,#0x00
      00025D 80 03            [24]  637 	sjmp	00103$
      00025F                        638 00102$:
                                    639 ;	preemptive.c:125: ID++;
      00025F 78 28            [12]  640 	mov	r0,#_ID
      000261 06               [12]  641 	inc	@r0
      000262                        642 00103$:
                                    643 ;	preemptive.c:126: if( Bitmap[ID]>0 ) 
      000262 78 28            [12]  644 	mov	r0,#_ID
      000264 E6               [12]  645 	mov	a,@r0
      000265 24 24            [12]  646 	add	a,#_Bitmap
      000267 F9               [12]  647 	mov	r1,a
      000268 87 07            [24]  648 	mov	ar7,@r1
      00026A C3               [12]  649 	clr	c
      00026B 74 80            [12]  650 	mov	a,#(0x00 ^ 0x80)
      00026D 8F F0            [24]  651 	mov	b,r7
      00026F 63 F0 80         [24]  652 	xrl	b,#0x80
      000272 95 F0            [12]  653 	subb	a,b
      000274 50 DE            [24]  654 	jnc	00106$
                                    655 ;	preemptive.c:129: RESTORESTATE;
      000276 78 28            [12]  656 	mov	r0,#_ID
      000278 E6               [12]  657 	mov	a,@r0
      000279 24 20            [12]  658 	add	a,#_ThreadSP
      00027B F9               [12]  659 	mov	r1,a
      00027C 87 81            [24]  660 	mov	_SP,@r1
      00027E D0 D0            [24]  661 	pop PSW 
      000280 D0 83            [24]  662 	pop DPH 
      000282 D0 82            [24]  663 	pop DPL 
      000284 D0 F0            [24]  664 	pop B 
      000286 D0 E0            [24]  665 	pop ACC 
                                    666 ;	preemptive.c:130: EA = 1;// reenable interrupts 
      000288 D2 AF            [12]  667 	setb	_EA
      00028A 22               [24]  668 	ret
                                    669 	.area CSEG    (CODE)
                                    670 	.area CONST   (CODE)
                                    671 	.area XINIT   (CODE)
                                    672 	.area CABS    (ABS,CODE)
