                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Dec 26 02:06:12 2019
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
      00012A                        310 _thread_manager:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	preemptive.c:31: do {
      00012A                        320 00106$:
                                    321 ;	preemptive.c:32: if( ID==MAXTHREADS-1 ) 
      00012A 78 28            [12]  322 	mov	r0,#_ID
      00012C B6 03 06         [24]  323 	cjne	@r0,#0x03,00102$
                                    324 ;	preemptive.c:33: ID = 0;
      00012F 78 28            [12]  325 	mov	r0,#_ID
      000131 76 00            [12]  326 	mov	@r0,#0x00
      000133 80 03            [24]  327 	sjmp	00103$
      000135                        328 00102$:
                                    329 ;	preemptive.c:35: ID++;
      000135 78 28            [12]  330 	mov	r0,#_ID
      000137 06               [12]  331 	inc	@r0
      000138                        332 00103$:
                                    333 ;	preemptive.c:36: if( Bitmap[ID]>0 ) 
      000138 78 28            [12]  334 	mov	r0,#_ID
      00013A E6               [12]  335 	mov	a,@r0
      00013B 24 24            [12]  336 	add	a,#_Bitmap
      00013D F9               [12]  337 	mov	r1,a
      00013E 87 07            [24]  338 	mov	ar7,@r1
      000140 C3               [12]  339 	clr	c
      000141 74 80            [12]  340 	mov	a,#(0x00 ^ 0x80)
      000143 8F F0            [24]  341 	mov	b,r7
      000145 63 F0 80         [24]  342 	xrl	b,#0x80
      000148 95 F0            [12]  343 	subb	a,b
      00014A 50 DE            [24]  344 	jnc	00106$
                                    345 ;	preemptive.c:39: RESTORESTATE;
      00014C 78 28            [12]  346 	mov	r0,#_ID
      00014E E6               [12]  347 	mov	a,@r0
      00014F 24 20            [12]  348 	add	a,#_ThreadSP
      000151 F9               [12]  349 	mov	r1,a
      000152 87 81            [24]  350 	mov	_SP,@r1
      000154 D0 D0            [24]  351 	pop PSW 
      000156 D0 83            [24]  352 	pop DPH 
      000158 D0 82            [24]  353 	pop DPL 
      00015A D0 F0            [24]  354 	pop B 
      00015C D0 E0            [24]  355 	pop ACC 
                                    356 ;	preemptive.c:43: __endasm;
      00015E 32               [24]  357 	reti
      00015F 22               [24]  358 	ret
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'myTimer0Handler'
                                    361 ;------------------------------------------------------------
                                    362 ;	preemptive.c:46: void myTimer0Handler(void){
                                    363 ;	-----------------------------------------
                                    364 ;	 function myTimer0Handler
                                    365 ;	-----------------------------------------
      000160                        366 _myTimer0Handler:
                                    367 ;	preemptive.c:47: SAVESTATE;
      000160 C0 E0            [24]  368 	push ACC 
      000162 C0 F0            [24]  369 	push B 
      000164 C0 82            [24]  370 	push DPL 
      000166 C0 83            [24]  371 	push DPH 
      000168 C0 D0            [24]  372 	push PSW 
      00016A C2 D4            [12]  373 	clr RS1 
      00016C C2 D3            [12]  374 	clr RS0 
      00016E 78 28            [12]  375 	mov	r0,#_ID
      000170 E6               [12]  376 	mov	a,@r0
      000171 24 20            [12]  377 	add	a,#_ThreadSP
      000173 F8               [12]  378 	mov	r0,a
      000174 A6 81            [24]  379 	mov	@r0,_SP
                                    380 ;	preemptive.c:48: SaveCurrentSP = ID;
      000176 78 28            [12]  381 	mov	r0,#_ID
      000178 79 2A            [12]  382 	mov	r1,#_SaveCurrentSP
      00017A E6               [12]  383 	mov	a,@r0
      00017B F7               [12]  384 	mov	@r1,a
                                    385 ;	preemptive.c:49: ID = manager_ID;
      00017C 78 29            [12]  386 	mov	r0,#_manager_ID
      00017E 79 28            [12]  387 	mov	r1,#_ID
      000180 E6               [12]  388 	mov	a,@r0
      000181 F7               [12]  389 	mov	@r1,a
                                    390 ;	preemptive.c:50: RESTORESTATE;
      000182 78 28            [12]  391 	mov	r0,#_ID
      000184 E6               [12]  392 	mov	a,@r0
      000185 24 20            [12]  393 	add	a,#_ThreadSP
      000187 F9               [12]  394 	mov	r1,a
      000188 87 81            [24]  395 	mov	_SP,@r1
      00018A D0 D0            [24]  396 	pop PSW 
      00018C D0 83            [24]  397 	pop DPH 
      00018E D0 82            [24]  398 	pop DPL 
      000190 D0 F0            [24]  399 	pop B 
      000192 D0 E0            [24]  400 	pop ACC 
                                    401 ;	preemptive.c:51: ID = SaveCurrentSP;
      000194 78 2A            [12]  402 	mov	r0,#_SaveCurrentSP
      000196 79 28            [12]  403 	mov	r1,#_ID
      000198 E6               [12]  404 	mov	a,@r0
      000199 F7               [12]  405 	mov	@r1,a
      00019A 22               [24]  406 	ret
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'Bootstrap'
                                    409 ;------------------------------------------------------------
                                    410 ;	preemptive.c:54: void Bootstrap(void) {
                                    411 ;	-----------------------------------------
                                    412 ;	 function Bootstrap
                                    413 ;	-----------------------------------------
      00019B                        414 _Bootstrap:
                                    415 ;	preemptive.c:55: Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
      00019B 78 27            [12]  416 	mov	r0,#(_Bitmap + 0x0003)
      00019D 76 00            [12]  417 	mov	@r0,#0x00
      00019F 78 26            [12]  418 	mov	r0,#(_Bitmap + 0x0002)
      0001A1 76 00            [12]  419 	mov	@r0,#0x00
      0001A3 78 25            [12]  420 	mov	r0,#(_Bitmap + 0x0001)
      0001A5 76 00            [12]  421 	mov	@r0,#0x00
      0001A7 78 24            [12]  422 	mov	r0,#_Bitmap
      0001A9 76 00            [12]  423 	mov	@r0,#0x00
                                    424 ;	preemptive.c:57: TMOD = 0;
      0001AB 75 89 00         [24]  425 	mov	_TMOD,#0x00
                                    426 ;	preemptive.c:58: IE = 0x82;
      0001AE 75 A8 82         [24]  427 	mov	_IE,#0x82
                                    428 ;	preemptive.c:59: TR0 = 1;
      0001B1 D2 8C            [12]  429 	setb	_TR0
                                    430 ;	preemptive.c:61: manager_ID = ThreadCreate( thread_manager );
      0001B3 90 01 2A         [24]  431 	mov	dptr,#_thread_manager
      0001B6 12 01 DC         [24]  432 	lcall	_ThreadCreate
      0001B9 E5 82            [12]  433 	mov	a,dpl
      0001BB 78 29            [12]  434 	mov	r0,#_manager_ID
      0001BD F6               [12]  435 	mov	@r0,a
                                    436 ;	preemptive.c:62: ID = ThreadCreate( main );
      0001BE 90 00 EC         [24]  437 	mov	dptr,#_main
      0001C1 12 01 DC         [24]  438 	lcall	_ThreadCreate
      0001C4 E5 82            [12]  439 	mov	a,dpl
      0001C6 78 28            [12]  440 	mov	r0,#_ID
      0001C8 F6               [12]  441 	mov	@r0,a
                                    442 ;	preemptive.c:63: RESTORESTATE;
      0001C9 78 28            [12]  443 	mov	r0,#_ID
      0001CB E6               [12]  444 	mov	a,@r0
      0001CC 24 20            [12]  445 	add	a,#_ThreadSP
      0001CE F9               [12]  446 	mov	r1,a
      0001CF 87 81            [24]  447 	mov	_SP,@r1
      0001D1 D0 D0            [24]  448 	pop PSW 
      0001D3 D0 83            [24]  449 	pop DPH 
      0001D5 D0 82            [24]  450 	pop DPL 
      0001D7 D0 F0            [24]  451 	pop B 
      0001D9 D0 E0            [24]  452 	pop ACC 
      0001DB 22               [24]  453 	ret
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'ThreadCreate'
                                    456 ;------------------------------------------------------------
                                    457 ;fp                        Allocated to registers 
                                    458 ;------------------------------------------------------------
                                    459 ;	preemptive.c:66: ThreadID ThreadCreate(FunctionPtr fp) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function ThreadCreate
                                    462 ;	-----------------------------------------
      0001DC                        463 _ThreadCreate:
                                    464 ;	preemptive.c:67: EA = 0;// disable interrupts 
      0001DC C2 AF            [12]  465 	clr	_EA
                                    466 ;	preemptive.c:68: for(index=0; index<MAXTHREADS; index++) 
      0001DE 78 2C            [12]  467 	mov	r0,#_index
      0001E0 76 00            [12]  468 	mov	@r0,#0x00
      0001E2                        469 00107$:
      0001E2 78 2C            [12]  470 	mov	r0,#_index
      0001E4 C3               [12]  471 	clr	c
      0001E5 E6               [12]  472 	mov	a,@r0
      0001E6 64 80            [12]  473 	xrl	a,#0x80
      0001E8 94 84            [12]  474 	subb	a,#0x84
      0001EA 50 0E            [24]  475 	jnc	00103$
                                    476 ;	preemptive.c:69: if( !Bitmap[index] ) 
      0001EC 78 2C            [12]  477 	mov	r0,#_index
      0001EE E6               [12]  478 	mov	a,@r0
      0001EF 24 24            [12]  479 	add	a,#_Bitmap
      0001F1 F9               [12]  480 	mov	r1,a
      0001F2 E7               [12]  481 	mov	a,@r1
      0001F3 60 05            [24]  482 	jz	00103$
                                    483 ;	preemptive.c:68: for(index=0; index<MAXTHREADS; index++) 
      0001F5 78 2C            [12]  484 	mov	r0,#_index
      0001F7 06               [12]  485 	inc	@r0
      0001F8 80 E8            [24]  486 	sjmp	00107$
      0001FA                        487 00103$:
                                    488 ;	preemptive.c:71: if( index==MAXTHREADS ) 
      0001FA 78 2C            [12]  489 	mov	r0,#_index
      0001FC B6 04 04         [24]  490 	cjne	@r0,#0x04,00105$
                                    491 ;	preemptive.c:72: return -1;
      0001FF 75 82 FF         [24]  492 	mov	dpl,#0xFF
      000202 22               [24]  493 	ret
      000203                        494 00105$:
                                    495 ;	preemptive.c:74: Bitmap[index] = 1;
      000203 78 2C            [12]  496 	mov	r0,#_index
      000205 E6               [12]  497 	mov	a,@r0
      000206 24 24            [12]  498 	add	a,#_Bitmap
      000208 F8               [12]  499 	mov	r0,a
      000209 76 01            [12]  500 	mov	@r0,#0x01
                                    501 ;	preemptive.c:75: SaveCurrentSP = SP;
      00020B 78 2A            [12]  502 	mov	r0,#_SaveCurrentSP
      00020D A6 81            [24]  503 	mov	@r0,_SP
                                    504 ;	preemptive.c:76: SP = 0x3F + index*0x10;
      00020F 78 2C            [12]  505 	mov	r0,#_index
      000211 E6               [12]  506 	mov	a,@r0
      000212 C4               [12]  507 	swap	a
      000213 54 F0            [12]  508 	anl	a,#0xF0
      000215 FF               [12]  509 	mov	r7,a
      000216 24 3F            [12]  510 	add	a,#0x3F
      000218 F5 81            [12]  511 	mov	_SP,a
                                    512 ;	preemptive.c:91: __endasm;
      00021A E5 82            [12]  513 	mov a,DPL
      00021C 85 83 F0         [24]  514 	mov b,DPH
      00021F 90 02 A2         [24]  515 	mov dptr,#_ThreadExit
      000222 C0 82            [24]  516 	push DPL
      000224 C0 83            [24]  517 	push DPH
      000226 C0 E0            [24]  518 	push a
      000228 C0 F0            [24]  519 	push b
      00022A 74 00            [12]  520 	mov a,#0x00
      00022C C0 E0            [24]  521 	push a
      00022E C0 E0            [24]  522 	push a
      000230 C0 E0            [24]  523 	push a
      000232 C0 E0            [24]  524 	push a
                                    525 ;	preemptive.c:92: SelectThread = index<<3;
      000234 78 2C            [12]  526 	mov	r0,#_index
      000236 79 2B            [12]  527 	mov	r1,#_SelectThread
      000238 E6               [12]  528 	mov	a,@r0
      000239 C4               [12]  529 	swap	a
      00023A 03               [12]  530 	rr	a
      00023B 54 F8            [12]  531 	anl	a,#0xF8
      00023D F7               [12]  532 	mov	@r1,a
                                    533 ;	preemptive.c:95: __endasm;
      00023E C0 2B            [24]  534 	push _SelectThread
                                    535 ;	preemptive.c:97: ThreadSP[index] = SP;
      000240 78 2C            [12]  536 	mov	r0,#_index
      000242 E6               [12]  537 	mov	a,@r0
      000243 24 20            [12]  538 	add	a,#_ThreadSP
      000245 F8               [12]  539 	mov	r0,a
      000246 A6 81            [24]  540 	mov	@r0,_SP
                                    541 ;	preemptive.c:98: SP = SaveCurrentSP;
      000248 78 2A            [12]  542 	mov	r0,#_SaveCurrentSP
      00024A 86 81            [24]  543 	mov	_SP,@r0
                                    544 ;	preemptive.c:99: EA = 1;// reenable interrupts 
      00024C D2 AF            [12]  545 	setb	_EA
                                    546 ;	preemptive.c:100: return index;
      00024E 78 2C            [12]  547 	mov	r0,#_index
      000250 86 82            [24]  548 	mov	dpl,@r0
      000252 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'ThreadYield'
                                    552 ;------------------------------------------------------------
                                    553 ;	preemptive.c:103: void ThreadYield(void) {
                                    554 ;	-----------------------------------------
                                    555 ;	 function ThreadYield
                                    556 ;	-----------------------------------------
      000253                        557 _ThreadYield:
                                    558 ;	preemptive.c:104: EA = 0;// disable interrupts 
      000253 C2 AF            [12]  559 	clr	_EA
                                    560 ;	preemptive.c:105: SAVESTATE;
      000255 C0 E0            [24]  561 	push ACC 
      000257 C0 F0            [24]  562 	push B 
      000259 C0 82            [24]  563 	push DPL 
      00025B C0 83            [24]  564 	push DPH 
      00025D C0 D0            [24]  565 	push PSW 
      00025F C2 D4            [12]  566 	clr RS1 
      000261 C2 D3            [12]  567 	clr RS0 
      000263 78 28            [12]  568 	mov	r0,#_ID
      000265 E6               [12]  569 	mov	a,@r0
      000266 24 20            [12]  570 	add	a,#_ThreadSP
      000268 F8               [12]  571 	mov	r0,a
      000269 A6 81            [24]  572 	mov	@r0,_SP
                                    573 ;	preemptive.c:106: do {
      00026B                        574 00106$:
                                    575 ;	preemptive.c:107: if( ID==MAXTHREADS-1 )
      00026B 78 28            [12]  576 	mov	r0,#_ID
      00026D B6 03 06         [24]  577 	cjne	@r0,#0x03,00102$
                                    578 ;	preemptive.c:108: ID = 0;
      000270 78 28            [12]  579 	mov	r0,#_ID
      000272 76 00            [12]  580 	mov	@r0,#0x00
      000274 80 03            [24]  581 	sjmp	00103$
      000276                        582 00102$:
                                    583 ;	preemptive.c:110: ID++;
      000276 78 28            [12]  584 	mov	r0,#_ID
      000278 06               [12]  585 	inc	@r0
      000279                        586 00103$:
                                    587 ;	preemptive.c:111: if( Bitmap[ID]>0 ) 
      000279 78 28            [12]  588 	mov	r0,#_ID
      00027B E6               [12]  589 	mov	a,@r0
      00027C 24 24            [12]  590 	add	a,#_Bitmap
      00027E F9               [12]  591 	mov	r1,a
      00027F 87 07            [24]  592 	mov	ar7,@r1
      000281 C3               [12]  593 	clr	c
      000282 74 80            [12]  594 	mov	a,#(0x00 ^ 0x80)
      000284 8F F0            [24]  595 	mov	b,r7
      000286 63 F0 80         [24]  596 	xrl	b,#0x80
      000289 95 F0            [12]  597 	subb	a,b
      00028B 50 DE            [24]  598 	jnc	00106$
                                    599 ;	preemptive.c:114: RESTORESTATE;
      00028D 78 28            [12]  600 	mov	r0,#_ID
      00028F E6               [12]  601 	mov	a,@r0
      000290 24 20            [12]  602 	add	a,#_ThreadSP
      000292 F9               [12]  603 	mov	r1,a
      000293 87 81            [24]  604 	mov	_SP,@r1
      000295 D0 D0            [24]  605 	pop PSW 
      000297 D0 83            [24]  606 	pop DPH 
      000299 D0 82            [24]  607 	pop DPL 
      00029B D0 F0            [24]  608 	pop B 
      00029D D0 E0            [24]  609 	pop ACC 
                                    610 ;	preemptive.c:115: EA = 1;// reenable interrupts 
      00029F D2 AF            [12]  611 	setb	_EA
      0002A1 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'ThreadExit'
                                    615 ;------------------------------------------------------------
                                    616 ;	preemptive.c:118: void ThreadExit(void) {
                                    617 ;	-----------------------------------------
                                    618 ;	 function ThreadExit
                                    619 ;	-----------------------------------------
      0002A2                        620 _ThreadExit:
                                    621 ;	preemptive.c:119: EA = 0;// disable interrupts 
      0002A2 C2 AF            [12]  622 	clr	_EA
                                    623 ;	preemptive.c:120: Bitmap[ID] = 0;
      0002A4 78 28            [12]  624 	mov	r0,#_ID
      0002A6 E6               [12]  625 	mov	a,@r0
      0002A7 24 24            [12]  626 	add	a,#_Bitmap
      0002A9 F8               [12]  627 	mov	r0,a
      0002AA 76 00            [12]  628 	mov	@r0,#0x00
                                    629 ;	preemptive.c:121: do {
      0002AC                        630 00106$:
                                    631 ;	preemptive.c:122: if( ID==MAXTHREADS-1 ) 
      0002AC 78 28            [12]  632 	mov	r0,#_ID
      0002AE B6 03 06         [24]  633 	cjne	@r0,#0x03,00102$
                                    634 ;	preemptive.c:123: ID = 0;
      0002B1 78 28            [12]  635 	mov	r0,#_ID
      0002B3 76 00            [12]  636 	mov	@r0,#0x00
      0002B5 80 03            [24]  637 	sjmp	00103$
      0002B7                        638 00102$:
                                    639 ;	preemptive.c:125: ID++;
      0002B7 78 28            [12]  640 	mov	r0,#_ID
      0002B9 06               [12]  641 	inc	@r0
      0002BA                        642 00103$:
                                    643 ;	preemptive.c:126: if( Bitmap[ID]>0 ) 
      0002BA 78 28            [12]  644 	mov	r0,#_ID
      0002BC E6               [12]  645 	mov	a,@r0
      0002BD 24 24            [12]  646 	add	a,#_Bitmap
      0002BF F9               [12]  647 	mov	r1,a
      0002C0 87 07            [24]  648 	mov	ar7,@r1
      0002C2 C3               [12]  649 	clr	c
      0002C3 74 80            [12]  650 	mov	a,#(0x00 ^ 0x80)
      0002C5 8F F0            [24]  651 	mov	b,r7
      0002C7 63 F0 80         [24]  652 	xrl	b,#0x80
      0002CA 95 F0            [12]  653 	subb	a,b
      0002CC 50 DE            [24]  654 	jnc	00106$
                                    655 ;	preemptive.c:129: RESTORESTATE;
      0002CE 78 28            [12]  656 	mov	r0,#_ID
      0002D0 E6               [12]  657 	mov	a,@r0
      0002D1 24 20            [12]  658 	add	a,#_ThreadSP
      0002D3 F9               [12]  659 	mov	r1,a
      0002D4 87 81            [24]  660 	mov	_SP,@r1
      0002D6 D0 D0            [24]  661 	pop PSW 
      0002D8 D0 83            [24]  662 	pop DPH 
      0002DA D0 82            [24]  663 	pop DPL 
      0002DC D0 F0            [24]  664 	pop B 
      0002DE D0 E0            [24]  665 	pop ACC 
                                    666 ;	preemptive.c:130: EA = 1;// reenable interrupts 
      0002E0 D2 AF            [12]  667 	setb	_EA
      0002E2 22               [24]  668 	ret
                                    669 	.area CSEG    (CODE)
                                    670 	.area CONST   (CODE)
                                    671 	.area XINIT   (CODE)
                                    672 	.area CABS    (ABS,CODE)
