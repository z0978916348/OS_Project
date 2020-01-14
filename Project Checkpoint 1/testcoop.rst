                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sun Nov  3 18:37:37 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module testcoop
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl __mcs51_genXRAMCLEAR
                                     13 	.globl __mcs51_genXINIT
                                     14 	.globl __mcs51_genRAMCLEAR
                                     15 	.globl __sdcc_gsinit_startup
                                     16 	.globl _main
                                     17 	.globl _Consumer
                                     18 	.globl _Producer
                                     19 	.globl _ThreadExit
                                     20 	.globl _ThreadYield
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
                           000030   235 _Buffer	=	0x0030
                           000031   236 _sharedVar	=	0x0031
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 ;--------------------------------------------------------
                                    241 ; Stack segment in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	SSEG
      000008                        244 __start__stack:
      000008                        245 	.ds	1
                                    246 
                                    247 ;--------------------------------------------------------
                                    248 ; indirectly addressable internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area ISEG    (DATA)
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
      000000 02 00 55         [24]  291 	ljmp	__sdcc_gsinit_startup
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.globl __sdcc_gsinit_startup
                                    300 	.globl __sdcc_program_startup
                                    301 	.globl __start__stack
                                    302 	.globl __mcs51_genXINIT
                                    303 	.globl __mcs51_genXRAMCLEAR
                                    304 	.globl __mcs51_genRAMCLEAR
                                    305 	.area GSFINAL (CODE)
      000006 02 00 03         [24]  306 	ljmp	__sdcc_program_startup
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
      000003                        312 __sdcc_program_startup:
      000003 02 00 43         [24]  313 	ljmp	_main
                                    314 ;	return from main will return to caller
                                    315 ;--------------------------------------------------------
                                    316 ; code
                                    317 ;--------------------------------------------------------
                                    318 	.area CSEG    (CODE)
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'Producer'
                                    321 ;------------------------------------------------------------
                                    322 ;	testcoop.c:8: void Producer(void) {
                                    323 ;	-----------------------------------------
                                    324 ;	 function Producer
                                    325 ;	-----------------------------------------
      000009                        326 _Producer:
                           000007   327 	ar7 = 0x07
                           000006   328 	ar6 = 0x06
                           000005   329 	ar5 = 0x05
                           000004   330 	ar4 = 0x04
                           000003   331 	ar3 = 0x03
                           000002   332 	ar2 = 0x02
                           000001   333 	ar1 = 0x01
                           000000   334 	ar0 = 0x00
                                    335 ;	testcoop.c:9: sharedVar = 'A';
      000009 75 31 41         [24]  336 	mov	_sharedVar,#0x41
                                    337 ;	testcoop.c:10: while (1) {
      00000C                        338 00107$:
                                    339 ;	testcoop.c:11: if(Buffer!=0) ThreadYield();
      00000C E5 30            [12]  340 	mov	a,_Buffer
      00000E 60 03            [24]  341 	jz	00102$
      000010 12 00 DE         [24]  342 	lcall	_ThreadYield
      000013                        343 00102$:
                                    344 ;	testcoop.c:12: Buffer = sharedVar;
      000013 85 31 30         [24]  345 	mov	_Buffer,_sharedVar
                                    346 ;	testcoop.c:13: if(sharedVar=='Z') sharedVar = 'A';
      000016 74 5A            [12]  347 	mov	a,#0x5A
      000018 B5 31 05         [24]  348 	cjne	a,_sharedVar,00104$
      00001B 75 31 41         [24]  349 	mov	_sharedVar,#0x41
      00001E 80 EC            [24]  350 	sjmp	00107$
      000020                        351 00104$:
                                    352 ;	testcoop.c:14: else sharedVar++;
      000020 05 31            [12]  353 	inc	_sharedVar
      000022 80 E8            [24]  354 	sjmp	00107$
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'Consumer'
                                    357 ;------------------------------------------------------------
                                    358 ;	testcoop.c:18: void Consumer(void) {
                                    359 ;	-----------------------------------------
                                    360 ;	 function Consumer
                                    361 ;	-----------------------------------------
      000024                        362 _Consumer:
                                    363 ;	testcoop.c:19: TMOD = 0x20;  // means the timer operation completes with maximum clock
      000024 75 89 20         [24]  364 	mov	_TMOD,#0x20
                                    365 ;	testcoop.c:20: TH1 = -6;       //  To get baud rates compatible with the PC, we must load TH1 with the values
      000027 75 8D FA         [24]  366 	mov	_TH1,#0xFA
                                    367 ;	testcoop.c:21: SCON = 0x50;  // 8-bit 1 stop REN which allows the 8051 to receive data on the RxD pin of the 8051   
      00002A 75 98 50         [24]  368 	mov	_SCON,#0x50
                                    369 ;	testcoop.c:22: TR1 = 1;        // TR1 is set to 1 to start Timer 1
      00002D D2 8E            [12]  370 	setb	_TR1
                                    371 ;	testcoop.c:23: while (1) {
      00002F                        372 00107$:
                                    373 ;	testcoop.c:24: if(Buffer==0) ThreadYield();
      00002F E5 30            [12]  374 	mov	a,_Buffer
      000031 70 03            [24]  375 	jnz	00102$
      000033 12 00 DE         [24]  376 	lcall	_ThreadYield
      000036                        377 00102$:
                                    378 ;	testcoop.c:25: SBUF = Buffer;   // SBUF holds the byte of data when it is received by the 8051 ‘s RxD line
      000036 85 30 99         [24]  379 	mov	_SBUF,_Buffer
                                    380 ;	testcoop.c:26: Buffer = 0;      // reset
      000039 75 30 00         [24]  381 	mov	_Buffer,#0x00
                                    382 ;	testcoop.c:27: while (!TI) { }     
      00003C                        383 00103$:
                                    384 ;	testcoop.c:28: TI = 0;   // Serial Port Transmit
      00003C 10 99 02         [24]  385 	jbc	_TI,00124$
      00003F 80 FB            [24]  386 	sjmp	00103$
      000041                        387 00124$:
      000041 80 EC            [24]  388 	sjmp	00107$
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'main'
                                    391 ;------------------------------------------------------------
                                    392 ;	testcoop.c:32: void main(void) {
                                    393 ;	-----------------------------------------
                                    394 ;	 function main
                                    395 ;	-----------------------------------------
      000043                        396 _main:
                                    397 ;	testcoop.c:33: Buffer = 0;
      000043 75 30 00         [24]  398 	mov	_Buffer,#0x00
                                    399 ;	testcoop.c:34: ThreadCreate(Producer);
      000046 90 00 09         [24]  400 	mov	dptr,#_Producer
      000049 12 00 83         [24]  401 	lcall	_ThreadCreate
                                    402 ;	testcoop.c:35: ThreadCreate(Consumer);
      00004C 90 00 24         [24]  403 	mov	dptr,#_Consumer
      00004F 12 00 83         [24]  404 	lcall	_ThreadCreate
                                    405 ;	testcoop.c:36: ThreadExit();
      000052 02 01 27         [24]  406 	ljmp	_ThreadExit
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    409 ;------------------------------------------------------------
                                    410 ;	testcoop.c:39: void _sdcc_gsinit_startup(void) {
                                    411 ;	-----------------------------------------
                                    412 ;	 function _sdcc_gsinit_startup
                                    413 ;	-----------------------------------------
      000055                        414 __sdcc_gsinit_startup:
                                    415 ;	testcoop.c:42: __endasm;
      000055 02 00 5C         [24]  416 	ljmp _Bootstrap
      000058 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    420 ;------------------------------------------------------------
                                    421 ;	testcoop.c:45: void _mcs51_genRAMCLEAR(void) {}
                                    422 ;	-----------------------------------------
                                    423 ;	 function _mcs51_genRAMCLEAR
                                    424 ;	-----------------------------------------
      000059                        425 __mcs51_genRAMCLEAR:
      000059 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    429 ;------------------------------------------------------------
                                    430 ;	testcoop.c:46: void _mcs51_genXINIT(void) {}
                                    431 ;	-----------------------------------------
                                    432 ;	 function _mcs51_genXINIT
                                    433 ;	-----------------------------------------
      00005A                        434 __mcs51_genXINIT:
      00005A 22               [24]  435 	ret
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    438 ;------------------------------------------------------------
                                    439 ;	testcoop.c:47: void _mcs51_genXRAMCLEAR(void) {}
                                    440 ;	-----------------------------------------
                                    441 ;	 function _mcs51_genXRAMCLEAR
                                    442 ;	-----------------------------------------
      00005B                        443 __mcs51_genXRAMCLEAR:
      00005B 22               [24]  444 	ret
                                    445 	.area CSEG    (CODE)
                                    446 	.area CONST   (CODE)
                                    447 	.area XINIT   (CODE)
                                    448 	.area CABS    (ABS,CODE)
