                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sun Nov  3 18:37:37 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module cooperative
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Bootstrap
                                     13 	.globl _main
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _index
                                    111 	.globl _SelectThread
                                    112 	.globl _SaveCurrentSP
                                    113 	.globl _ID
                                    114 	.globl _Bitmap
                                    115 	.globl _ThreadSP
                                    116 	.globl _ThreadCreate
                                    117 	.globl _ThreadYield
                                    118 	.globl _ThreadExit
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
                           000034   234 _ThreadSP	=	0x0034
                           000038   235 _Bitmap	=	0x0038
                           00003C   236 _ID	=	0x003c
                           00003D   237 _SaveCurrentSP	=	0x003d
                           00003E   238 _SelectThread	=	0x003e
                           00003F   239 _index	=	0x003f
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable items in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	OSEG    (OVR,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
                                    257 ;--------------------------------------------------------
                                    258 ; paged external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area PSEG    (PAG,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XABS    (ABS,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external initialized ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XISEG   (XDATA)
                                    273 	.area HOME    (CODE)
                                    274 	.area GSINIT0 (CODE)
                                    275 	.area GSINIT1 (CODE)
                                    276 	.area GSINIT2 (CODE)
                                    277 	.area GSINIT3 (CODE)
                                    278 	.area GSINIT4 (CODE)
                                    279 	.area GSINIT5 (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area CSEG    (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; global & static initialisations
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; Home
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area HOME    (CODE)
                                    295 ;--------------------------------------------------------
                                    296 ; code
                                    297 ;--------------------------------------------------------
                                    298 	.area CSEG    (CODE)
                                    299 ;------------------------------------------------------------
                                    300 ;Allocation info for local variables in function 'Bootstrap'
                                    301 ;------------------------------------------------------------
                                    302 ;	cooperative.c:37: void Bootstrap(void) {
                                    303 ;	-----------------------------------------
                                    304 ;	 function Bootstrap
                                    305 ;	-----------------------------------------
      00005C                        306 _Bootstrap:
                           000007   307 	ar7 = 0x07
                           000006   308 	ar6 = 0x06
                           000005   309 	ar5 = 0x05
                           000004   310 	ar4 = 0x04
                           000003   311 	ar3 = 0x03
                           000002   312 	ar2 = 0x02
                           000001   313 	ar1 = 0x01
                           000000   314 	ar0 = 0x00
                                    315 ;	cooperative.c:38: Bitmap[0] = Bitmap[1] = Bitmap[2] = Bitmap[3] = 0;
      00005C 75 3B 00         [24]  316 	mov	(_Bitmap + 0x0003),#0x00
      00005F 75 3A 00         [24]  317 	mov	(_Bitmap + 0x0002),#0x00
      000062 75 39 00         [24]  318 	mov	(_Bitmap + 0x0001),#0x00
      000065 75 38 00         [24]  319 	mov	_Bitmap,#0x00
                                    320 ;	cooperative.c:39: ID = ThreadCreate(main);
      000068 90 00 43         [24]  321 	mov	dptr,#_main
      00006B 12 00 83         [24]  322 	lcall	_ThreadCreate
      00006E 85 82 3C         [24]  323 	mov	_ID,dpl
                                    324 ;	cooperative.c:40: RESTORESTATE;
      000071 E5 3C            [12]  325 	mov	a,_ID
      000073 24 34            [12]  326 	add	a,#_ThreadSP
      000075 F9               [12]  327 	mov	r1,a
      000076 87 81            [24]  328 	mov	_SP,@r1
      000078 D0 D0            [24]  329 	pop PSW 
      00007A D0 83            [24]  330 	pop DPH 
      00007C D0 82            [24]  331 	pop DPL 
      00007E D0 F0            [24]  332 	pop B 
      000080 D0 E0            [24]  333 	pop ACC 
      000082 22               [24]  334 	ret
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'ThreadCreate'
                                    337 ;------------------------------------------------------------
                                    338 ;fp                        Allocated to registers 
                                    339 ;------------------------------------------------------------
                                    340 ;	cooperative.c:43: ThreadID ThreadCreate(FunctionPtr fp) {
                                    341 ;	-----------------------------------------
                                    342 ;	 function ThreadCreate
                                    343 ;	-----------------------------------------
      000083                        344 _ThreadCreate:
                                    345 ;	cooperative.c:44: for(index=0;index<MAXTHREADS;index++) if(!Bitmap[index]) break;
      000083 75 3F 00         [24]  346 	mov	_index,#0x00
      000086                        347 00107$:
      000086 C3               [12]  348 	clr	c
      000087 E5 3F            [12]  349 	mov	a,_index
      000089 64 80            [12]  350 	xrl	a,#0x80
      00008B 94 84            [12]  351 	subb	a,#0x84
      00008D 50 0C            [24]  352 	jnc	00103$
      00008F E5 3F            [12]  353 	mov	a,_index
      000091 24 38            [12]  354 	add	a,#_Bitmap
      000093 F9               [12]  355 	mov	r1,a
      000094 E7               [12]  356 	mov	a,@r1
      000095 60 04            [24]  357 	jz	00103$
      000097 05 3F            [12]  358 	inc	_index
      000099 80 EB            [24]  359 	sjmp	00107$
      00009B                        360 00103$:
                                    361 ;	cooperative.c:45: if(index==MAXTHREADS) return -1;
      00009B 74 04            [12]  362 	mov	a,#0x04
      00009D B5 3F 04         [24]  363 	cjne	a,_index,00105$
      0000A0 75 82 FF         [24]  364 	mov	dpl,#0xFF
      0000A3 22               [24]  365 	ret
      0000A4                        366 00105$:
                                    367 ;	cooperative.c:47: Bitmap[index] = 1;
      0000A4 E5 3F            [12]  368 	mov	a,_index
      0000A6 24 38            [12]  369 	add	a,#_Bitmap
      0000A8 F8               [12]  370 	mov	r0,a
      0000A9 76 01            [12]  371 	mov	@r0,#0x01
                                    372 ;	cooperative.c:48: SaveCurrentSP = SP;
      0000AB 85 81 3D         [24]  373 	mov	_SaveCurrentSP,_SP
                                    374 ;	cooperative.c:49: SP = 0x3F + index*0x10;
      0000AE E5 3F            [12]  375 	mov	a,_index
      0000B0 C4               [12]  376 	swap	a
      0000B1 54 F0            [12]  377 	anl	a,#0xF0
      0000B3 FF               [12]  378 	mov	r7,a
      0000B4 24 3F            [12]  379 	add	a,#0x3F
      0000B6 F5 81            [12]  380 	mov	_SP,a
                                    381 ;	cooperative.c:59: __endasm;
      0000B8 C0 82            [24]  382 	push DPL
      0000BA C0 83            [24]  383 	push DPH
      0000BC 74 00            [12]  384 	mov a,#0x00
      0000BE C0 E0            [24]  385 	push a
      0000C0 C0 E0            [24]  386 	push a
      0000C2 C0 E0            [24]  387 	push a
      0000C4 C0 E0            [24]  388 	push a
                                    389 ;	cooperative.c:60: SelectThread = index<<3;
      0000C6 E5 3F            [12]  390 	mov	a,_index
      0000C8 C4               [12]  391 	swap	a
      0000C9 03               [12]  392 	rr	a
      0000CA 54 F8            [12]  393 	anl	a,#0xF8
      0000CC F5 3E            [12]  394 	mov	_SelectThread,a
                                    395 ;	cooperative.c:63: __endasm;
      0000CE C0 3E            [24]  396 	push _SelectThread
                                    397 ;	cooperative.c:65: ThreadSP[index] = SP;
      0000D0 E5 3F            [12]  398 	mov	a,_index
      0000D2 24 34            [12]  399 	add	a,#_ThreadSP
      0000D4 F8               [12]  400 	mov	r0,a
      0000D5 A6 81            [24]  401 	mov	@r0,_SP
                                    402 ;	cooperative.c:66: SP = SaveCurrentSP;
      0000D7 85 3D 81         [24]  403 	mov	_SP,_SaveCurrentSP
                                    404 ;	cooperative.c:67: return index;
      0000DA 85 3F 82         [24]  405 	mov	dpl,_index
      0000DD 22               [24]  406 	ret
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'ThreadYield'
                                    409 ;------------------------------------------------------------
                                    410 ;	cooperative.c:70: void ThreadYield(void) {
                                    411 ;	-----------------------------------------
                                    412 ;	 function ThreadYield
                                    413 ;	-----------------------------------------
      0000DE                        414 _ThreadYield:
                                    415 ;	cooperative.c:71: SAVESTATE;
      0000DE C0 E0            [24]  416 	push ACC 
      0000E0 C0 F0            [24]  417 	push B 
      0000E2 C0 82            [24]  418 	push DPL 
      0000E4 C0 83            [24]  419 	push DPH 
      0000E6 C0 D0            [24]  420 	push PSW 
      0000E8 C2 D3            [12]  421 	clr RS0 
      0000EA C2 D4            [12]  422 	clr RS1 
      0000EC E5 3C            [12]  423 	mov	a,_ID
      0000EE 24 34            [12]  424 	add	a,#_ThreadSP
      0000F0 F8               [12]  425 	mov	r0,a
      0000F1 A6 81            [24]  426 	mov	@r0,_SP
                                    427 ;	cooperative.c:72: do {
      0000F3                        428 00103$:
                                    429 ;	cooperative.c:73: ID = (ID==MAXTHREADS-1) ? 0 : ID+1;
      0000F3 74 03            [12]  430 	mov	a,#0x03
      0000F5 B5 3C 04         [24]  431 	cjne	a,_ID,00108$
      0000F8 7F 00            [12]  432 	mov	r7,#0x00
      0000FA 80 04            [24]  433 	sjmp	00109$
      0000FC                        434 00108$:
      0000FC E5 3C            [12]  435 	mov	a,_ID
      0000FE 04               [12]  436 	inc	a
      0000FF FF               [12]  437 	mov	r7,a
      000100                        438 00109$:
      000100 8F 3C            [24]  439 	mov	_ID,r7
                                    440 ;	cooperative.c:74: if(Bitmap[ID]>0) break;
      000102 E5 3C            [12]  441 	mov	a,_ID
      000104 24 38            [12]  442 	add	a,#_Bitmap
      000106 F9               [12]  443 	mov	r1,a
      000107 87 07            [24]  444 	mov	ar7,@r1
      000109 C3               [12]  445 	clr	c
      00010A 74 80            [12]  446 	mov	a,#(0x00 ^ 0x80)
      00010C 8F F0            [24]  447 	mov	b,r7
      00010E 63 F0 80         [24]  448 	xrl	b,#0x80
      000111 95 F0            [12]  449 	subb	a,b
      000113 50 DE            [24]  450 	jnc	00103$
                                    451 ;	cooperative.c:76: RESTORESTATE;
      000115 E5 3C            [12]  452 	mov	a,_ID
      000117 24 34            [12]  453 	add	a,#_ThreadSP
      000119 F9               [12]  454 	mov	r1,a
      00011A 87 81            [24]  455 	mov	_SP,@r1
      00011C D0 D0            [24]  456 	pop PSW 
      00011E D0 83            [24]  457 	pop DPH 
      000120 D0 82            [24]  458 	pop DPL 
      000122 D0 F0            [24]  459 	pop B 
      000124 D0 E0            [24]  460 	pop ACC 
      000126 22               [24]  461 	ret
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'ThreadExit'
                                    464 ;------------------------------------------------------------
                                    465 ;	cooperative.c:79: void ThreadExit(void) {
                                    466 ;	-----------------------------------------
                                    467 ;	 function ThreadExit
                                    468 ;	-----------------------------------------
      000127                        469 _ThreadExit:
                                    470 ;	cooperative.c:80: Bitmap[ID] = 0;
      000127 E5 3C            [12]  471 	mov	a,_ID
      000129 24 38            [12]  472 	add	a,#_Bitmap
      00012B F8               [12]  473 	mov	r0,a
      00012C 76 00            [12]  474 	mov	@r0,#0x00
                                    475 ;	cooperative.c:81: do {
      00012E                        476 00103$:
                                    477 ;	cooperative.c:82: ID = (ID==MAXTHREADS-1) ? 0 : ID+1;
      00012E 74 03            [12]  478 	mov	a,#0x03
      000130 B5 3C 04         [24]  479 	cjne	a,_ID,00108$
      000133 7F 00            [12]  480 	mov	r7,#0x00
      000135 80 04            [24]  481 	sjmp	00109$
      000137                        482 00108$:
      000137 E5 3C            [12]  483 	mov	a,_ID
      000139 04               [12]  484 	inc	a
      00013A FF               [12]  485 	mov	r7,a
      00013B                        486 00109$:
      00013B 8F 3C            [24]  487 	mov	_ID,r7
                                    488 ;	cooperative.c:83: if(Bitmap[ID]>0) break;
      00013D E5 3C            [12]  489 	mov	a,_ID
      00013F 24 38            [12]  490 	add	a,#_Bitmap
      000141 F9               [12]  491 	mov	r1,a
      000142 87 07            [24]  492 	mov	ar7,@r1
      000144 C3               [12]  493 	clr	c
      000145 74 80            [12]  494 	mov	a,#(0x00 ^ 0x80)
      000147 8F F0            [24]  495 	mov	b,r7
      000149 63 F0 80         [24]  496 	xrl	b,#0x80
      00014C 95 F0            [12]  497 	subb	a,b
      00014E 50 DE            [24]  498 	jnc	00103$
                                    499 ;	cooperative.c:85: RESTORESTATE;
      000150 E5 3C            [12]  500 	mov	a,_ID
      000152 24 34            [12]  501 	add	a,#_ThreadSP
      000154 F9               [12]  502 	mov	r1,a
      000155 87 81            [24]  503 	mov	_SP,@r1
      000157 D0 D0            [24]  504 	pop PSW 
      000159 D0 83            [24]  505 	pop DPH 
      00015B D0 82            [24]  506 	pop DPL 
      00015D D0 F0            [24]  507 	pop B 
      00015F D0 E0            [24]  508 	pop ACC 
      000161 22               [24]  509 	ret
                                    510 	.area CSEG    (CODE)
                                    511 	.area CONST   (CODE)
                                    512 	.area XINIT   (CODE)
                                    513 	.area CABS    (ABS,CODE)
