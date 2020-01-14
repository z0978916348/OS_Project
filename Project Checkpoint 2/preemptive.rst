                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sat Dec 21 08:01:00 2019
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
                                    306 ;	preemptive.c:37: void thread_manager(void){
                                    307 ;	-----------------------------------------
                                    308 ;	 function thread_manager
                                    309 ;	-----------------------------------------
      000078                        310 _thread_manager:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	preemptive.c:38: do {
      000078                        320 00106$:
                                    321 ;	preemptive.c:39: if( ID==MAXTHREADS-1 ) 
      000078 78 28            [12]  322 	mov	r0,#_ID
      00007A B6 03 06         [24]  323 	cjne	@r0,#0x03,00102$
                                    324 ;	preemptive.c:40: ID = 0;
      00007D 78 28            [12]  325 	mov	r0,#_ID
      00007F 76 00            [12]  326 	mov	@r0,#0x00
      000081 80 03            [24]  327 	sjmp	00103$
      000083                        328 00102$:
                                    329 ;	preemptive.c:42: ID++;
      000083 78 28            [12]  330 	mov	r0,#_ID
      000085 06               [12]  331 	inc	@r0
      000086                        332 00103$:
                                    333 ;	preemptive.c:43: if (Bitmap[ID]>0) 
      000086 78 28            [12]  334 	mov	r0,#_ID
      000088 E6               [12]  335 	mov	a,@r0
      000089 24 24            [12]  336 	add	a,#_Bitmap
      00008B F9               [12]  337 	mov	r1,a
      00008C 87 07            [24]  338 	mov	ar7,@r1
      00008E C3               [12]  339 	clr	c
      00008F 74 80            [12]  340 	mov	a,#(0x00 ^ 0x80)
      000091 8F F0            [24]  341 	mov	b,r7
      000093 63 F0 80         [24]  342 	xrl	b,#0x80
      000096 95 F0            [12]  343 	subb	a,b
      000098 50 DE            [24]  344 	jnc	00106$
                                    345 ;	preemptive.c:46: RESTORESTATE;
      00009A 78 28            [12]  346 	mov	r0,#_ID
      00009C E6               [12]  347 	mov	a,@r0
      00009D 24 20            [12]  348 	add	a,#_ThreadSP
      00009F F9               [12]  349 	mov	r1,a
      0000A0 87 81            [24]  350 	mov	_SP,@r1
      0000A2 D0 D0            [24]  351 	pop PSW 
      0000A4 D0 83            [24]  352 	pop DPH 
      0000A6 D0 82            [24]  353 	pop DPL 
      0000A8 D0 F0            [24]  354 	pop B 
      0000AA D0 E0            [24]  355 	pop ACC 
                                    356 ;	preemptive.c:50: __endasm;
      0000AC 32               [24]  357 	reti
      0000AD 22               [24]  358 	ret
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'myTimer0Handler'
                                    361 ;------------------------------------------------------------
                                    362 ;	preemptive.c:53: void myTimer0Handler(void){
                                    363 ;	-----------------------------------------
                                    364 ;	 function myTimer0Handler
                                    365 ;	-----------------------------------------
      0000AE                        366 _myTimer0Handler:
                                    367 ;	preemptive.c:54: SAVESTATE;
      0000AE C0 E0            [24]  368 	push ACC 
      0000B0 C0 F0            [24]  369 	push B 
      0000B2 C0 82            [24]  370 	push DPL 
      0000B4 C0 83            [24]  371 	push DPH 
      0000B6 C0 D0            [24]  372 	push PSW 
      0000B8 C2 D4            [12]  373 	clr RS1 
      0000BA C2 D3            [12]  374 	clr RS0 
      0000BC 78 28            [12]  375 	mov	r0,#_ID
      0000BE E6               [12]  376 	mov	a,@r0
      0000BF 24 20            [12]  377 	add	a,#_ThreadSP
      0000C1 F8               [12]  378 	mov	r0,a
      0000C2 A6 81            [24]  379 	mov	@r0,_SP
                                    380 ;	preemptive.c:55: SaveCurrentSP = ID;
      0000C4 78 28            [12]  381 	mov	r0,#_ID
      0000C6 79 2A            [12]  382 	mov	r1,#_SaveCurrentSP
      0000C8 E6               [12]  383 	mov	a,@r0
      0000C9 F7               [12]  384 	mov	@r1,a
                                    385 ;	preemptive.c:56: ID = manager_ID;
      0000CA 78 29            [12]  386 	mov	r0,#_manager_ID
      0000CC 79 28            [12]  387 	mov	r1,#_ID
      0000CE E6               [12]  388 	mov	a,@r0
      0000CF F7               [12]  389 	mov	@r1,a
                                    390 ;	preemptive.c:57: RESTORESTATE;
      0000D0 78 28            [12]  391 	mov	r0,#_ID
      0000D2 E6               [12]  392 	mov	a,@r0
      0000D3 24 20            [12]  393 	add	a,#_ThreadSP
      0000D5 F9               [12]  394 	mov	r1,a
      0000D6 87 81            [24]  395 	mov	_SP,@r1
      0000D8 D0 D0            [24]  396 	pop PSW 
      0000DA D0 83            [24]  397 	pop DPH 
      0000DC D0 82            [24]  398 	pop DPL 
      0000DE D0 F0            [24]  399 	pop B 
      0000E0 D0 E0            [24]  400 	pop ACC 
                                    401 ;	preemptive.c:58: ID = SaveCurrentSP;
      0000E2 78 2A            [12]  402 	mov	r0,#_SaveCurrentSP
      0000E4 79 28            [12]  403 	mov	r1,#_ID
      0000E6 E6               [12]  404 	mov	a,@r0
      0000E7 F7               [12]  405 	mov	@r1,a
      0000E8 22               [24]  406 	ret
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'Bootstrap'
                                    409 ;------------------------------------------------------------
                                    410 ;	preemptive.c:61: void Bootstrap(void) {
                                    411 ;	-----------------------------------------
                                    412 ;	 function Bootstrap
                                    413 ;	-----------------------------------------
      0000E9                        414 _Bootstrap:
                                    415 ;	preemptive.c:62: Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
      0000E9 78 27            [12]  416 	mov	r0,#(_Bitmap + 0x0003)
      0000EB 76 00            [12]  417 	mov	@r0,#0x00
      0000ED 78 26            [12]  418 	mov	r0,#(_Bitmap + 0x0002)
      0000EF 76 00            [12]  419 	mov	@r0,#0x00
      0000F1 78 25            [12]  420 	mov	r0,#(_Bitmap + 0x0001)
      0000F3 76 00            [12]  421 	mov	@r0,#0x00
      0000F5 78 24            [12]  422 	mov	r0,#_Bitmap
      0000F7 76 00            [12]  423 	mov	@r0,#0x00
                                    424 ;	preemptive.c:63: TMOD = 0;
      0000F9 75 89 00         [24]  425 	mov	_TMOD,#0x00
                                    426 ;	preemptive.c:64: IE = 0x82;
      0000FC 75 A8 82         [24]  427 	mov	_IE,#0x82
                                    428 ;	preemptive.c:65: TR0 = 1;
      0000FF D2 8C            [12]  429 	setb	_TR0
                                    430 ;	preemptive.c:66: manager_ID = ThreadCreate(thread_manager);
      000101 90 00 78         [24]  431 	mov	dptr,#_thread_manager
      000104 12 01 2A         [24]  432 	lcall	_ThreadCreate
      000107 E5 82            [12]  433 	mov	a,dpl
      000109 78 29            [12]  434 	mov	r0,#_manager_ID
      00010B F6               [12]  435 	mov	@r0,a
                                    436 ;	preemptive.c:67: ID = ThreadCreate(main);
      00010C 90 00 5A         [24]  437 	mov	dptr,#_main
      00010F 12 01 2A         [24]  438 	lcall	_ThreadCreate
      000112 E5 82            [12]  439 	mov	a,dpl
      000114 78 28            [12]  440 	mov	r0,#_ID
      000116 F6               [12]  441 	mov	@r0,a
                                    442 ;	preemptive.c:68: RESTORESTATE;
      000117 78 28            [12]  443 	mov	r0,#_ID
      000119 E6               [12]  444 	mov	a,@r0
      00011A 24 20            [12]  445 	add	a,#_ThreadSP
      00011C F9               [12]  446 	mov	r1,a
      00011D 87 81            [24]  447 	mov	_SP,@r1
      00011F D0 D0            [24]  448 	pop PSW 
      000121 D0 83            [24]  449 	pop DPH 
      000123 D0 82            [24]  450 	pop DPL 
      000125 D0 F0            [24]  451 	pop B 
      000127 D0 E0            [24]  452 	pop ACC 
      000129 22               [24]  453 	ret
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'ThreadCreate'
                                    456 ;------------------------------------------------------------
                                    457 ;fp                        Allocated to registers 
                                    458 ;------------------------------------------------------------
                                    459 ;	preemptive.c:71: ThreadID ThreadCreate(FunctionPtr fp) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function ThreadCreate
                                    462 ;	-----------------------------------------
      00012A                        463 _ThreadCreate:
                                    464 ;	preemptive.c:72: EA = 0;// disable interrupts 
      00012A C2 AF            [12]  465 	clr	_EA
                                    466 ;	preemptive.c:73: for(index=0; index<MAXTHREADS; index++) 
      00012C 78 2C            [12]  467 	mov	r0,#_index
      00012E 76 00            [12]  468 	mov	@r0,#0x00
      000130                        469 00107$:
      000130 78 2C            [12]  470 	mov	r0,#_index
      000132 C3               [12]  471 	clr	c
      000133 E6               [12]  472 	mov	a,@r0
      000134 64 80            [12]  473 	xrl	a,#0x80
      000136 94 84            [12]  474 	subb	a,#0x84
      000138 50 0E            [24]  475 	jnc	00103$
                                    476 ;	preemptive.c:74: if(!Bitmap[index]) 
      00013A 78 2C            [12]  477 	mov	r0,#_index
      00013C E6               [12]  478 	mov	a,@r0
      00013D 24 24            [12]  479 	add	a,#_Bitmap
      00013F F9               [12]  480 	mov	r1,a
      000140 E7               [12]  481 	mov	a,@r1
      000141 60 05            [24]  482 	jz	00103$
                                    483 ;	preemptive.c:73: for(index=0; index<MAXTHREADS; index++) 
      000143 78 2C            [12]  484 	mov	r0,#_index
      000145 06               [12]  485 	inc	@r0
      000146 80 E8            [24]  486 	sjmp	00107$
      000148                        487 00103$:
                                    488 ;	preemptive.c:76: if( index==MAXTHREADS ) 
      000148 78 2C            [12]  489 	mov	r0,#_index
      00014A B6 04 04         [24]  490 	cjne	@r0,#0x04,00105$
                                    491 ;	preemptive.c:77: return -1;
      00014D 75 82 FF         [24]  492 	mov	dpl,#0xFF
      000150 22               [24]  493 	ret
      000151                        494 00105$:
                                    495 ;	preemptive.c:78: Bitmap[index] = 1;
      000151 78 2C            [12]  496 	mov	r0,#_index
      000153 E6               [12]  497 	mov	a,@r0
      000154 24 24            [12]  498 	add	a,#_Bitmap
      000156 F8               [12]  499 	mov	r0,a
      000157 76 01            [12]  500 	mov	@r0,#0x01
                                    501 ;	preemptive.c:79: SaveCurrentSP = SP;
      000159 78 2A            [12]  502 	mov	r0,#_SaveCurrentSP
      00015B A6 81            [24]  503 	mov	@r0,_SP
                                    504 ;	preemptive.c:80: SP = 0x3F + index*0x10;
      00015D 78 2C            [12]  505 	mov	r0,#_index
      00015F E6               [12]  506 	mov	a,@r0
      000160 C4               [12]  507 	swap	a
      000161 54 F0            [12]  508 	anl	a,#0xF0
      000163 FF               [12]  509 	mov	r7,a
      000164 24 3F            [12]  510 	add	a,#0x3F
      000166 F5 81            [12]  511 	mov	_SP,a
                                    512 ;	preemptive.c:90: __endasm;
      000168 C0 82            [24]  513 	push DPL
      00016A C0 83            [24]  514 	push DPH
      00016C 74 00            [12]  515 	mov a,#0x00
      00016E C0 E0            [24]  516 	push a
      000170 C0 E0            [24]  517 	push a
      000172 C0 E0            [24]  518 	push a
      000174 C0 E0            [24]  519 	push a
                                    520 ;	preemptive.c:91: SelectThread = index<<3;
      000176 78 2C            [12]  521 	mov	r0,#_index
      000178 79 2B            [12]  522 	mov	r1,#_SelectThread
      00017A E6               [12]  523 	mov	a,@r0
      00017B C4               [12]  524 	swap	a
      00017C 03               [12]  525 	rr	a
      00017D 54 F8            [12]  526 	anl	a,#0xF8
      00017F F7               [12]  527 	mov	@r1,a
                                    528 ;	preemptive.c:94: __endasm;
      000180 C0 2B            [24]  529 	push _SelectThread
                                    530 ;	preemptive.c:96: ThreadSP[index] = SP;
      000182 78 2C            [12]  531 	mov	r0,#_index
      000184 E6               [12]  532 	mov	a,@r0
      000185 24 20            [12]  533 	add	a,#_ThreadSP
      000187 F8               [12]  534 	mov	r0,a
      000188 A6 81            [24]  535 	mov	@r0,_SP
                                    536 ;	preemptive.c:97: SP = SaveCurrentSP;
      00018A 78 2A            [12]  537 	mov	r0,#_SaveCurrentSP
      00018C 86 81            [24]  538 	mov	_SP,@r0
                                    539 ;	preemptive.c:98: EA = 1;// reenable interrupts 
      00018E D2 AF            [12]  540 	setb	_EA
                                    541 ;	preemptive.c:99: return index;
      000190 78 2C            [12]  542 	mov	r0,#_index
      000192 86 82            [24]  543 	mov	dpl,@r0
      000194 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'ThreadYield'
                                    547 ;------------------------------------------------------------
                                    548 ;	preemptive.c:102: void ThreadYield(void) {
                                    549 ;	-----------------------------------------
                                    550 ;	 function ThreadYield
                                    551 ;	-----------------------------------------
      000195                        552 _ThreadYield:
                                    553 ;	preemptive.c:103: EA = 0;// disable interrupts 
      000195 C2 AF            [12]  554 	clr	_EA
                                    555 ;	preemptive.c:104: SAVESTATE;
      000197 C0 E0            [24]  556 	push ACC 
      000199 C0 F0            [24]  557 	push B 
      00019B C0 82            [24]  558 	push DPL 
      00019D C0 83            [24]  559 	push DPH 
      00019F C0 D0            [24]  560 	push PSW 
      0001A1 C2 D4            [12]  561 	clr RS1 
      0001A3 C2 D3            [12]  562 	clr RS0 
      0001A5 78 28            [12]  563 	mov	r0,#_ID
      0001A7 E6               [12]  564 	mov	a,@r0
      0001A8 24 20            [12]  565 	add	a,#_ThreadSP
      0001AA F8               [12]  566 	mov	r0,a
      0001AB A6 81            [24]  567 	mov	@r0,_SP
                                    568 ;	preemptive.c:105: do {
      0001AD                        569 00106$:
                                    570 ;	preemptive.c:106: if( ID==MAXTHREADS-1 ) 
      0001AD 78 28            [12]  571 	mov	r0,#_ID
      0001AF B6 03 06         [24]  572 	cjne	@r0,#0x03,00102$
                                    573 ;	preemptive.c:107: ID = 0;
      0001B2 78 28            [12]  574 	mov	r0,#_ID
      0001B4 76 00            [12]  575 	mov	@r0,#0x00
      0001B6 80 03            [24]  576 	sjmp	00103$
      0001B8                        577 00102$:
                                    578 ;	preemptive.c:109: ID++;
      0001B8 78 28            [12]  579 	mov	r0,#_ID
      0001BA 06               [12]  580 	inc	@r0
      0001BB                        581 00103$:
                                    582 ;	preemptive.c:110: if( Bitmap[ID]>0 ) 
      0001BB 78 28            [12]  583 	mov	r0,#_ID
      0001BD E6               [12]  584 	mov	a,@r0
      0001BE 24 24            [12]  585 	add	a,#_Bitmap
      0001C0 F9               [12]  586 	mov	r1,a
      0001C1 87 07            [24]  587 	mov	ar7,@r1
      0001C3 C3               [12]  588 	clr	c
      0001C4 74 80            [12]  589 	mov	a,#(0x00 ^ 0x80)
      0001C6 8F F0            [24]  590 	mov	b,r7
      0001C8 63 F0 80         [24]  591 	xrl	b,#0x80
      0001CB 95 F0            [12]  592 	subb	a,b
      0001CD 50 DE            [24]  593 	jnc	00106$
                                    594 ;	preemptive.c:113: RESTORESTATE;
      0001CF 78 28            [12]  595 	mov	r0,#_ID
      0001D1 E6               [12]  596 	mov	a,@r0
      0001D2 24 20            [12]  597 	add	a,#_ThreadSP
      0001D4 F9               [12]  598 	mov	r1,a
      0001D5 87 81            [24]  599 	mov	_SP,@r1
      0001D7 D0 D0            [24]  600 	pop PSW 
      0001D9 D0 83            [24]  601 	pop DPH 
      0001DB D0 82            [24]  602 	pop DPL 
      0001DD D0 F0            [24]  603 	pop B 
      0001DF D0 E0            [24]  604 	pop ACC 
                                    605 ;	preemptive.c:114: EA = 1;// reenable interrupts 
      0001E1 D2 AF            [12]  606 	setb	_EA
      0001E3 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'ThreadExit'
                                    610 ;------------------------------------------------------------
                                    611 ;	preemptive.c:117: void ThreadExit(void) {
                                    612 ;	-----------------------------------------
                                    613 ;	 function ThreadExit
                                    614 ;	-----------------------------------------
      0001E4                        615 _ThreadExit:
                                    616 ;	preemptive.c:118: EA = 0;// disable interrupts 
      0001E4 C2 AF            [12]  617 	clr	_EA
                                    618 ;	preemptive.c:119: Bitmap[ID] = 0;
      0001E6 78 28            [12]  619 	mov	r0,#_ID
      0001E8 E6               [12]  620 	mov	a,@r0
      0001E9 24 24            [12]  621 	add	a,#_Bitmap
      0001EB F8               [12]  622 	mov	r0,a
      0001EC 76 00            [12]  623 	mov	@r0,#0x00
                                    624 ;	preemptive.c:120: do {
      0001EE                        625 00106$:
                                    626 ;	preemptive.c:121: if( ID==MAXTHREADS-1 ) 
      0001EE 78 28            [12]  627 	mov	r0,#_ID
      0001F0 B6 03 06         [24]  628 	cjne	@r0,#0x03,00102$
                                    629 ;	preemptive.c:122: ID = 0;
      0001F3 78 28            [12]  630 	mov	r0,#_ID
      0001F5 76 00            [12]  631 	mov	@r0,#0x00
      0001F7 80 03            [24]  632 	sjmp	00103$
      0001F9                        633 00102$:
                                    634 ;	preemptive.c:124: ID++;
      0001F9 78 28            [12]  635 	mov	r0,#_ID
      0001FB 06               [12]  636 	inc	@r0
      0001FC                        637 00103$:
                                    638 ;	preemptive.c:125: if( Bitmap[ID]>0 ) 
      0001FC 78 28            [12]  639 	mov	r0,#_ID
      0001FE E6               [12]  640 	mov	a,@r0
      0001FF 24 24            [12]  641 	add	a,#_Bitmap
      000201 F9               [12]  642 	mov	r1,a
      000202 87 07            [24]  643 	mov	ar7,@r1
      000204 C3               [12]  644 	clr	c
      000205 74 80            [12]  645 	mov	a,#(0x00 ^ 0x80)
      000207 8F F0            [24]  646 	mov	b,r7
      000209 63 F0 80         [24]  647 	xrl	b,#0x80
      00020C 95 F0            [12]  648 	subb	a,b
      00020E 50 DE            [24]  649 	jnc	00106$
                                    650 ;	preemptive.c:128: RESTORESTATE;
      000210 78 28            [12]  651 	mov	r0,#_ID
      000212 E6               [12]  652 	mov	a,@r0
      000213 24 20            [12]  653 	add	a,#_ThreadSP
      000215 F9               [12]  654 	mov	r1,a
      000216 87 81            [24]  655 	mov	_SP,@r1
      000218 D0 D0            [24]  656 	pop PSW 
      00021A D0 83            [24]  657 	pop DPH 
      00021C D0 82            [24]  658 	pop DPL 
      00021E D0 F0            [24]  659 	pop B 
      000220 D0 E0            [24]  660 	pop ACC 
                                    661 ;	preemptive.c:129: EA = 1;// reenable interrupts 
      000222 D2 AF            [12]  662 	setb	_EA
      000224 22               [24]  663 	ret
                                    664 	.area CSEG    (CODE)
                                    665 	.area CONST   (CODE)
                                    666 	.area XINIT   (CODE)
                                    667 	.area CABS    (ABS,CODE)
