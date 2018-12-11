
_msgExecutar:

;msg.h,3 :: 		void  msgExecutar(){
;msg.h,5 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;msg.h,6 :: 		lcd_Out(1, 5,"Pressione");
	LDI        R27, #lo_addr(?lstr1_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr1_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,7 :: 		lcd_Out(2, 5,"EXECUTAR!");
	LDI        R27, #lo_addr(?lstr2_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr2_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,8 :: 		}
L_end_msgExecutar:
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _msgExecutar

_msgInicializacao:

;msg.h,10 :: 		void msgInicializacao(){
;msg.h,11 :: 		Lcd_Init();
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	CALL       _Lcd_Init+0
;msg.h,12 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;msg.h,13 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	LDI        R27, 12
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;msg.h,14 :: 		Lcd_Out(1,1,"LUPA TECNOLOGIA");
	LDI        R27, #lo_addr(?lstr3_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr3_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,15 :: 		lcd_Out(2,1,"Inicializando...");
	LDI        R27, #lo_addr(?lstr4_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr4_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,16 :: 		Delay_ms (2200);
	LDI        R18, 157
	LDI        R17, 64
	LDI        R16, 150
L_msgInicializacao0:
	DEC        R16
	BRNE       L_msgInicializacao0
	DEC        R17
	BRNE       L_msgInicializacao0
	DEC        R18
	BRNE       L_msgInicializacao0
	NOP
	NOP
;msg.h,17 :: 		lcd_Out(2, 1,"Testador V1.2.0");
	LDI        R27, #lo_addr(?lstr5_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr5_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,18 :: 		Delay_ms (2500);
	LDI        R18, 178
	LDI        R17, 143
	LDI        R16, 20
L_msgInicializacao2:
	DEC        R16
	BRNE       L_msgInicializacao2
	DEC        R17
	BRNE       L_msgInicializacao2
	DEC        R18
	BRNE       L_msgInicializacao2
;msg.h,19 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;msg.h,20 :: 		lcd_Out(1, 1,"Selecionar Teste");
	LDI        R27, #lo_addr(?lstr6_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr6_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,21 :: 		lcd_Out(2, 1,"Pressione MOD");
	LDI        R27, #lo_addr(?lstr7_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr7_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,22 :: 		}
L_end_msgInicializacao:
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _msgInicializacao

_msgExecutando:

;msg.h,24 :: 		void msgExecutando (){
;msg.h,25 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;msg.h,26 :: 		Lcd_Out(1,1,"Executando Teste");
	LDI        R27, #lo_addr(?lstr8_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr8_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,27 :: 		Lcd_Out(2,1,"Aguarde...");
	LDI        R27, #lo_addr(?lstr9_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr9_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;msg.h,29 :: 		}
L_end_msgExecutando:
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _msgExecutando

IHMTCV1_0_iljiCompleto:

;iljin_0.h,4 :: 		static int iljiCompleto (int count, int *PINO){
;iljin_0.h,6 :: 		switch (count){
	JMP        L_IHMTCV1_0_iljiCompleto4
;iljin_0.h,8 :: 		case 1://PINO 50
L_IHMTCV1_0_iljiCompleto6:
;iljin_0.h,9 :: 		PORTB = 0b00010101;
	LDI        R27, 21
	OUT        PORTB+0, R27
;iljin_0.h,10 :: 		PORTE = 0b01001000;
	LDI        R27, 72
	OUT        PORTE+0, R27
;iljin_0.h,11 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto7:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto7
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto7
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto7
;iljin_0.h,12 :: 		PINO[1] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 2
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,13 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,15 :: 		case 2://PINO 51
L_IHMTCV1_0_iljiCompleto9:
;iljin_0.h,16 :: 		PORTE = 0b01001001;
	LDI        R27, 73
	OUT        PORTE+0, R27
;iljin_0.h,17 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto10:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto10
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto10
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto10
;iljin_0.h,18 :: 		PINO[2] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 4
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,19 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,22 :: 		case 3://PINO 52
L_IHMTCV1_0_iljiCompleto12:
;iljin_0.h,23 :: 		PORTE = 0b01001010;
	LDI        R27, 74
	OUT        PORTE+0, R27
;iljin_0.h,24 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto13:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto13
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto13
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto13
;iljin_0.h,25 :: 		PINO[3] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 6
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,26 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,29 :: 		case 4://PINO 53
L_IHMTCV1_0_iljiCompleto15:
;iljin_0.h,30 :: 		PORTE = 0b01001011;
	LDI        R27, 75
	OUT        PORTE+0, R27
;iljin_0.h,31 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto16:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto16
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto16
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto16
;iljin_0.h,32 :: 		PINO[4] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 8
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,33 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,35 :: 		case 5://PINO 91
L_IHMTCV1_0_iljiCompleto18:
;iljin_0.h,36 :: 		PORTE = 0b01001100;
	LDI        R27, 76
	OUT        PORTE+0, R27
;iljin_0.h,37 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto19:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto19
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto19
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto19
;iljin_0.h,38 :: 		PINO[5] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 10
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,39 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,41 :: 		case 6://PINO 92
L_IHMTCV1_0_iljiCompleto21:
;iljin_0.h,42 :: 		PORTE = 0b01001101;
	LDI        R27, 77
	OUT        PORTE+0, R27
;iljin_0.h,43 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto22:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto22
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto22
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto22
;iljin_0.h,44 :: 		PINO[6] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 12
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,45 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,47 :: 		case 7://PINO 93
L_IHMTCV1_0_iljiCompleto24:
;iljin_0.h,48 :: 		PORTE = 0b01001110;
	LDI        R27, 78
	OUT        PORTE+0, R27
;iljin_0.h,49 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto25:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto25
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto25
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto25
;iljin_0.h,50 :: 		PINO[7] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 14
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,51 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,54 :: 		case 8://PINO 71
L_IHMTCV1_0_iljiCompleto27:
;iljin_0.h,55 :: 		PORTE = 0b01001111;
	LDI        R27, 79
	OUT        PORTE+0, R27
;iljin_0.h,56 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto28:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto28
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto28
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto28
;iljin_0.h,57 :: 		PINO[8] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 16
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,58 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,61 :: 		case 9://PINO 72
L_IHMTCV1_0_iljiCompleto30:
;iljin_0.h,62 :: 		PORTE = 0b00110000;
	LDI        R27, 48
	OUT        PORTE+0, R27
;iljin_0.h,63 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto31:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto31
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto31
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto31
;iljin_0.h,64 :: 		PINO[9] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 18
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,65 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,67 :: 		case 10://PINO 73
L_IHMTCV1_0_iljiCompleto33:
;iljin_0.h,68 :: 		PORTE = 0b00110001;
	LDI        R27, 49
	OUT        PORTE+0, R27
;iljin_0.h,69 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto34:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto34
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto34
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto34
;iljin_0.h,70 :: 		PINO[10] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 20
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,71 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,73 :: 		case 11://PINO 74
L_IHMTCV1_0_iljiCompleto36:
;iljin_0.h,74 :: 		PORTE = 0b00110010;
	LDI        R27, 50
	OUT        PORTE+0, R27
;iljin_0.h,75 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto37:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto37
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto37
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto37
;iljin_0.h,76 :: 		PINO[11] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 22
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,77 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,79 :: 		case 12://PINO 75
L_IHMTCV1_0_iljiCompleto39:
;iljin_0.h,80 :: 		PORTE = 0b00110011;
	LDI        R27, 51
	OUT        PORTE+0, R27
;iljin_0.h,81 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto40:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto40
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto40
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto40
;iljin_0.h,82 :: 		PINO[12] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 24
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,83 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,85 :: 		case 13://PINO 76
L_IHMTCV1_0_iljiCompleto42:
;iljin_0.h,86 :: 		PORTE = 0b00110100;
	LDI        R27, 52
	OUT        PORTE+0, R27
;iljin_0.h,87 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto43:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto43
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto43
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto43
;iljin_0.h,88 :: 		PINO[13] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 26
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,89 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,91 :: 		case 14://PINO 60
L_IHMTCV1_0_iljiCompleto45:
;iljin_0.h,92 :: 		PORTE = 0b00110101;
	LDI        R27, 53
	OUT        PORTE+0, R27
;iljin_0.h,93 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto46:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto46
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto46
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto46
;iljin_0.h,94 :: 		PINO[14] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 28
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,95 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,97 :: 		case 15://PINO 61
L_IHMTCV1_0_iljiCompleto48:
;iljin_0.h,98 :: 		PORTE = 0b00110110;
	LDI        R27, 54
	OUT        PORTE+0, R27
;iljin_0.h,99 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto49:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto49
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto49
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto49
;iljin_0.h,100 :: 		PINO[15] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 30
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,101 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,103 :: 		case 16://PINO 62
L_IHMTCV1_0_iljiCompleto51:
;iljin_0.h,104 :: 		PORTE = 0b00110111;
	LDI        R27, 55
	OUT        PORTE+0, R27
;iljin_0.h,105 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto52:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto52
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto52
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto52
;iljin_0.h,106 :: 		PINO[16] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 32
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,107 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,109 :: 		case 17://PINO 63
L_IHMTCV1_0_iljiCompleto54:
;iljin_0.h,110 :: 		PORTE = 0b11010000;
	LDI        R27, 208
	OUT        PORTE+0, R27
;iljin_0.h,111 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,112 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto55:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto55
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto55
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto55
;iljin_0.h,113 :: 		PINO[17] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 34
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,114 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,117 :: 		case 18://PINO 30
L_IHMTCV1_0_iljiCompleto57:
;iljin_0.h,118 :: 		PORTE = 0b11010001;
	LDI        R27, 209
	OUT        PORTE+0, R27
;iljin_0.h,119 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,120 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto58:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto58
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto58
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto58
;iljin_0.h,121 :: 		PINO[18] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 36
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,122 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,124 :: 		case 19://PINO 31
L_IHMTCV1_0_iljiCompleto60:
;iljin_0.h,125 :: 		PORTE = 0b11010010;
	LDI        R27, 210
	OUT        PORTE+0, R27
;iljin_0.h,126 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,127 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto61:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto61
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto61
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto61
;iljin_0.h,128 :: 		PINO[19] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 38
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,129 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,131 :: 		case 20://PINO 32
L_IHMTCV1_0_iljiCompleto63:
;iljin_0.h,132 :: 		PORTE = 0b11010011;
	LDI        R27, 211
	OUT        PORTE+0, R27
;iljin_0.h,133 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,134 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto64:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto64
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto64
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto64
;iljin_0.h,135 :: 		PINO[20] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 40
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,136 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,138 :: 		case 21://PINO 33
L_IHMTCV1_0_iljiCompleto66:
;iljin_0.h,139 :: 		PORTE = 0b11010100;
	LDI        R27, 212
	OUT        PORTE+0, R27
;iljin_0.h,140 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,141 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto67:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto67
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto67
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto67
;iljin_0.h,142 :: 		PINO[21] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 42
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,143 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,145 :: 		case 22://PINO 34
L_IHMTCV1_0_iljiCompleto69:
;iljin_0.h,146 :: 		PORTE = 0b11010101;
	LDI        R27, 213
	OUT        PORTE+0, R27
;iljin_0.h,147 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,148 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto70:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto70
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto70
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto70
;iljin_0.h,149 :: 		PINO[22] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 44
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,150 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,152 :: 		case 23://PINO 35
L_IHMTCV1_0_iljiCompleto72:
;iljin_0.h,153 :: 		PORTE = 0b11010110;
	LDI        R27, 214
	OUT        PORTE+0, R27
;iljin_0.h,154 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,155 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto73:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto73
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto73
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto73
;iljin_0.h,156 :: 		PINO[23] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 46
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,157 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,159 :: 		case 24://PINO 36
L_IHMTCV1_0_iljiCompleto75:
;iljin_0.h,160 :: 		PORTE = 0b11010111;
	LDI        R27, 215
	OUT        PORTE+0, R27
;iljin_0.h,161 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,162 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto76:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto76
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto76
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto76
;iljin_0.h,163 :: 		PINO[24] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 48
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,164 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,166 :: 		case 25://PINO 37
L_IHMTCV1_0_iljiCompleto78:
;iljin_0.h,167 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;iljin_0.h,168 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,169 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto79:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto79
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto79
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto79
;iljin_0.h,170 :: 		PINO[25] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 50
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,171 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,173 :: 		case 26://PINO 38
L_IHMTCV1_0_iljiCompleto81:
;iljin_0.h,174 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;iljin_0.h,175 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,176 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto82:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto82
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto82
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto82
;iljin_0.h,177 :: 		PINO[26] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 52
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,178 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,180 :: 		case 27://PINO 39
L_IHMTCV1_0_iljiCompleto84:
;iljin_0.h,181 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;iljin_0.h,182 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,183 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto85:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto85
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto85
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto85
;iljin_0.h,184 :: 		PINO[27] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 54
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,185 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,187 :: 		case 28://PINO 45
L_IHMTCV1_0_iljiCompleto87:
;iljin_0.h,188 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;iljin_0.h,189 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,190 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto88:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto88
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto88
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto88
;iljin_0.h,191 :: 		PINO[28] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 56
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,192 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,194 :: 		case 29://PINO 40
L_IHMTCV1_0_iljiCompleto90:
;iljin_0.h,195 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;iljin_0.h,196 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,197 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto91:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto91
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto91
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto91
;iljin_0.h,198 :: 		PINO[29] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 58
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,199 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,201 :: 		case 30://PINO 41
L_IHMTCV1_0_iljiCompleto93:
;iljin_0.h,202 :: 		PORTE = 0b01010101;
	LDI        R27, 85
	OUT        PORTE+0, R27
;iljin_0.h,203 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,204 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto94:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto94
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto94
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto94
;iljin_0.h,205 :: 		PINO[30] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 60
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,206 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,208 :: 		case 31://PINO 42
L_IHMTCV1_0_iljiCompleto96:
;iljin_0.h,209 :: 		PORTE = 0b01010110;
	LDI        R27, 86
	OUT        PORTE+0, R27
;iljin_0.h,210 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,211 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto97:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto97
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto97
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto97
;iljin_0.h,212 :: 		PINO[31] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 62
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,213 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,215 :: 		case 32://PINO 44
L_IHMTCV1_0_iljiCompleto99:
;iljin_0.h,216 :: 		PORTE = 0b01010111;
	LDI        R27, 87
	OUT        PORTE+0, R27
;iljin_0.h,217 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,218 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto100:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto100
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto100
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto100
;iljin_0.h,219 :: 		PINO[32] = PING & (1<<0);
	MOVW       R30, R4
	SUBI       R30, 192
	SBCI       R31, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,220 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,222 :: 		case 33://PINO 43
L_IHMTCV1_0_iljiCompleto102:
;iljin_0.h,223 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;iljin_0.h,224 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,225 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto103:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto103
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto103
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto103
;iljin_0.h,226 :: 		PINO[33] = PING & (1<<0);
	MOVW       R30, R4
	SUBI       R30, 190
	SBCI       R31, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,227 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,229 :: 		case 34://PINO 47
L_IHMTCV1_0_iljiCompleto105:
;iljin_0.h,230 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;iljin_0.h,231 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,232 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto106:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto106
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto106
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto106
;iljin_0.h,233 :: 		PINO[34] = PING & (1<<0);
	MOVW       R30, R4
	SUBI       R30, 188
	SBCI       R31, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,234 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,236 :: 		case 35://PINO 46
L_IHMTCV1_0_iljiCompleto108:
;iljin_0.h,237 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;iljin_0.h,238 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,239 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto109:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto109
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto109
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto109
;iljin_0.h,240 :: 		PINO[35] = PING & (1<<0);
	MOVW       R30, R4
	SUBI       R30, 186
	SBCI       R31, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,241 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,243 :: 		case 36://PINO 49
L_IHMTCV1_0_iljiCompleto111:
;iljin_0.h,244 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;iljin_0.h,245 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,246 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto112:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto112
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto112
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto112
;iljin_0.h,247 :: 		PINO[36] = PING & (1<<0);
	MOVW       R30, R4
	SUBI       R30, 184
	SBCI       R31, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,248 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,250 :: 		case 37://PINO 48
L_IHMTCV1_0_iljiCompleto114:
;iljin_0.h,251 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;iljin_0.h,252 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,253 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto115:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto115
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto115
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto115
;iljin_0.h,254 :: 		PINO[37] = PING & (1<<0);
	MOVW       R30, R4
	SUBI       R30, 182
	SBCI       R31, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,255 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,284 :: 		case 38://PINO 94
L_IHMTCV1_0_iljiCompleto117:
;iljin_0.h,285 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;iljin_0.h,286 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto118:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto118
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto118
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto118
;iljin_0.h,287 :: 		PINO[38] = PINF &(1<<1);
	MOVW       R30, R4
	SUBI       R30, 180
	SBCI       R31, 255
	IN         R16, PINF+0
	ANDI       R16, 2
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,288 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,290 :: 		case 39://PINO 96
L_IHMTCV1_0_iljiCompleto120:
;iljin_0.h,291 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;iljin_0.h,292 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto121:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto121
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto121
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto121
;iljin_0.h,293 :: 		PINO[39] = PINF &(1<<2);
	MOVW       R30, R4
	SUBI       R30, 178
	SBCI       R31, 255
	IN         R16, PINF+0
	ANDI       R16, 4
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,294 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,296 :: 		case 40://PINO 98
L_IHMTCV1_0_iljiCompleto123:
;iljin_0.h,297 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;iljin_0.h,298 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto124:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto124
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto124
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto124
;iljin_0.h,299 :: 		PINO[40] = PINF &(1<<3);
	MOVW       R30, R4
	SUBI       R30, 176
	SBCI       R31, 255
	IN         R16, PINF+0
	ANDI       R16, 8
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,300 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,302 :: 		case 41://PINO 77
L_IHMTCV1_0_iljiCompleto126:
;iljin_0.h,303 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,304 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto127:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto127
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto127
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto127
;iljin_0.h,305 :: 		PINO[41] = PINC &(1<<1);
	MOVW       R30, R4
	SUBI       R30, 174
	SBCI       R31, 255
	IN         R16, PINC+0
	ANDI       R16, 2
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,306 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,309 :: 		case 42://PINO 77
L_IHMTCV1_0_iljiCompleto129:
;iljin_0.h,310 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,311 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto130:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto130
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto130
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto130
;iljin_0.h,312 :: 		PINO[42] = PINC & (1<<2);
	MOVW       R30, R4
	SUBI       R30, 172
	SBCI       R31, 255
	IN         R16, PINC+0
	ANDI       R16, 4
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,313 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,315 :: 		case 43://PINO 77
L_IHMTCV1_0_iljiCompleto132:
;iljin_0.h,316 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,317 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto133:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto133
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto133
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto133
;iljin_0.h,318 :: 		PINO[43] = PINC & (1<<3);
	MOVW       R30, R4
	SUBI       R30, 170
	SBCI       R31, 255
	IN         R16, PINC+0
	ANDI       R16, 8
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,319 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,321 :: 		case 44://PINO 77
L_IHMTCV1_0_iljiCompleto135:
;iljin_0.h,322 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,323 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto136:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto136
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto136
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto136
;iljin_0.h,324 :: 		PINO[44] = PINC & (1<<4);
	MOVW       R30, R4
	SUBI       R30, 168
	SBCI       R31, 255
	IN         R16, PINC+0
	ANDI       R16, 16
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,325 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,328 :: 		case 45://PINO 77
L_IHMTCV1_0_iljiCompleto138:
;iljin_0.h,329 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,330 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto139:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto139
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto139
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto139
;iljin_0.h,331 :: 		PINO[45] = PINC & (1<<5);
	MOVW       R30, R4
	SUBI       R30, 166
	SBCI       R31, 255
	IN         R16, PINC+0
	ANDI       R16, 32
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,332 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,334 :: 		case 46://PINO 77
L_IHMTCV1_0_iljiCompleto141:
;iljin_0.h,335 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,336 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto142:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto142
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto142
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto142
;iljin_0.h,337 :: 		PINO[46] = PINC & (1<<6);
	MOVW       R30, R4
	SUBI       R30, 164
	SBCI       R31, 255
	IN         R16, PINC+0
	ANDI       R16, 64
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,338 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,340 :: 		case 47://PINO 64
L_IHMTCV1_0_iljiCompleto144:
;iljin_0.h,341 :: 		PORTF = PORTF |(1<<4);
	LDS        R27, PORTF+0
	SBR        R27, 16
	STS        PORTF+0, R27
;iljin_0.h,342 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto145:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto145
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto145
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto145
;iljin_0.h,343 :: 		PINO[47] = PINF &(1<<5);
	MOVW       R30, R4
	SUBI       R30, 162
	SBCI       R31, 255
	IN         R16, PINF+0
	ANDI       R16, 32
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,344 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,346 :: 		case 48://PINO 64
L_IHMTCV1_0_iljiCompleto147:
;iljin_0.h,347 :: 		PORTF = PORTF |(1<<4);
	LDS        R16, PORTF+0
	ORI        R16, 16
	STS        PORTF+0, R16
;iljin_0.h,348 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto148:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto148
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto148
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto148
;iljin_0.h,349 :: 		PINO[48] = PINF &(1<<6);
	MOVW       R30, R4
	SUBI       R30, 160
	SBCI       R31, 255
	IN         R16, PINF+0
	ANDI       R16, 64
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,350 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,351 :: 		case 49: //PINO 64
L_IHMTCV1_0_iljiCompleto150:
;iljin_0.h,352 :: 		PORTF = PORTF |(1<<4);
	LDS        R16, PORTF+0
	ORI        R16, 16
	STS        PORTF+0, R16
;iljin_0.h,353 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljiCompleto151:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljiCompleto151
	DEC        R17
	BRNE       L_IHMTCV1_0_iljiCompleto151
	DEC        R18
	BRNE       L_IHMTCV1_0_iljiCompleto151
;iljin_0.h,354 :: 		PINO[49] = PINF &(1<<7);
	MOVW       R30, R4
	SUBI       R30, 158
	SBCI       R31, 255
	IN         R16, PINF+0
	ANDI       R16, 128
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,355 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,356 :: 		}
	JMP        L_IHMTCV1_0_iljiCompleto5
L_IHMTCV1_0_iljiCompleto4:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto546
	LDI        R27, 1
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto546:
	BRNE       L_IHMTCV1_0_iljiCompleto547
	JMP        L_IHMTCV1_0_iljiCompleto6
L_IHMTCV1_0_iljiCompleto547:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto548
	LDI        R27, 2
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto548:
	BRNE       L_IHMTCV1_0_iljiCompleto549
	JMP        L_IHMTCV1_0_iljiCompleto9
L_IHMTCV1_0_iljiCompleto549:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto550
	LDI        R27, 3
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto550:
	BRNE       L_IHMTCV1_0_iljiCompleto551
	JMP        L_IHMTCV1_0_iljiCompleto12
L_IHMTCV1_0_iljiCompleto551:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto552
	LDI        R27, 4
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto552:
	BRNE       L_IHMTCV1_0_iljiCompleto553
	JMP        L_IHMTCV1_0_iljiCompleto15
L_IHMTCV1_0_iljiCompleto553:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto554
	LDI        R27, 5
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto554:
	BRNE       L_IHMTCV1_0_iljiCompleto555
	JMP        L_IHMTCV1_0_iljiCompleto18
L_IHMTCV1_0_iljiCompleto555:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto556
	LDI        R27, 6
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto556:
	BRNE       L_IHMTCV1_0_iljiCompleto557
	JMP        L_IHMTCV1_0_iljiCompleto21
L_IHMTCV1_0_iljiCompleto557:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto558
	LDI        R27, 7
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto558:
	BRNE       L_IHMTCV1_0_iljiCompleto559
	JMP        L_IHMTCV1_0_iljiCompleto24
L_IHMTCV1_0_iljiCompleto559:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto560
	LDI        R27, 8
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto560:
	BRNE       L_IHMTCV1_0_iljiCompleto561
	JMP        L_IHMTCV1_0_iljiCompleto27
L_IHMTCV1_0_iljiCompleto561:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto562
	LDI        R27, 9
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto562:
	BRNE       L_IHMTCV1_0_iljiCompleto563
	JMP        L_IHMTCV1_0_iljiCompleto30
L_IHMTCV1_0_iljiCompleto563:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto564
	LDI        R27, 10
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto564:
	BRNE       L_IHMTCV1_0_iljiCompleto565
	JMP        L_IHMTCV1_0_iljiCompleto33
L_IHMTCV1_0_iljiCompleto565:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto566
	LDI        R27, 11
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto566:
	BRNE       L_IHMTCV1_0_iljiCompleto567
	JMP        L_IHMTCV1_0_iljiCompleto36
L_IHMTCV1_0_iljiCompleto567:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto568
	LDI        R27, 12
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto568:
	BRNE       L_IHMTCV1_0_iljiCompleto569
	JMP        L_IHMTCV1_0_iljiCompleto39
L_IHMTCV1_0_iljiCompleto569:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto570
	LDI        R27, 13
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto570:
	BRNE       L_IHMTCV1_0_iljiCompleto571
	JMP        L_IHMTCV1_0_iljiCompleto42
L_IHMTCV1_0_iljiCompleto571:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto572
	LDI        R27, 14
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto572:
	BRNE       L_IHMTCV1_0_iljiCompleto573
	JMP        L_IHMTCV1_0_iljiCompleto45
L_IHMTCV1_0_iljiCompleto573:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto574
	LDI        R27, 15
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto574:
	BRNE       L_IHMTCV1_0_iljiCompleto575
	JMP        L_IHMTCV1_0_iljiCompleto48
L_IHMTCV1_0_iljiCompleto575:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto576
	LDI        R27, 16
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto576:
	BRNE       L_IHMTCV1_0_iljiCompleto577
	JMP        L_IHMTCV1_0_iljiCompleto51
L_IHMTCV1_0_iljiCompleto577:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto578
	LDI        R27, 17
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto578:
	BRNE       L_IHMTCV1_0_iljiCompleto579
	JMP        L_IHMTCV1_0_iljiCompleto54
L_IHMTCV1_0_iljiCompleto579:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto580
	LDI        R27, 18
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto580:
	BRNE       L_IHMTCV1_0_iljiCompleto581
	JMP        L_IHMTCV1_0_iljiCompleto57
L_IHMTCV1_0_iljiCompleto581:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto582
	LDI        R27, 19
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto582:
	BRNE       L_IHMTCV1_0_iljiCompleto583
	JMP        L_IHMTCV1_0_iljiCompleto60
L_IHMTCV1_0_iljiCompleto583:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto584
	LDI        R27, 20
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto584:
	BRNE       L_IHMTCV1_0_iljiCompleto585
	JMP        L_IHMTCV1_0_iljiCompleto63
L_IHMTCV1_0_iljiCompleto585:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto586
	LDI        R27, 21
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto586:
	BRNE       L_IHMTCV1_0_iljiCompleto587
	JMP        L_IHMTCV1_0_iljiCompleto66
L_IHMTCV1_0_iljiCompleto587:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto588
	LDI        R27, 22
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto588:
	BRNE       L_IHMTCV1_0_iljiCompleto589
	JMP        L_IHMTCV1_0_iljiCompleto69
L_IHMTCV1_0_iljiCompleto589:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto590
	LDI        R27, 23
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto590:
	BRNE       L_IHMTCV1_0_iljiCompleto591
	JMP        L_IHMTCV1_0_iljiCompleto72
L_IHMTCV1_0_iljiCompleto591:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto592
	LDI        R27, 24
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto592:
	BRNE       L_IHMTCV1_0_iljiCompleto593
	JMP        L_IHMTCV1_0_iljiCompleto75
L_IHMTCV1_0_iljiCompleto593:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto594
	LDI        R27, 25
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto594:
	BRNE       L_IHMTCV1_0_iljiCompleto595
	JMP        L_IHMTCV1_0_iljiCompleto78
L_IHMTCV1_0_iljiCompleto595:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto596
	LDI        R27, 26
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto596:
	BRNE       L_IHMTCV1_0_iljiCompleto597
	JMP        L_IHMTCV1_0_iljiCompleto81
L_IHMTCV1_0_iljiCompleto597:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto598
	LDI        R27, 27
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto598:
	BRNE       L_IHMTCV1_0_iljiCompleto599
	JMP        L_IHMTCV1_0_iljiCompleto84
L_IHMTCV1_0_iljiCompleto599:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto600
	LDI        R27, 28
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto600:
	BRNE       L_IHMTCV1_0_iljiCompleto601
	JMP        L_IHMTCV1_0_iljiCompleto87
L_IHMTCV1_0_iljiCompleto601:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto602
	LDI        R27, 29
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto602:
	BRNE       L_IHMTCV1_0_iljiCompleto603
	JMP        L_IHMTCV1_0_iljiCompleto90
L_IHMTCV1_0_iljiCompleto603:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto604
	LDI        R27, 30
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto604:
	BRNE       L_IHMTCV1_0_iljiCompleto605
	JMP        L_IHMTCV1_0_iljiCompleto93
L_IHMTCV1_0_iljiCompleto605:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto606
	LDI        R27, 31
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto606:
	BRNE       L_IHMTCV1_0_iljiCompleto607
	JMP        L_IHMTCV1_0_iljiCompleto96
L_IHMTCV1_0_iljiCompleto607:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto608
	LDI        R27, 32
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto608:
	BRNE       L_IHMTCV1_0_iljiCompleto609
	JMP        L_IHMTCV1_0_iljiCompleto99
L_IHMTCV1_0_iljiCompleto609:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto610
	LDI        R27, 33
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto610:
	BRNE       L_IHMTCV1_0_iljiCompleto611
	JMP        L_IHMTCV1_0_iljiCompleto102
L_IHMTCV1_0_iljiCompleto611:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto612
	LDI        R27, 34
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto612:
	BRNE       L_IHMTCV1_0_iljiCompleto613
	JMP        L_IHMTCV1_0_iljiCompleto105
L_IHMTCV1_0_iljiCompleto613:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto614
	LDI        R27, 35
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto614:
	BRNE       L_IHMTCV1_0_iljiCompleto615
	JMP        L_IHMTCV1_0_iljiCompleto108
L_IHMTCV1_0_iljiCompleto615:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto616
	LDI        R27, 36
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto616:
	BRNE       L_IHMTCV1_0_iljiCompleto617
	JMP        L_IHMTCV1_0_iljiCompleto111
L_IHMTCV1_0_iljiCompleto617:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto618
	LDI        R27, 37
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto618:
	BRNE       L_IHMTCV1_0_iljiCompleto619
	JMP        L_IHMTCV1_0_iljiCompleto114
L_IHMTCV1_0_iljiCompleto619:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto620
	LDI        R27, 38
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto620:
	BRNE       L_IHMTCV1_0_iljiCompleto621
	JMP        L_IHMTCV1_0_iljiCompleto117
L_IHMTCV1_0_iljiCompleto621:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto622
	LDI        R27, 39
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto622:
	BRNE       L_IHMTCV1_0_iljiCompleto623
	JMP        L_IHMTCV1_0_iljiCompleto120
L_IHMTCV1_0_iljiCompleto623:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto624
	LDI        R27, 40
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto624:
	BRNE       L_IHMTCV1_0_iljiCompleto625
	JMP        L_IHMTCV1_0_iljiCompleto123
L_IHMTCV1_0_iljiCompleto625:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto626
	LDI        R27, 41
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto626:
	BRNE       L_IHMTCV1_0_iljiCompleto627
	JMP        L_IHMTCV1_0_iljiCompleto126
L_IHMTCV1_0_iljiCompleto627:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto628
	LDI        R27, 42
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto628:
	BRNE       L_IHMTCV1_0_iljiCompleto629
	JMP        L_IHMTCV1_0_iljiCompleto129
L_IHMTCV1_0_iljiCompleto629:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto630
	LDI        R27, 43
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto630:
	BRNE       L_IHMTCV1_0_iljiCompleto631
	JMP        L_IHMTCV1_0_iljiCompleto132
L_IHMTCV1_0_iljiCompleto631:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto632
	LDI        R27, 44
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto632:
	BRNE       L_IHMTCV1_0_iljiCompleto633
	JMP        L_IHMTCV1_0_iljiCompleto135
L_IHMTCV1_0_iljiCompleto633:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto634
	LDI        R27, 45
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto634:
	BRNE       L_IHMTCV1_0_iljiCompleto635
	JMP        L_IHMTCV1_0_iljiCompleto138
L_IHMTCV1_0_iljiCompleto635:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto636
	LDI        R27, 46
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto636:
	BRNE       L_IHMTCV1_0_iljiCompleto637
	JMP        L_IHMTCV1_0_iljiCompleto141
L_IHMTCV1_0_iljiCompleto637:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto638
	LDI        R27, 47
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto638:
	BRNE       L_IHMTCV1_0_iljiCompleto639
	JMP        L_IHMTCV1_0_iljiCompleto144
L_IHMTCV1_0_iljiCompleto639:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto640
	LDI        R27, 48
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto640:
	BRNE       L_IHMTCV1_0_iljiCompleto641
	JMP        L_IHMTCV1_0_iljiCompleto147
L_IHMTCV1_0_iljiCompleto641:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljiCompleto642
	LDI        R27, 49
	CP         R2, R27
L_IHMTCV1_0_iljiCompleto642:
	BRNE       L_IHMTCV1_0_iljiCompleto643
	JMP        L_IHMTCV1_0_iljiCompleto150
L_IHMTCV1_0_iljiCompleto643:
L_IHMTCV1_0_iljiCompleto5:
;iljin_0.h,359 :: 		return count , PINO;
	MOVW       R16, R4
;iljin_0.h,360 :: 		}
L_end_iljiCompleto:
	RET
; end of IHMTCV1_0_iljiCompleto

IHMTCV1_0_iljinIHM:

;iljin_0.h,363 :: 		static int iljinIHM (int count, int *PINO){
;iljin_0.h,366 :: 		switch (count){
	JMP        L_IHMTCV1_0_iljinIHM153
;iljin_0.h,369 :: 		case 1:
L_IHMTCV1_0_iljinIHM155:
;iljin_0.h,370 :: 		PORTE = 0b11010001;
	LDI        R27, 209
	OUT        PORTE+0, R27
;iljin_0.h,371 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,372 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM156:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM156
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM156
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM156
;iljin_0.h,373 :: 		PINO[1] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 2
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,374 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,376 :: 		case 2:
L_IHMTCV1_0_iljinIHM158:
;iljin_0.h,377 :: 		PORTE = 0b11010010;
	LDI        R27, 210
	OUT        PORTE+0, R27
;iljin_0.h,378 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,379 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM159:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM159
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM159
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM159
;iljin_0.h,380 :: 		PINO[2] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 4
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,381 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,383 :: 		case 3:
L_IHMTCV1_0_iljinIHM161:
;iljin_0.h,384 :: 		PORTE = 0b11010011;
	LDI        R27, 211
	OUT        PORTE+0, R27
;iljin_0.h,385 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,386 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM162:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM162
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM162
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM162
;iljin_0.h,387 :: 		PINO[3] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 6
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,388 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,390 :: 		case 4:
L_IHMTCV1_0_iljinIHM164:
;iljin_0.h,391 :: 		PORTE = 0b11010100;
	LDI        R27, 212
	OUT        PORTE+0, R27
;iljin_0.h,392 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,393 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM165:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM165
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM165
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM165
;iljin_0.h,394 :: 		PINO[4] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 8
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,395 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,397 :: 		case 5:
L_IHMTCV1_0_iljinIHM167:
;iljin_0.h,398 :: 		PORTE = 0b11010101;
	LDI        R27, 213
	OUT        PORTE+0, R27
;iljin_0.h,399 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,400 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM168:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM168
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM168
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM168
;iljin_0.h,401 :: 		PINO[5] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 10
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,402 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,404 :: 		case 6:
L_IHMTCV1_0_iljinIHM170:
;iljin_0.h,405 :: 		PORTE = 0b11010110;
	LDI        R27, 214
	OUT        PORTE+0, R27
;iljin_0.h,406 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,407 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM171:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM171
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM171
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM171
;iljin_0.h,408 :: 		PINO[6] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 12
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,409 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,411 :: 		case 7:
L_IHMTCV1_0_iljinIHM173:
;iljin_0.h,412 :: 		PORTE = 0b11010111;
	LDI        R27, 215
	OUT        PORTE+0, R27
;iljin_0.h,413 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,414 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM174:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM174
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM174
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM174
;iljin_0.h,415 :: 		PINO[7] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 14
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,416 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,418 :: 		case 8:
L_IHMTCV1_0_iljinIHM176:
;iljin_0.h,419 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;iljin_0.h,420 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,421 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM177:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM177
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM177
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM177
;iljin_0.h,422 :: 		PINO[8] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 16
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,423 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,425 :: 		case 9:
L_IHMTCV1_0_iljinIHM179:
;iljin_0.h,426 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;iljin_0.h,427 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,428 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM180:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM180
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM180
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM180
;iljin_0.h,429 :: 		PINO[9] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 18
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,430 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,432 :: 		case 10:
L_IHMTCV1_0_iljinIHM182:
;iljin_0.h,433 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;iljin_0.h,434 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,435 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIHM183:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIHM183
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIHM183
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIHM183
;iljin_0.h,436 :: 		PINO[10] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 20
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,437 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,439 :: 		}
	JMP        L_IHMTCV1_0_iljinIHM154
L_IHMTCV1_0_iljinIHM153:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM645
	LDI        R27, 1
	CP         R2, R27
L_IHMTCV1_0_iljinIHM645:
	BRNE       L_IHMTCV1_0_iljinIHM646
	JMP        L_IHMTCV1_0_iljinIHM155
L_IHMTCV1_0_iljinIHM646:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM647
	LDI        R27, 2
	CP         R2, R27
L_IHMTCV1_0_iljinIHM647:
	BRNE       L_IHMTCV1_0_iljinIHM648
	JMP        L_IHMTCV1_0_iljinIHM158
L_IHMTCV1_0_iljinIHM648:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM649
	LDI        R27, 3
	CP         R2, R27
L_IHMTCV1_0_iljinIHM649:
	BRNE       L_IHMTCV1_0_iljinIHM650
	JMP        L_IHMTCV1_0_iljinIHM161
L_IHMTCV1_0_iljinIHM650:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM651
	LDI        R27, 4
	CP         R2, R27
L_IHMTCV1_0_iljinIHM651:
	BRNE       L_IHMTCV1_0_iljinIHM652
	JMP        L_IHMTCV1_0_iljinIHM164
L_IHMTCV1_0_iljinIHM652:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM653
	LDI        R27, 5
	CP         R2, R27
L_IHMTCV1_0_iljinIHM653:
	BRNE       L_IHMTCV1_0_iljinIHM654
	JMP        L_IHMTCV1_0_iljinIHM167
L_IHMTCV1_0_iljinIHM654:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM655
	LDI        R27, 6
	CP         R2, R27
L_IHMTCV1_0_iljinIHM655:
	BRNE       L_IHMTCV1_0_iljinIHM656
	JMP        L_IHMTCV1_0_iljinIHM170
L_IHMTCV1_0_iljinIHM656:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM657
	LDI        R27, 7
	CP         R2, R27
L_IHMTCV1_0_iljinIHM657:
	BRNE       L_IHMTCV1_0_iljinIHM658
	JMP        L_IHMTCV1_0_iljinIHM173
L_IHMTCV1_0_iljinIHM658:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM659
	LDI        R27, 8
	CP         R2, R27
L_IHMTCV1_0_iljinIHM659:
	BRNE       L_IHMTCV1_0_iljinIHM660
	JMP        L_IHMTCV1_0_iljinIHM176
L_IHMTCV1_0_iljinIHM660:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM661
	LDI        R27, 9
	CP         R2, R27
L_IHMTCV1_0_iljinIHM661:
	BRNE       L_IHMTCV1_0_iljinIHM662
	JMP        L_IHMTCV1_0_iljinIHM179
L_IHMTCV1_0_iljinIHM662:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIHM663
	LDI        R27, 10
	CP         R2, R27
L_IHMTCV1_0_iljinIHM663:
	BRNE       L_IHMTCV1_0_iljinIHM664
	JMP        L_IHMTCV1_0_iljinIHM182
L_IHMTCV1_0_iljinIHM664:
L_IHMTCV1_0_iljinIHM154:
;iljin_0.h,441 :: 		return count , PINO;
	MOVW       R16, R4
;iljin_0.h,442 :: 		}
L_end_iljinIHM:
	RET
; end of IHMTCV1_0_iljinIHM

IHMTCV1_0_iljinIO:

;iljin_0.h,444 :: 		static int iljinIO(int count, int *PINO){
;iljin_0.h,446 :: 		switch (count){
	JMP        L_IHMTCV1_0_iljinIO185
;iljin_0.h,448 :: 		case 1:
L_IHMTCV1_0_iljinIO187:
;iljin_0.h,449 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;iljin_0.h,450 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,451 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO188:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO188
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO188
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO188
;iljin_0.h,452 :: 		PINO[1] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 2
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,453 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,455 :: 		case 2:
L_IHMTCV1_0_iljinIO190:
;iljin_0.h,456 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;iljin_0.h,457 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,458 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO191:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO191
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO191
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO191
;iljin_0.h,459 :: 		PINO[2] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 4
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,460 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,462 :: 		case 3:
L_IHMTCV1_0_iljinIO193:
;iljin_0.h,463 :: 		PORTE = 0b01010101;
	LDI        R27, 85
	OUT        PORTE+0, R27
;iljin_0.h,464 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,465 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO194:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO194
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO194
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO194
;iljin_0.h,466 :: 		PINO[3] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 6
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,467 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,469 :: 		case 4:
L_IHMTCV1_0_iljinIO196:
;iljin_0.h,470 :: 		PORTE = 0b01010110;
	LDI        R27, 86
	OUT        PORTE+0, R27
;iljin_0.h,471 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,472 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO197:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO197
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO197
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO197
;iljin_0.h,473 :: 		PINO[4] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 8
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,474 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,476 :: 		case 5:
L_IHMTCV1_0_iljinIO199:
;iljin_0.h,477 :: 		PORTE = 0b01010111;
	LDI        R27, 87
	OUT        PORTE+0, R27
;iljin_0.h,478 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;iljin_0.h,479 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO200:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO200
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO200
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO200
;iljin_0.h,480 :: 		PINO[5] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 10
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,481 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,483 :: 		case 6:
L_IHMTCV1_0_iljinIO202:
;iljin_0.h,484 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;iljin_0.h,485 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,486 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO203:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO203
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO203
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO203
;iljin_0.h,487 :: 		PINO[6] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 12
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,488 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,490 :: 		case 7:
L_IHMTCV1_0_iljinIO205:
;iljin_0.h,491 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;iljin_0.h,492 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,493 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO206:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO206
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO206
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO206
;iljin_0.h,494 :: 		PINO[7] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 14
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,495 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,497 :: 		case 8:
L_IHMTCV1_0_iljinIO208:
;iljin_0.h,498 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;iljin_0.h,499 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,500 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO209:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO209
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO209
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO209
;iljin_0.h,501 :: 		PINO[8] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 16
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,502 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,504 :: 		case 9:
L_IHMTCV1_0_iljinIO211:
;iljin_0.h,505 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;iljin_0.h,506 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,507 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO212:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO212
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO212
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO212
;iljin_0.h,508 :: 		PINO[9] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 18
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,509 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,511 :: 		case 10:
L_IHMTCV1_0_iljinIO214:
;iljin_0.h,512 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;iljin_0.h,513 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;iljin_0.h,514 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinIO215:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinIO215
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinIO215
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinIO215
;iljin_0.h,515 :: 		PINO[10] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 20
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,516 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,518 :: 		}
	JMP        L_IHMTCV1_0_iljinIO186
L_IHMTCV1_0_iljinIO185:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO666
	LDI        R27, 1
	CP         R2, R27
L_IHMTCV1_0_iljinIO666:
	BRNE       L_IHMTCV1_0_iljinIO667
	JMP        L_IHMTCV1_0_iljinIO187
L_IHMTCV1_0_iljinIO667:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO668
	LDI        R27, 2
	CP         R2, R27
L_IHMTCV1_0_iljinIO668:
	BRNE       L_IHMTCV1_0_iljinIO669
	JMP        L_IHMTCV1_0_iljinIO190
L_IHMTCV1_0_iljinIO669:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO670
	LDI        R27, 3
	CP         R2, R27
L_IHMTCV1_0_iljinIO670:
	BRNE       L_IHMTCV1_0_iljinIO671
	JMP        L_IHMTCV1_0_iljinIO193
L_IHMTCV1_0_iljinIO671:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO672
	LDI        R27, 4
	CP         R2, R27
L_IHMTCV1_0_iljinIO672:
	BRNE       L_IHMTCV1_0_iljinIO673
	JMP        L_IHMTCV1_0_iljinIO196
L_IHMTCV1_0_iljinIO673:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO674
	LDI        R27, 5
	CP         R2, R27
L_IHMTCV1_0_iljinIO674:
	BRNE       L_IHMTCV1_0_iljinIO675
	JMP        L_IHMTCV1_0_iljinIO199
L_IHMTCV1_0_iljinIO675:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO676
	LDI        R27, 6
	CP         R2, R27
L_IHMTCV1_0_iljinIO676:
	BRNE       L_IHMTCV1_0_iljinIO677
	JMP        L_IHMTCV1_0_iljinIO202
L_IHMTCV1_0_iljinIO677:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO678
	LDI        R27, 7
	CP         R2, R27
L_IHMTCV1_0_iljinIO678:
	BRNE       L_IHMTCV1_0_iljinIO679
	JMP        L_IHMTCV1_0_iljinIO205
L_IHMTCV1_0_iljinIO679:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO680
	LDI        R27, 8
	CP         R2, R27
L_IHMTCV1_0_iljinIO680:
	BRNE       L_IHMTCV1_0_iljinIO681
	JMP        L_IHMTCV1_0_iljinIO208
L_IHMTCV1_0_iljinIO681:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO682
	LDI        R27, 9
	CP         R2, R27
L_IHMTCV1_0_iljinIO682:
	BRNE       L_IHMTCV1_0_iljinIO683
	JMP        L_IHMTCV1_0_iljinIO211
L_IHMTCV1_0_iljinIO683:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinIO684
	LDI        R27, 10
	CP         R2, R27
L_IHMTCV1_0_iljinIO684:
	BRNE       L_IHMTCV1_0_iljinIO685
	JMP        L_IHMTCV1_0_iljinIO214
L_IHMTCV1_0_iljinIO685:
L_IHMTCV1_0_iljinIO186:
;iljin_0.h,520 :: 		return count , PINO;
	MOVW       R16, R4
;iljin_0.h,521 :: 		}
L_end_iljinIO:
	RET
; end of IHMTCV1_0_iljinIO

IHMTCV1_0_iljinCaboControle:

;iljin_0.h,524 :: 		static int iljinCaboControle(int count, int *PINO){
;iljin_0.h,526 :: 		switch (count){
	JMP        L_IHMTCV1_0_iljinCaboControle217
;iljin_0.h,527 :: 		case 1://PINO 50
L_IHMTCV1_0_iljinCaboControle219:
;iljin_0.h,528 :: 		PORTB = 0b00010101;
	LDI        R27, 21
	OUT        PORTB+0, R27
;iljin_0.h,529 :: 		PORTE = 0b01001000;
	LDI        R27, 72
	OUT        PORTE+0, R27
;iljin_0.h,530 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle220:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle220
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle220
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle220
;iljin_0.h,531 :: 		PINO[1] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 2
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,532 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,534 :: 		case 2://PINO 51
L_IHMTCV1_0_iljinCaboControle222:
;iljin_0.h,535 :: 		PORTE = 0b01001001;
	LDI        R27, 73
	OUT        PORTE+0, R27
;iljin_0.h,536 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle223:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle223
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle223
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle223
;iljin_0.h,537 :: 		PINO[2] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 4
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,538 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,541 :: 		case 3://PINO 52
L_IHMTCV1_0_iljinCaboControle225:
;iljin_0.h,542 :: 		PORTE = 0b01001010;
	LDI        R27, 74
	OUT        PORTE+0, R27
;iljin_0.h,543 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle226:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle226
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle226
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle226
;iljin_0.h,544 :: 		PINO[3] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 6
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,545 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,548 :: 		case 4://PINO 53
L_IHMTCV1_0_iljinCaboControle228:
;iljin_0.h,549 :: 		PORTE = 0b01001011;
	LDI        R27, 75
	OUT        PORTE+0, R27
;iljin_0.h,550 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle229:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle229
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle229
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle229
;iljin_0.h,551 :: 		PINO[4] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 8
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,552 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,554 :: 		case 5://PINO 91
L_IHMTCV1_0_iljinCaboControle231:
;iljin_0.h,555 :: 		PORTE = 0b01001100;
	LDI        R27, 76
	OUT        PORTE+0, R27
;iljin_0.h,556 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle232:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle232
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle232
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle232
;iljin_0.h,557 :: 		PINO[5] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 10
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,558 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,560 :: 		case 6://PINO 92
L_IHMTCV1_0_iljinCaboControle234:
;iljin_0.h,561 :: 		PORTE = 0b01001101;
	LDI        R27, 77
	OUT        PORTE+0, R27
;iljin_0.h,562 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle235:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle235
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle235
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle235
;iljin_0.h,563 :: 		PINO[6] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 12
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,564 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,566 :: 		case 7://PINO 93
L_IHMTCV1_0_iljinCaboControle237:
;iljin_0.h,567 :: 		PORTE = 0b01001110;
	LDI        R27, 78
	OUT        PORTE+0, R27
;iljin_0.h,568 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle238:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle238
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle238
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle238
;iljin_0.h,569 :: 		PINO[7] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 14
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,570 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,573 :: 		case 8://PINO 71
L_IHMTCV1_0_iljinCaboControle240:
;iljin_0.h,574 :: 		PORTE = 0b01001111;
	LDI        R27, 79
	OUT        PORTE+0, R27
;iljin_0.h,575 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle241:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle241
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle241
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle241
;iljin_0.h,576 :: 		PINO[8] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 16
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,577 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,580 :: 		case 9://PINO 72
L_IHMTCV1_0_iljinCaboControle243:
;iljin_0.h,581 :: 		PORTE = 0b00110000;
	LDI        R27, 48
	OUT        PORTE+0, R27
;iljin_0.h,582 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle244:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle244
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle244
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle244
;iljin_0.h,583 :: 		PINO[9] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 18
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,584 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,586 :: 		case 10://PINO 73
L_IHMTCV1_0_iljinCaboControle246:
;iljin_0.h,587 :: 		PORTE = 0b00110001;
	LDI        R27, 49
	OUT        PORTE+0, R27
;iljin_0.h,588 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle247:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle247
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle247
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle247
;iljin_0.h,589 :: 		PINO[10] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 20
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,590 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,592 :: 		case 11://PINO 74
L_IHMTCV1_0_iljinCaboControle249:
;iljin_0.h,593 :: 		PORTE = 0b00110010;
	LDI        R27, 50
	OUT        PORTE+0, R27
;iljin_0.h,594 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle250:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle250
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle250
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle250
;iljin_0.h,595 :: 		PINO[11] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 22
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,596 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,598 :: 		case 12://PINO 75
L_IHMTCV1_0_iljinCaboControle252:
;iljin_0.h,599 :: 		PORTE = 0b00110011;
	LDI        R27, 51
	OUT        PORTE+0, R27
;iljin_0.h,600 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle253:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle253
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle253
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle253
;iljin_0.h,601 :: 		PINO[12] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 24
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,602 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,604 :: 		case 13://PINO 76
L_IHMTCV1_0_iljinCaboControle255:
;iljin_0.h,605 :: 		PORTE = 0b00110100;
	LDI        R27, 52
	OUT        PORTE+0, R27
;iljin_0.h,606 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle256:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle256
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle256
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle256
;iljin_0.h,607 :: 		PINO[13] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 26
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,608 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,610 :: 		case 14://PINO 60
L_IHMTCV1_0_iljinCaboControle258:
;iljin_0.h,611 :: 		PORTE = 0b00110101;
	LDI        R27, 53
	OUT        PORTE+0, R27
;iljin_0.h,612 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle259:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle259
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle259
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle259
;iljin_0.h,613 :: 		PINO[14] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 28
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,614 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,616 :: 		case 15://PINO 61
L_IHMTCV1_0_iljinCaboControle261:
;iljin_0.h,617 :: 		PORTE = 0b00110110;
	LDI        R27, 54
	OUT        PORTE+0, R27
;iljin_0.h,618 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle262:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle262
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle262
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle262
;iljin_0.h,619 :: 		PINO[15] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 30
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,620 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,622 :: 		case 16://PINO 62
L_IHMTCV1_0_iljinCaboControle264:
;iljin_0.h,623 :: 		PORTE = 0b00110111;
	LDI        R27, 55
	OUT        PORTE+0, R27
;iljin_0.h,624 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle265:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle265
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle265
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle265
;iljin_0.h,625 :: 		PINO[16] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 32
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,626 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,628 :: 		case 17://PINO 63
L_IHMTCV1_0_iljinCaboControle267:
;iljin_0.h,629 :: 		PORTE = 0b11010000;
	LDI        R27, 208
	OUT        PORTE+0, R27
;iljin_0.h,630 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;iljin_0.h,631 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle268:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle268
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle268
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle268
;iljin_0.h,632 :: 		PINO[17] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 34
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,633 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,635 :: 		case 18://PINO 94
L_IHMTCV1_0_iljinCaboControle270:
;iljin_0.h,636 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;iljin_0.h,637 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle271:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle271
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle271
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle271
;iljin_0.h,638 :: 		PINO[18] = PINF &(1<<1);
	MOVW       R30, R4
	ADIW       R30, 36
	IN         R16, PINF+0
	ANDI       R16, 2
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,639 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,641 :: 		case 19://PINO 96
L_IHMTCV1_0_iljinCaboControle273:
;iljin_0.h,642 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;iljin_0.h,643 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle274:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle274
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle274
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle274
;iljin_0.h,644 :: 		PINO[19] = PINF &(1<<2);
	MOVW       R30, R4
	ADIW       R30, 38
	IN         R16, PINF+0
	ANDI       R16, 4
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,645 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,647 :: 		case 20://PINO 98
L_IHMTCV1_0_iljinCaboControle276:
;iljin_0.h,648 :: 		PORTF = PORTF |(1<<0);
	LDS        R16, PORTF+0
	ORI        R16, 1
	STS        PORTF+0, R16
;iljin_0.h,649 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle277:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle277
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle277
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle277
;iljin_0.h,650 :: 		PINO[20] = PINF &(1<<3);
	MOVW       R30, R4
	ADIW       R30, 40
	IN         R16, PINF+0
	ANDI       R16, 8
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,651 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,653 :: 		case 21://PINO 77
L_IHMTCV1_0_iljinCaboControle279:
;iljin_0.h,654 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,655 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle280:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle280
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle280
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle280
;iljin_0.h,656 :: 		PINO[21] = PINC &(1<<1);
	MOVW       R30, R4
	ADIW       R30, 42
	IN         R16, PINC+0
	ANDI       R16, 2
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,657 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,660 :: 		case 22://PINO 77
L_IHMTCV1_0_iljinCaboControle282:
;iljin_0.h,661 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,662 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle283:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle283
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle283
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle283
;iljin_0.h,663 :: 		PINO[22] = PINC & (1<<2);
	MOVW       R30, R4
	ADIW       R30, 44
	IN         R16, PINC+0
	ANDI       R16, 4
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,664 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,666 :: 		case 23://PINO 77
L_IHMTCV1_0_iljinCaboControle285:
;iljin_0.h,667 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,668 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle286:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle286
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle286
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle286
;iljin_0.h,669 :: 		PINO[23] = PINC & (1<<3);
	MOVW       R30, R4
	ADIW       R30, 46
	IN         R16, PINC+0
	ANDI       R16, 8
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,670 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,672 :: 		case 24://PINO 77
L_IHMTCV1_0_iljinCaboControle288:
;iljin_0.h,673 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,674 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle289:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle289
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle289
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle289
;iljin_0.h,675 :: 		PINO[24] = PINC & (1<<4);
	MOVW       R30, R4
	ADIW       R30, 48
	IN         R16, PINC+0
	ANDI       R16, 16
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,676 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,679 :: 		case 25://PINO 77
L_IHMTCV1_0_iljinCaboControle291:
;iljin_0.h,680 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,681 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle292:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle292
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle292
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle292
;iljin_0.h,682 :: 		PINO[25] = PINC & (1<<5);
	MOVW       R30, R4
	ADIW       R30, 50
	IN         R16, PINC+0
	ANDI       R16, 32
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,683 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,685 :: 		case 26://PINO 77
L_IHMTCV1_0_iljinCaboControle294:
;iljin_0.h,686 :: 		PORTC = PORTC |(1<<0);
	IN         R16, PORTC+0
	ORI        R16, 1
	OUT        PORTC+0, R16
;iljin_0.h,687 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle295:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle295
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle295
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle295
;iljin_0.h,688 :: 		PINO[26] = PINC & (1<<6);
	MOVW       R30, R4
	ADIW       R30, 52
	IN         R16, PINC+0
	ANDI       R16, 64
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,689 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,691 :: 		case 27://PINO 64
L_IHMTCV1_0_iljinCaboControle297:
;iljin_0.h,692 :: 		PORTF = PORTF |(1<<4);
	LDS        R27, PORTF+0
	SBR        R27, 16
	STS        PORTF+0, R27
;iljin_0.h,693 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle298:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle298
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle298
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle298
;iljin_0.h,694 :: 		PINO[27] = PINF &(1<<5);
	MOVW       R30, R4
	ADIW       R30, 54
	IN         R16, PINF+0
	ANDI       R16, 32
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,695 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,697 :: 		case 28://PINO 64
L_IHMTCV1_0_iljinCaboControle300:
;iljin_0.h,698 :: 		PORTF = PORTF |(1<<4);
	LDS        R16, PORTF+0
	ORI        R16, 16
	STS        PORTF+0, R16
;iljin_0.h,699 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle301:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle301
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle301
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle301
;iljin_0.h,700 :: 		PINO[28] = PINF &(1<<6);
	MOVW       R30, R4
	ADIW       R30, 56
	IN         R16, PINF+0
	ANDI       R16, 64
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,701 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,703 :: 		case 29: //PINO 64
L_IHMTCV1_0_iljinCaboControle303:
;iljin_0.h,704 :: 		PORTF = PORTF |(1<<4);
	LDS        R16, PORTF+0
	ORI        R16, 16
	STS        PORTF+0, R16
;iljin_0.h,705 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_iljinCaboControle304:
	DEC        R16
	BRNE       L_IHMTCV1_0_iljinCaboControle304
	DEC        R17
	BRNE       L_IHMTCV1_0_iljinCaboControle304
	DEC        R18
	BRNE       L_IHMTCV1_0_iljinCaboControle304
;iljin_0.h,706 :: 		PINO[29] = PINF &(1<<7);
	MOVW       R30, R4
	ADIW       R30, 58
	IN         R16, PINF+0
	ANDI       R16, 128
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;iljin_0.h,707 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;iljin_0.h,708 :: 		}
	JMP        L_IHMTCV1_0_iljinCaboControle218
L_IHMTCV1_0_iljinCaboControle217:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle687
	LDI        R27, 1
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle687:
	BRNE       L_IHMTCV1_0_iljinCaboControle688
	JMP        L_IHMTCV1_0_iljinCaboControle219
L_IHMTCV1_0_iljinCaboControle688:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle689
	LDI        R27, 2
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle689:
	BRNE       L_IHMTCV1_0_iljinCaboControle690
	JMP        L_IHMTCV1_0_iljinCaboControle222
L_IHMTCV1_0_iljinCaboControle690:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle691
	LDI        R27, 3
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle691:
	BRNE       L_IHMTCV1_0_iljinCaboControle692
	JMP        L_IHMTCV1_0_iljinCaboControle225
L_IHMTCV1_0_iljinCaboControle692:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle693
	LDI        R27, 4
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle693:
	BRNE       L_IHMTCV1_0_iljinCaboControle694
	JMP        L_IHMTCV1_0_iljinCaboControle228
L_IHMTCV1_0_iljinCaboControle694:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle695
	LDI        R27, 5
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle695:
	BRNE       L_IHMTCV1_0_iljinCaboControle696
	JMP        L_IHMTCV1_0_iljinCaboControle231
L_IHMTCV1_0_iljinCaboControle696:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle697
	LDI        R27, 6
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle697:
	BRNE       L_IHMTCV1_0_iljinCaboControle698
	JMP        L_IHMTCV1_0_iljinCaboControle234
L_IHMTCV1_0_iljinCaboControle698:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle699
	LDI        R27, 7
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle699:
	BRNE       L_IHMTCV1_0_iljinCaboControle700
	JMP        L_IHMTCV1_0_iljinCaboControle237
L_IHMTCV1_0_iljinCaboControle700:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle701
	LDI        R27, 8
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle701:
	BRNE       L_IHMTCV1_0_iljinCaboControle702
	JMP        L_IHMTCV1_0_iljinCaboControle240
L_IHMTCV1_0_iljinCaboControle702:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle703
	LDI        R27, 9
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle703:
	BRNE       L_IHMTCV1_0_iljinCaboControle704
	JMP        L_IHMTCV1_0_iljinCaboControle243
L_IHMTCV1_0_iljinCaboControle704:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle705
	LDI        R27, 10
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle705:
	BRNE       L_IHMTCV1_0_iljinCaboControle706
	JMP        L_IHMTCV1_0_iljinCaboControle246
L_IHMTCV1_0_iljinCaboControle706:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle707
	LDI        R27, 11
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle707:
	BRNE       L_IHMTCV1_0_iljinCaboControle708
	JMP        L_IHMTCV1_0_iljinCaboControle249
L_IHMTCV1_0_iljinCaboControle708:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle709
	LDI        R27, 12
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle709:
	BRNE       L_IHMTCV1_0_iljinCaboControle710
	JMP        L_IHMTCV1_0_iljinCaboControle252
L_IHMTCV1_0_iljinCaboControle710:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle711
	LDI        R27, 13
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle711:
	BRNE       L_IHMTCV1_0_iljinCaboControle712
	JMP        L_IHMTCV1_0_iljinCaboControle255
L_IHMTCV1_0_iljinCaboControle712:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle713
	LDI        R27, 14
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle713:
	BRNE       L_IHMTCV1_0_iljinCaboControle714
	JMP        L_IHMTCV1_0_iljinCaboControle258
L_IHMTCV1_0_iljinCaboControle714:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle715
	LDI        R27, 15
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle715:
	BRNE       L_IHMTCV1_0_iljinCaboControle716
	JMP        L_IHMTCV1_0_iljinCaboControle261
L_IHMTCV1_0_iljinCaboControle716:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle717
	LDI        R27, 16
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle717:
	BRNE       L_IHMTCV1_0_iljinCaboControle718
	JMP        L_IHMTCV1_0_iljinCaboControle264
L_IHMTCV1_0_iljinCaboControle718:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle719
	LDI        R27, 17
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle719:
	BRNE       L_IHMTCV1_0_iljinCaboControle720
	JMP        L_IHMTCV1_0_iljinCaboControle267
L_IHMTCV1_0_iljinCaboControle720:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle721
	LDI        R27, 18
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle721:
	BRNE       L_IHMTCV1_0_iljinCaboControle722
	JMP        L_IHMTCV1_0_iljinCaboControle270
L_IHMTCV1_0_iljinCaboControle722:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle723
	LDI        R27, 19
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle723:
	BRNE       L_IHMTCV1_0_iljinCaboControle724
	JMP        L_IHMTCV1_0_iljinCaboControle273
L_IHMTCV1_0_iljinCaboControle724:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle725
	LDI        R27, 20
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle725:
	BRNE       L_IHMTCV1_0_iljinCaboControle726
	JMP        L_IHMTCV1_0_iljinCaboControle276
L_IHMTCV1_0_iljinCaboControle726:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle727
	LDI        R27, 21
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle727:
	BRNE       L_IHMTCV1_0_iljinCaboControle728
	JMP        L_IHMTCV1_0_iljinCaboControle279
L_IHMTCV1_0_iljinCaboControle728:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle729
	LDI        R27, 22
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle729:
	BRNE       L_IHMTCV1_0_iljinCaboControle730
	JMP        L_IHMTCV1_0_iljinCaboControle282
L_IHMTCV1_0_iljinCaboControle730:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle731
	LDI        R27, 23
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle731:
	BRNE       L_IHMTCV1_0_iljinCaboControle732
	JMP        L_IHMTCV1_0_iljinCaboControle285
L_IHMTCV1_0_iljinCaboControle732:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle733
	LDI        R27, 24
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle733:
	BRNE       L_IHMTCV1_0_iljinCaboControle734
	JMP        L_IHMTCV1_0_iljinCaboControle288
L_IHMTCV1_0_iljinCaboControle734:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle735
	LDI        R27, 25
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle735:
	BRNE       L_IHMTCV1_0_iljinCaboControle736
	JMP        L_IHMTCV1_0_iljinCaboControle291
L_IHMTCV1_0_iljinCaboControle736:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle737
	LDI        R27, 26
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle737:
	BRNE       L_IHMTCV1_0_iljinCaboControle738
	JMP        L_IHMTCV1_0_iljinCaboControle294
L_IHMTCV1_0_iljinCaboControle738:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle739
	LDI        R27, 27
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle739:
	BRNE       L_IHMTCV1_0_iljinCaboControle740
	JMP        L_IHMTCV1_0_iljinCaboControle297
L_IHMTCV1_0_iljinCaboControle740:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle741
	LDI        R27, 28
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle741:
	BRNE       L_IHMTCV1_0_iljinCaboControle742
	JMP        L_IHMTCV1_0_iljinCaboControle300
L_IHMTCV1_0_iljinCaboControle742:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_iljinCaboControle743
	LDI        R27, 29
	CP         R2, R27
L_IHMTCV1_0_iljinCaboControle743:
	BRNE       L_IHMTCV1_0_iljinCaboControle744
	JMP        L_IHMTCV1_0_iljinCaboControle303
L_IHMTCV1_0_iljinCaboControle744:
L_IHMTCV1_0_iljinCaboControle218:
;iljin_0.h,710 :: 		return count , PINO;
	MOVW       R16, R4
;iljin_0.h,711 :: 		}
L_end_iljinCaboControle:
	RET
; end of IHMTCV1_0_iljinCaboControle

IHMTCV1_0_celescIO:

;celesc.h,3 :: 		static int celescIO (int count, int *PINO ){
;celesc.h,6 :: 		switch (count){
	JMP        L_IHMTCV1_0_celescIO306
;celesc.h,8 :: 		case 1:
L_IHMTCV1_0_celescIO308:
;celesc.h,9 :: 		PORTB = 0b00010101;
	LDI        R27, 21
	OUT        PORTB+0, R27
;celesc.h,10 :: 		PORTE = 0b01001000;
	LDI        R27, 72
	OUT        PORTE+0, R27
;celesc.h,11 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO309:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO309
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO309
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO309
;celesc.h,12 :: 		PINO[1] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 2
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,13 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,15 :: 		case 2:
L_IHMTCV1_0_celescIO311:
;celesc.h,16 :: 		PORTE = 0b01001001;
	LDI        R27, 73
	OUT        PORTE+0, R27
;celesc.h,17 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO312:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO312
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO312
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO312
;celesc.h,18 :: 		PINO[2] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 4
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,19 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,22 :: 		case 3:
L_IHMTCV1_0_celescIO314:
;celesc.h,23 :: 		PORTE = 0b01001010;
	LDI        R27, 74
	OUT        PORTE+0, R27
;celesc.h,24 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO315:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO315
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO315
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO315
;celesc.h,25 :: 		PINO[3] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 6
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,26 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,29 :: 		case 4:
L_IHMTCV1_0_celescIO317:
;celesc.h,30 :: 		PORTE = 0b01001011;
	LDI        R27, 75
	OUT        PORTE+0, R27
;celesc.h,31 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO318:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO318
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO318
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO318
;celesc.h,32 :: 		PINO[4] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 8
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,33 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,35 :: 		case 5:
L_IHMTCV1_0_celescIO320:
;celesc.h,36 :: 		PORTE = 0b01001100;
	LDI        R27, 76
	OUT        PORTE+0, R27
;celesc.h,37 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO321:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO321
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO321
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO321
;celesc.h,38 :: 		PINO[5] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 10
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,39 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,41 :: 		case 6:
L_IHMTCV1_0_celescIO323:
;celesc.h,42 :: 		PORTE = 0b01001101;
	LDI        R27, 77
	OUT        PORTE+0, R27
;celesc.h,43 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO324:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO324
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO324
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO324
;celesc.h,44 :: 		PINO[6] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 12
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,45 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,47 :: 		case 7:
L_IHMTCV1_0_celescIO326:
;celesc.h,48 :: 		PORTE = 0b01001110;
	LDI        R27, 78
	OUT        PORTE+0, R27
;celesc.h,49 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO327:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO327
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO327
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO327
;celesc.h,50 :: 		PINO[7] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 14
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,51 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,54 :: 		case 8:
L_IHMTCV1_0_celescIO329:
;celesc.h,55 :: 		PORTE = 0b01001111;
	LDI        R27, 79
	OUT        PORTE+0, R27
;celesc.h,56 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO330:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO330
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO330
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO330
;celesc.h,57 :: 		PINO[8] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 16
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,58 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,61 :: 		case 9:
L_IHMTCV1_0_celescIO332:
;celesc.h,62 :: 		PORTE = 0b00110000;
	LDI        R27, 48
	OUT        PORTE+0, R27
;celesc.h,63 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO333:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO333
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO333
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO333
;celesc.h,64 :: 		PINO[9] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 18
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,65 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,67 :: 		case 10:
L_IHMTCV1_0_celescIO335:
;celesc.h,68 :: 		PORTE = 0b00110001;
	LDI        R27, 49
	OUT        PORTE+0, R27
;celesc.h,69 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO336:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO336
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO336
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO336
;celesc.h,70 :: 		PINO[10] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 20
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,71 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,73 :: 		case 11:
L_IHMTCV1_0_celescIO338:
;celesc.h,74 :: 		PORTE = 0b00110010;
	LDI        R27, 50
	OUT        PORTE+0, R27
;celesc.h,75 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO339:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO339
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO339
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO339
;celesc.h,76 :: 		PINO[11] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 22
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,77 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,79 :: 		case 12:
L_IHMTCV1_0_celescIO341:
;celesc.h,80 :: 		PORTE = 0b00110011;
	LDI        R27, 51
	OUT        PORTE+0, R27
;celesc.h,81 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO342:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO342
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO342
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO342
;celesc.h,82 :: 		PINO[12] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 24
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,83 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,85 :: 		case 13:
L_IHMTCV1_0_celescIO344:
;celesc.h,86 :: 		PORTE = 0b00110100;
	LDI        R27, 52
	OUT        PORTE+0, R27
;celesc.h,87 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO345:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO345
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO345
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO345
;celesc.h,88 :: 		PINO[13] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 26
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,89 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,91 :: 		case 14:
L_IHMTCV1_0_celescIO347:
;celesc.h,92 :: 		PORTE = 0b00110101;
	LDI        R27, 53
	OUT        PORTE+0, R27
;celesc.h,93 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO348:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO348
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO348
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO348
;celesc.h,94 :: 		PINO[14] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 28
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,95 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,97 :: 		case 15:
L_IHMTCV1_0_celescIO350:
;celesc.h,98 :: 		PORTE = 0b00110110;
	LDI        R27, 54
	OUT        PORTE+0, R27
;celesc.h,99 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO351:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO351
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO351
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO351
;celesc.h,100 :: 		PINO[15] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 30
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,101 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,103 :: 		case 16:
L_IHMTCV1_0_celescIO353:
;celesc.h,104 :: 		PORTE = 0b00110111;
	LDI        R27, 55
	OUT        PORTE+0, R27
;celesc.h,105 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO354:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO354
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO354
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO354
;celesc.h,106 :: 		PINO[16] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 32
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,107 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,109 :: 		case 17:
L_IHMTCV1_0_celescIO356:
;celesc.h,110 :: 		PORTE = 0b11010000;
	LDI        R27, 208
	OUT        PORTE+0, R27
;celesc.h,111 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;celesc.h,112 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO357:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO357
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO357
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO357
;celesc.h,113 :: 		PINO[17] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 34
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,114 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,117 :: 		case 18:
L_IHMTCV1_0_celescIO359:
;celesc.h,118 :: 		PORTE = 0b11010001;
	LDI        R27, 209
	OUT        PORTE+0, R27
;celesc.h,119 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;celesc.h,120 :: 		Delay_ms(tempo);
	LDI        R18, 8
	LDI        R17, 27
	LDI        R16, 40
L_IHMTCV1_0_celescIO360:
	DEC        R16
	BRNE       L_IHMTCV1_0_celescIO360
	DEC        R17
	BRNE       L_IHMTCV1_0_celescIO360
	DEC        R18
	BRNE       L_IHMTCV1_0_celescIO360
;celesc.h,121 :: 		PINO[18] = PING & (1<<0);
	MOVW       R30, R4
	ADIW       R30, 36
	LDS        R16, PING+0
	ANDI       R16, 1
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;celesc.h,122 :: 		count++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;celesc.h,125 :: 		}
	JMP        L_IHMTCV1_0_celescIO307
L_IHMTCV1_0_celescIO306:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO746
	LDI        R27, 1
	CP         R2, R27
L_IHMTCV1_0_celescIO746:
	BRNE       L_IHMTCV1_0_celescIO747
	JMP        L_IHMTCV1_0_celescIO308
L_IHMTCV1_0_celescIO747:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO748
	LDI        R27, 2
	CP         R2, R27
L_IHMTCV1_0_celescIO748:
	BRNE       L_IHMTCV1_0_celescIO749
	JMP        L_IHMTCV1_0_celescIO311
L_IHMTCV1_0_celescIO749:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO750
	LDI        R27, 3
	CP         R2, R27
L_IHMTCV1_0_celescIO750:
	BRNE       L_IHMTCV1_0_celescIO751
	JMP        L_IHMTCV1_0_celescIO314
L_IHMTCV1_0_celescIO751:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO752
	LDI        R27, 4
	CP         R2, R27
L_IHMTCV1_0_celescIO752:
	BRNE       L_IHMTCV1_0_celescIO753
	JMP        L_IHMTCV1_0_celescIO317
L_IHMTCV1_0_celescIO753:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO754
	LDI        R27, 5
	CP         R2, R27
L_IHMTCV1_0_celescIO754:
	BRNE       L_IHMTCV1_0_celescIO755
	JMP        L_IHMTCV1_0_celescIO320
L_IHMTCV1_0_celescIO755:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO756
	LDI        R27, 6
	CP         R2, R27
L_IHMTCV1_0_celescIO756:
	BRNE       L_IHMTCV1_0_celescIO757
	JMP        L_IHMTCV1_0_celescIO323
L_IHMTCV1_0_celescIO757:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO758
	LDI        R27, 7
	CP         R2, R27
L_IHMTCV1_0_celescIO758:
	BRNE       L_IHMTCV1_0_celescIO759
	JMP        L_IHMTCV1_0_celescIO326
L_IHMTCV1_0_celescIO759:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO760
	LDI        R27, 8
	CP         R2, R27
L_IHMTCV1_0_celescIO760:
	BRNE       L_IHMTCV1_0_celescIO761
	JMP        L_IHMTCV1_0_celescIO329
L_IHMTCV1_0_celescIO761:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO762
	LDI        R27, 9
	CP         R2, R27
L_IHMTCV1_0_celescIO762:
	BRNE       L_IHMTCV1_0_celescIO763
	JMP        L_IHMTCV1_0_celescIO332
L_IHMTCV1_0_celescIO763:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO764
	LDI        R27, 10
	CP         R2, R27
L_IHMTCV1_0_celescIO764:
	BRNE       L_IHMTCV1_0_celescIO765
	JMP        L_IHMTCV1_0_celescIO335
L_IHMTCV1_0_celescIO765:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO766
	LDI        R27, 11
	CP         R2, R27
L_IHMTCV1_0_celescIO766:
	BRNE       L_IHMTCV1_0_celescIO767
	JMP        L_IHMTCV1_0_celescIO338
L_IHMTCV1_0_celescIO767:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO768
	LDI        R27, 12
	CP         R2, R27
L_IHMTCV1_0_celescIO768:
	BRNE       L_IHMTCV1_0_celescIO769
	JMP        L_IHMTCV1_0_celescIO341
L_IHMTCV1_0_celescIO769:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO770
	LDI        R27, 13
	CP         R2, R27
L_IHMTCV1_0_celescIO770:
	BRNE       L_IHMTCV1_0_celescIO771
	JMP        L_IHMTCV1_0_celescIO344
L_IHMTCV1_0_celescIO771:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO772
	LDI        R27, 14
	CP         R2, R27
L_IHMTCV1_0_celescIO772:
	BRNE       L_IHMTCV1_0_celescIO773
	JMP        L_IHMTCV1_0_celescIO347
L_IHMTCV1_0_celescIO773:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO774
	LDI        R27, 15
	CP         R2, R27
L_IHMTCV1_0_celescIO774:
	BRNE       L_IHMTCV1_0_celescIO775
	JMP        L_IHMTCV1_0_celescIO350
L_IHMTCV1_0_celescIO775:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO776
	LDI        R27, 16
	CP         R2, R27
L_IHMTCV1_0_celescIO776:
	BRNE       L_IHMTCV1_0_celescIO777
	JMP        L_IHMTCV1_0_celescIO353
L_IHMTCV1_0_celescIO777:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO778
	LDI        R27, 17
	CP         R2, R27
L_IHMTCV1_0_celescIO778:
	BRNE       L_IHMTCV1_0_celescIO779
	JMP        L_IHMTCV1_0_celescIO356
L_IHMTCV1_0_celescIO779:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L_IHMTCV1_0_celescIO780
	LDI        R27, 18
	CP         R2, R27
L_IHMTCV1_0_celescIO780:
	BRNE       L_IHMTCV1_0_celescIO781
	JMP        L_IHMTCV1_0_celescIO359
L_IHMTCV1_0_celescIO781:
L_IHMTCV1_0_celescIO307:
;celesc.h,126 :: 		return PINO;
	MOVW       R16, R4
;celesc.h,127 :: 		}
L_end_celescIO:
	RET
; end of IHMTCV1_0_celescIO

IHMTCV1_0_testeVias:
	PUSH       R28
	PUSH       R29
	IN         R28, SPL+0
	IN         R29, SPL+1
	ADIW       R28, 5

;teste.h,4 :: 		static int testeVias(int contador, int count1, int *PINO, int teste, int numVias, int errov, int *vetErro, int *vetorDeErroModuloCelesc){
; numVias start address is: 24 (R24)
	LDD        R24, Y+0
	LDD        R25, Y+1
; errov start address is: 10 (R10)
	LDD        R10, Y+2
	LDD        R11, Y+3
; vetErro start address is: 22 (R22)
	LDD        R22, Y+4
	LDD        R23, Y+5
; vetorDeErroModuloCelesc start address is: 20 (R20)
	LDD        R20, Y+6
	LDD        R21, Y+7
;teste.h,6 :: 		for (contador = 1; contador <= numVias; contador ++){
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
; vetorDeErroModuloCelesc end address is: 20 (R20)
; numVias end address is: 24 (R24)
; errov end address is: 10 (R10)
L_IHMTCV1_0_testeVias362:
; vetorDeErroModuloCelesc start address is: 20 (R20)
; vetErro start address is: 22 (R22)
; vetErro end address is: 22 (R22)
; errov start address is: 10 (R10)
; numVias start address is: 24 (R24)
	CP         R24, R2
	CPC        R25, R3
	BRGE       L_IHMTCV1_0_testeVias783
	JMP        L_IHMTCV1_0_testeVias363
L_IHMTCV1_0_testeVias783:
; vetErro end address is: 22 (R22)
;teste.h,8 :: 		count1 ++;
; vetErro start address is: 22 (R22)
	MOVW       R16, R4
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R4, R16
;teste.h,10 :: 		if(PINO[contador] != 0){
	MOVW       R16, R2
	LSL        R16
	ROL        R17
	MOVW       R30, R16
	ADD        R30, R6
	ADC        R31, R7
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L_IHMTCV1_0_testeVias784
	CPI        R16, 0
L_IHMTCV1_0_testeVias784:
	BRNE       L_IHMTCV1_0_testeVias785
	JMP        L_IHMTCV1_0_testeVias365
L_IHMTCV1_0_testeVias785:
;teste.h,12 :: 		teste ++;
	MOVW       R16, R8
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R8, R16
;teste.h,14 :: 		} else{
	JMP        L_IHMTCV1_0_testeVias366
L_IHMTCV1_0_testeVias365:
;teste.h,16 :: 		vetErro[errov] = vetorDeErroModuloCelesc[contador];
	MOVW       R16, R10
	LSL        R16
	ROL        R17
	MOVW       R18, R16
	ADD        R18, R22
	ADC        R19, R23
	MOVW       R16, R2
	LSL        R16
	ROL        R17
	MOVW       R30, R16
	ADD        R30, R20
	ADC        R31, R21
	LD         R16, Z+
	LD         R17, Z+
	MOVW       R30, R18
	ST         Z+, R16
	ST         Z+, R17
;teste.h,17 :: 		errov ++;
	MOVW       R16, R10
	SUBI       R16, 255
	SBCI       R17, 255
; errov end address is: 10 (R10)
; errov start address is: 18 (R18)
	MOVW       R18, R16
; errov end address is: 18 (R18)
	MOVW       R10, R18
;teste.h,19 :: 		}
L_IHMTCV1_0_testeVias366:
;teste.h,6 :: 		for (contador = 1; contador <= numVias; contador ++){
; errov start address is: 10 (R10)
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
;teste.h,20 :: 		}
; vetErro end address is: 22 (R22)
; numVias end address is: 24 (R24)
; errov end address is: 10 (R10)
	JMP        L_IHMTCV1_0_testeVias362
L_IHMTCV1_0_testeVias363:
;teste.h,22 :: 		return  count1, PINO,  teste,  numVias,  errov, vetErro, vetorDeErroModuloCelesc;
	MOVW       R16, R20
; vetorDeErroModuloCelesc end address is: 20 (R20)
;teste.h,23 :: 		}
L_end_testeVias:
	POP        R29
	POP        R28
	RET
; end of IHMTCV1_0_testeVias

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27
	IN         R28, SPL+0
	IN         R29, SPL+1
	SUBI       R28, 226
	SBCI       R29, 1
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;IHMTCV1_0.c,51 :: 		void main() {
;IHMTCV1_0.c,55 :: 		DDRD = DDRD & (~(0<<2)); // BOTÃO PARA CORRER O MENU
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	IN         R16, DDRD+0
	ANDI       R16, 255
	OUT        DDRD+0, R16
;IHMTCV1_0.c,56 :: 		DDRD = DDRD & (~(0<<3)); // BOTÃO PARA SELECIONAR A OPÇÃO
	ANDI       R16, 255
	OUT        DDRD+0, R16
;IHMTCV1_0.c,59 :: 		DDRD = DDRD & (~(1<<0)); // Sensor de porta
	ANDI       R16, 254
	OUT        DDRD+0, R16
;IHMTCV1_0.c,62 :: 		DDRA = DDRA | (1 <<1); //RD/RW Didplay
	IN         R16, DDRA+0
	ORI        R16, 2
	OUT        DDRA+0, R16
;IHMTCV1_0.c,63 :: 		PORTA = PORTA |(0<<1); //RW Display
;IHMTCV1_0.c,66 :: 		DDRA = DDRA | (1 <<3);  //BACK display
	ORI        R16, 8
	OUT        DDRA+0, R16
;IHMTCV1_0.c,67 :: 		PORTA = PORTA |(1<<3); //BACk inicializado acesso;
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
;IHMTCV1_0.c,70 :: 		DDRG = DDRG & (~(1<<0));  // leitura dos cabos
	LDS        R16, DDRG+0
	ANDI       R16, 254
	STS        DDRG+0, R16
;IHMTCV1_0.c,73 :: 		DDRE = 0xFF;  // PORT E setado como saída.
	LDI        R27, 255
	OUT        DDRE+0, R27
;IHMTCV1_0.c,74 :: 		DDRB = 0xFF;  // PORT B setado como saida
	LDI        R27, 255
	OUT        DDRB+0, R27
;IHMTCV1_0.c,77 :: 		DDRC = DDRC | (1<<0);
	IN         R16, DDRC+0
	ORI        R16, 1
	OUT        DDRC+0, R16
;IHMTCV1_0.c,78 :: 		DDRC = DDRC & (~(1<<1));
	ANDI       R16, 253
	OUT        DDRC+0, R16
;IHMTCV1_0.c,79 :: 		DDRC = DDRC & (~(1<<2));
	ANDI       R16, 251
	OUT        DDRC+0, R16
;IHMTCV1_0.c,80 :: 		DDRC = DDRC & (~(1<<3));
	ANDI       R16, 247
	OUT        DDRC+0, R16
;IHMTCV1_0.c,81 :: 		DDRC = DDRC & (~(1<<4));
	ANDI       R16, 239
	OUT        DDRC+0, R16
;IHMTCV1_0.c,82 :: 		DDRC = DDRC & (~(1<<5));
	ANDI       R16, 223
	OUT        DDRC+0, R16
;IHMTCV1_0.c,83 :: 		DDRC = DDRC & (~(1<<6));
	ANDI       R16, 191
	OUT        DDRC+0, R16
;IHMTCV1_0.c,84 :: 		DDRC = DDRC & (~(1<<7));
	ANDI       R16, 127
	OUT        DDRC+0, R16
;IHMTCV1_0.c,87 :: 		DDRF = DDRF  | (1<<0);
	LDS        R16, DDRF+0
	ORI        R16, 1
	STS        DDRF+0, R16
;IHMTCV1_0.c,88 :: 		DDRF = DDRF  & (~(1<<1));
	ANDI       R16, 253
	STS        DDRF+0, R16
;IHMTCV1_0.c,89 :: 		DDRF = DDRF  & (~(1<<2));
	ANDI       R16, 251
	STS        DDRF+0, R16
;IHMTCV1_0.c,90 :: 		DDRF = DDRF  & (~(1<<3));
	ANDI       R16, 247
	STS        DDRF+0, R16
;IHMTCV1_0.c,91 :: 		DDRF = DDRF  | (1<<4);  // SAÍDA
	ORI        R16, 16
	STS        DDRF+0, R16
;IHMTCV1_0.c,92 :: 		DDRF = DDRF  & (~(1<<5));
	ANDI       R16, 223
	STS        DDRF+0, R16
;IHMTCV1_0.c,93 :: 		DDRF = DDRF  & (~(1<<6));
	ANDI       R16, 191
	STS        DDRF+0, R16
;IHMTCV1_0.c,94 :: 		DDRF = DDRF  & (~(1<<7));
	ANDI       R16, 127
	STS        DDRF+0, R16
;IHMTCV1_0.c,95 :: 		msgInicializacao();
	CALL       _msgInicializacao+0
;IHMTCV1_0.c,97 :: 		do{
L_main367:
;IHMTCV1_0.c,98 :: 		sair--;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 1
	SBCI       R17, 0
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,99 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main787
	JMP        L_main370
L__main787:
;IHMTCV1_0.c,100 :: 		menu++;
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _menu+0, R16
	STS        _menu+1, R17
;IHMTCV1_0.c,102 :: 		switch (menu){
	JMP        L_main371
;IHMTCV1_0.c,104 :: 		case 1:
L_main373:
;IHMTCV1_0.c,105 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,106 :: 		lcd_Out(1, 1,"Executar Teste 1");
	LDI        R27, #lo_addr(?lstr10_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr10_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,107 :: 		lcd_Out(2, 1,"COMPLETO (I)");
	LDI        R27, #lo_addr(?lstr11_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr11_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,108 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main374:
	DEC        R16
	BRNE       L_main374
	DEC        R17
	BRNE       L_main374
	DEC        R18
	BRNE       L_main374
;IHMTCV1_0.c,109 :: 		break;
	JMP        L_main372
;IHMTCV1_0.c,110 :: 		case 2:
L_main376:
;IHMTCV1_0.c,112 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,113 :: 		lcd_Out(1, 1,"Executar Teste 2");
	LDI        R27, #lo_addr(?lstr12_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr12_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,114 :: 		lcd_Out(2, 1,"CONTROLE (I)");
	LDI        R27, #lo_addr(?lstr13_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr13_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,115 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main377:
	DEC        R16
	BRNE       L_main377
	DEC        R17
	BRNE       L_main377
	DEC        R18
	BRNE       L_main377
;IHMTCV1_0.c,116 :: 		break;
	JMP        L_main372
;IHMTCV1_0.c,118 :: 		case 3:
L_main379:
;IHMTCV1_0.c,120 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,121 :: 		lcd_Out(1, 1,"Executar Teste 3");
	LDI        R27, #lo_addr(?lstr14_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr14_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,122 :: 		lcd_Out(2, 1,"IHM - DFIPM (I)");
	LDI        R27, #lo_addr(?lstr15_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr15_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,123 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main380:
	DEC        R16
	BRNE       L_main380
	DEC        R17
	BRNE       L_main380
	DEC        R18
	BRNE       L_main380
;IHMTCV1_0.c,124 :: 		break;
	JMP        L_main372
;IHMTCV1_0.c,125 :: 		case 4:
L_main382:
;IHMTCV1_0.c,126 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,127 :: 		lcd_Out(1, 1,"Executar Teste 4");
	LDI        R27, #lo_addr(?lstr16_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr16_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,128 :: 		lcd_Out(2, 1,"I/0 (I)");
	LDI        R27, #lo_addr(?lstr17_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr17_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,129 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main383:
	DEC        R16
	BRNE       L_main383
	DEC        R17
	BRNE       L_main383
	DEC        R18
	BRNE       L_main383
;IHMTCV1_0.c,130 :: 		break;
	JMP        L_main372
;IHMTCV1_0.c,131 :: 		case 5:
L_main385:
;IHMTCV1_0.c,132 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,133 :: 		lcd_Out(1, 1,"Executar Teste 5");
	LDI        R27, #lo_addr(?lstr18_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr18_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,134 :: 		lcd_Out(2, 1,"I/0 (BF)");
	LDI        R27, #lo_addr(?lstr19_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr19_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,135 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main386:
	DEC        R16
	BRNE       L_main386
	DEC        R17
	BRNE       L_main386
	DEC        R18
	BRNE       L_main386
;IHMTCV1_0.c,136 :: 		break;
	JMP        L_main372
;IHMTCV1_0.c,137 :: 		case 6:
L_main388:
;IHMTCV1_0.c,138 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,139 :: 		lcd_Out(1, 1,"Executar Teste 6");
	LDI        R27, #lo_addr(?lstr20_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr20_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,140 :: 		lcd_Out(2, 1,"IHM - DFIPM (BF)");
	LDI        R27, #lo_addr(?lstr21_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr21_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,141 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main389:
	DEC        R16
	BRNE       L_main389
	DEC        R17
	BRNE       L_main389
	DEC        R18
	BRNE       L_main389
;IHMTCV1_0.c,142 :: 		break;
	JMP        L_main372
;IHMTCV1_0.c,143 :: 		case 7:
L_main391:
;IHMTCV1_0.c,144 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,145 :: 		lcd_Out(1, 1,"Executar Teste 7");
	LDI        R27, #lo_addr(?lstr22_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr22_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,146 :: 		lcd_Out(2, 1,"I/O (T-CELESC)");
	LDI        R27, #lo_addr(?lstr23_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr23_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,147 :: 		Delay_ms(200);
	LDI        R18, 15
	LDI        R17, 53
	LDI        R16, 82
L_main392:
	DEC        R16
	BRNE       L_main392
	DEC        R17
	BRNE       L_main392
	DEC        R18
	BRNE       L_main392
;IHMTCV1_0.c,148 :: 		break;
	JMP        L_main372
;IHMTCV1_0.c,150 :: 		default:
L_main394:
;IHMTCV1_0.c,151 :: 		if(menu  == 8){
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main788
	CPI        R16, 8
L__main788:
	BREQ       L__main789
	JMP        L_main395
L__main789:
;IHMTCV1_0.c,152 :: 		menu = 0;
	LDI        R27, 0
	STS        _menu+0, R27
	STS        _menu+1, R27
;IHMTCV1_0.c,153 :: 		}
L_main395:
;IHMTCV1_0.c,154 :: 		}
	JMP        L_main372
L_main371:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main790
	CPI        R16, 1
L__main790:
	BRNE       L__main791
	JMP        L_main373
L__main791:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main792
	CPI        R16, 2
L__main792:
	BRNE       L__main793
	JMP        L_main376
L__main793:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main794
	CPI        R16, 3
L__main794:
	BRNE       L__main795
	JMP        L_main379
L__main795:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main796
	CPI        R16, 4
L__main796:
	BRNE       L__main797
	JMP        L_main382
L__main797:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main798
	CPI        R16, 5
L__main798:
	BRNE       L__main799
	JMP        L_main385
L__main799:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main800
	CPI        R16, 6
L__main800:
	BRNE       L__main801
	JMP        L_main388
L__main801:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main802
	CPI        R16, 7
L__main802:
	BRNE       L__main803
	JMP        L_main391
L__main803:
	JMP        L_main394
L_main372:
;IHMTCV1_0.c,155 :: 		}
L_main370:
;IHMTCV1_0.c,157 :: 		if(Button (&PIND, 3, 0, 0) && menu == 1){
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main804
	JMP        L__main523
L__main804:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main805
	CPI        R16, 1
L__main805:
	BREQ       L__main806
	JMP        L__main522
L__main806:
L__main519:
;IHMTCV1_0.c,158 :: 		msgExecutar();
	CALL       _msgExecutar+0
;IHMTCV1_0.c,160 :: 		while (sair){
L_main399:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main807
	JMP        L_main400
L__main807:
;IHMTCV1_0.c,161 :: 		int count = 1;
; count start address is: 2 (R2)
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
;IHMTCV1_0.c,164 :: 		int contador = 0;
;IHMTCV1_0.c,165 :: 		int teste = 0;
; teste start address is: 18 (R18)
	LDI        R18, 0
	LDI        R19, 0
;IHMTCV1_0.c,166 :: 		int errov = 1;
; errov start address is: 20 (R20)
	LDI        R20, 1
	LDI        R21, 0
;IHMTCV1_0.c,168 :: 		int count1 = 0;
; count1 start address is: 22 (R22)
	LDI        R22, 0
	LDI        R23, 0
;IHMTCV1_0.c,169 :: 		int numVias = 49;
; numVias start address is: 24 (R24)
	LDI        R24, 49
	LDI        R25, 0
;IHMTCV1_0.c,170 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 16 (R16)
	LDI        R17, 0
;IHMTCV1_0.c,172 :: 		if(buttonEstate == 0){
	CPI        R17, 0
	BRNE       L__main808
	CPI        R16, 0
L__main808:
	BREQ       L__main809
	JMP        L_main401
L__main809:
; buttonEstate end address is: 16 (R16)
;IHMTCV1_0.c,173 :: 		msgExecutando();
	PUSH       R19
	PUSH       R18
	PUSH       R3
	PUSH       R2
	CALL       _msgExecutando+0
	POP        R2
	POP        R3
;IHMTCV1_0.c,174 :: 		iljiCompleto(count, PINO);
	MOVW       R16, R28
	MOVW       R4, R16
; count end address is: 2 (R2)
	CALL       IHMTCV1_0_iljiCompleto+0
	POP        R18
	POP        R19
;IHMTCV1_0.c,176 :: 		for (contador = 1; contador <= numVias; contador ++){
; contador start address is: 16 (R16)
	LDI        R16, 1
	LDI        R17, 0
; teste end address is: 18 (R18)
; count1 end address is: 22 (R22)
; numVias end address is: 24 (R24)
; contador end address is: 16 (R16)
; errov end address is: 20 (R20)
	MOVW       R6, R18
	MOVW       R18, R22
	MOVW       R22, R24
	MOVW       R24, R16
	MOVW       R4, R20
L_main402:
; contador start address is: 24 (R24)
; numVias start address is: 22 (R22)
; count1 start address is: 18 (R18)
; errov start address is: 4 (R4)
; teste start address is: 6 (R6)
	CP         R22, R24
	CPC        R23, R25
	BRGE       L__main810
	JMP        L_main403
L__main810:
;IHMTCV1_0.c,178 :: 		count1 ++;
	MOVW       R16, R18
	SUBI       R16, 255
	SBCI       R17, 255
; count1 end address is: 18 (R18)
; count1 start address is: 2 (R2)
	MOVW       R2, R16
;IHMTCV1_0.c,180 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	MOVW       R16, R24
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main811
	CPI        R16, 0
L__main811:
	BRNE       L__main812
	JMP        L_main405
L__main812:
;IHMTCV1_0.c,181 :: 		teste ++;
	MOVW       R16, R6
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R6, R16
;IHMTCV1_0.c,182 :: 		} else{
	JMP        L_main406
L_main405:
;IHMTCV1_0.c,183 :: 		vetErro[errov] = vetorDeErroCompleto[contador];
	MOVW       R18, R28
	SUBI       R18, 156
	SBCI       R19, 255
	MOVW       R16, R4
	LSL        R16
	ROL        R17
	MOVW       R20, R16
	ADD        R20, R18
	ADC        R21, R19
	MOVW       R18, R24
	LSL        R18
	ROL        R19
	LDI        R16, #lo_addr(IHMTCV1_0_vetorDeErroCompleto+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorDeErroCompleto+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	MOVW       R30, R20
	ST         Z+, R16
	ST         Z+, R17
;IHMTCV1_0.c,184 :: 		errov ++;
	MOVW       R16, R4
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R4, R16
; errov end address is: 4 (R4)
; teste end address is: 6 (R6)
;IHMTCV1_0.c,186 :: 		}
L_main406:
;IHMTCV1_0.c,176 :: 		for (contador = 1; contador <= numVias; contador ++){
; errov start address is: 4 (R4)
; teste start address is: 6 (R6)
	MOVW       R16, R24
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R24, R16
;IHMTCV1_0.c,187 :: 		}
; count1 end address is: 2 (R2)
; contador end address is: 24 (R24)
	MOVW       R18, R2
	JMP        L_main402
L_main403:
;IHMTCV1_0.c,189 :: 		if(teste == numVias){
; count1 start address is: 18 (R18)
	CP         R6, R22
	CPC        R7, R23
	BREQ       L__main813
	JMP        L_main407
L__main813:
; numVias end address is: 22 (R22)
; count1 end address is: 18 (R18)
; errov end address is: 4 (R4)
; teste end address is: 6 (R6)
;IHMTCV1_0.c,191 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,192 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr24_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr24_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,195 :: 		}else if(errov !=1 && count1 == numVias){
	JMP        L_main408
L_main407:
; errov start address is: 4 (R4)
; count1 start address is: 18 (R18)
; numVias start address is: 22 (R22)
	LDI        R27, 0
	CP         R5, R27
	BRNE       L__main814
	LDI        R27, 1
	CP         R4, R27
L__main814:
	BRNE       L__main815
	JMP        L__main521
L__main815:
	CP         R18, R22
	CPC        R19, R23
	BREQ       L__main816
	JMP        L__main520
L__main816:
; numVias end address is: 22 (R22)
; count1 end address is: 18 (R18)
L__main518:
;IHMTCV1_0.c,196 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,198 :: 		for (contador = 1; contador <errov; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; errov end address is: 4 (R4)
; contador end address is: 22 (R22)
	MOVW       R20, R4
L_main412:
; contador start address is: 22 (R22)
; errov start address is: 20 (R20)
	CP         R22, R20
	CPC        R23, R21
	BRLT       L__main817
	JMP        L_main413
L__main817:
;IHMTCV1_0.c,199 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr25_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr25_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,200 :: 		Lcd_Out(2,1,"VIA:");
	LDI        R27, #lo_addr(?lstr26_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr26_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,201 :: 		erro = vetErro[contador];
	MOVW       R18, R28
	SUBI       R18, 156
	SBCI       R19, 255
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,202 :: 		IntToStr(erro, txt);
	PUSH       R21
	PUSH       R20
	PUSH       R23
	PUSH       R22
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
	POP        R22
	POP        R23
	POP        R20
	POP        R21
;IHMTCV1_0.c,203 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,204 :: 		Delay_ms (1000);
	LDI        R18, 72
	LDI        R17, 6
	LDI        R16, 160
L_main415:
	DEC        R16
	BRNE       L_main415
	DEC        R17
	BRNE       L_main415
	DEC        R18
	BRNE       L_main415
	NOP
	NOP
;IHMTCV1_0.c,198 :: 		for (contador = 1; contador <errov; contador ++){
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,205 :: 		}
; errov end address is: 20 (R20)
; contador end address is: 22 (R22)
	JMP        L_main412
L_main413:
;IHMTCV1_0.c,195 :: 		}else if(errov !=1 && count1 == numVias){
L__main521:
L__main520:
;IHMTCV1_0.c,206 :: 		}
L_main408:
;IHMTCV1_0.c,208 :: 		}
L_main401:
;IHMTCV1_0.c,209 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main818
	JMP        L_main417
L__main818:
;IHMTCV1_0.c,210 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,211 :: 		}
L_main417:
;IHMTCV1_0.c,212 :: 		}
	JMP        L_main399
L_main400:
;IHMTCV1_0.c,157 :: 		if(Button (&PIND, 3, 0, 0) && menu == 1){
L__main523:
L__main522:
;IHMTCV1_0.c,216 :: 		if(Button (&PIND, 3, 0, 0) && menu == 2) {
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main819
	JMP        L__main527
L__main819:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main820
	CPI        R16, 2
L__main820:
	BREQ       L__main821
	JMP        L__main526
L__main821:
L__main517:
;IHMTCV1_0.c,217 :: 		msgExecutar();
	CALL       _msgExecutar+0
;IHMTCV1_0.c,218 :: 		while (sair){
L_main421:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main822
	JMP        L_main422
L__main822:
;IHMTCV1_0.c,219 :: 		int count = 1;
; count start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
;IHMTCV1_0.c,223 :: 		int contador = 0;
;IHMTCV1_0.c,224 :: 		int teste = 0;
; teste start address is: 18 (R18)
	LDI        R18, 0
	LDI        R19, 0
;IHMTCV1_0.c,225 :: 		int count1 = 0;
; count1 start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
;IHMTCV1_0.c,226 :: 		int errov = 1;
; errov start address is: 2 (R2)
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
;IHMTCV1_0.c,227 :: 		int numVias = 29;
;IHMTCV1_0.c,228 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 16 (R16)
	LDI        R17, 0
;IHMTCV1_0.c,230 :: 		if(buttonEstate == 0){
	CPI        R17, 0
	BRNE       L__main823
	CPI        R16, 0
L__main823:
	BREQ       L__main824
	JMP        L_main423
L__main824:
; buttonEstate end address is: 16 (R16)
;IHMTCV1_0.c,231 :: 		msgExecutando();
	PUSH       R3
	PUSH       R2
	PUSH       R19
	PUSH       R18
	CALL       _msgExecutando+0
;IHMTCV1_0.c,232 :: 		iljinCaboControle(count,PINO);
	MOVW       R16, R28
	SUBI       R16, 54
	SBCI       R17, 255
	MOVW       R4, R16
	MOVW       R2, R22
; count end address is: 22 (R22)
	CALL       IHMTCV1_0_iljinCaboControle+0
	POP        R18
	POP        R19
	POP        R2
	POP        R3
;IHMTCV1_0.c,234 :: 		for (contador = 1; contador <= 29; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; teste end address is: 18 (R18)
; count1 end address is: 20 (R20)
; errov end address is: 2 (R2)
; contador end address is: 22 (R22)
	MOVW       R4, R18
	MOVW       R18, R20
L_main424:
; contador start address is: 22 (R22)
; errov start address is: 2 (R2)
; count1 start address is: 18 (R18)
; teste start address is: 4 (R4)
	LDI        R16, 29
	LDI        R17, 0
	CP         R16, R22
	CPC        R17, R23
	BRGE       L__main825
	JMP        L_main425
L__main825:
;IHMTCV1_0.c,235 :: 		count1 ++;
	MOVW       R16, R18
	SUBI       R16, 255
	SBCI       R17, 255
; count1 end address is: 18 (R18)
; count1 start address is: 24 (R24)
	MOVW       R24, R16
;IHMTCV1_0.c,237 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	SUBI       R18, 54
	SBCI       R19, 255
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main826
	CPI        R16, 0
L__main826:
	BRNE       L__main827
	JMP        L_main427
L__main827:
;IHMTCV1_0.c,239 :: 		teste ++;
	MOVW       R16, R4
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R4, R16
;IHMTCV1_0.c,241 :: 		}else{
	JMP        L_main428
L_main427:
;IHMTCV1_0.c,242 :: 		vetErro[errov] = vetorCaboControle[contador];
	MOVW       R18, R28
	SUBI       R18, 252
	SBCI       R19, 254
	MOVW       R16, R2
	LSL        R16
	ROL        R17
	MOVW       R20, R16
	ADD        R20, R18
	ADC        R21, R19
	MOVW       R18, R22
	LSL        R18
	ROL        R19
	LDI        R16, #lo_addr(IHMTCV1_0_vetorCaboControle+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorCaboControle+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	MOVW       R30, R20
	ST         Z+, R16
	ST         Z+, R17
;IHMTCV1_0.c,243 :: 		errov ++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
; errov end address is: 2 (R2)
; teste end address is: 4 (R4)
;IHMTCV1_0.c,244 :: 		}
L_main428:
;IHMTCV1_0.c,234 :: 		for (contador = 1; contador <= 29; contador ++){
; errov start address is: 2 (R2)
; teste start address is: 4 (R4)
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,245 :: 		}
; count1 end address is: 24 (R24)
; contador end address is: 22 (R22)
	MOVW       R18, R24
	JMP        L_main424
L_main425:
;IHMTCV1_0.c,247 :: 		if(teste == 29){
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R5, R27
	BRNE       L__main828
	LDI        R27, 29
	CP         R4, R27
L__main828:
	BREQ       L__main829
	JMP        L_main429
L__main829:
; count1 end address is: 18 (R18)
; errov end address is: 2 (R2)
; teste end address is: 4 (R4)
;IHMTCV1_0.c,249 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,250 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr27_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr27_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,252 :: 		}else if(errov !=1 && count1 == 29){
	JMP        L_main430
L_main429:
; errov start address is: 2 (R2)
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__main830
	LDI        R27, 1
	CP         R2, R27
L__main830:
	BRNE       L__main831
	JMP        L__main525
L__main831:
	CPI        R19, 0
	BRNE       L__main832
	CPI        R18, 29
L__main832:
	BREQ       L__main833
	JMP        L__main524
L__main833:
; count1 end address is: 18 (R18)
L__main516:
;IHMTCV1_0.c,253 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R3
	PUSH       R2
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
	POP        R2
	POP        R3
;IHMTCV1_0.c,256 :: 		for (contador = 1; contador <errov; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; errov end address is: 2 (R2)
; contador end address is: 22 (R22)
	MOVW       R20, R2
L_main434:
; contador start address is: 22 (R22)
; errov start address is: 20 (R20)
	CP         R22, R20
	CPC        R23, R21
	BRLT       L__main834
	JMP        L_main435
L__main834:
;IHMTCV1_0.c,257 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr28_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr28_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,258 :: 		Lcd_Out(2,1,"VIA:");
	LDI        R27, #lo_addr(?lstr29_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr29_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,259 :: 		erro = vetErro[contador];
	MOVW       R18, R28
	SUBI       R18, 252
	SBCI       R19, 254
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,260 :: 		IntToStr(erro, txt);
	PUSH       R21
	PUSH       R20
	PUSH       R23
	PUSH       R22
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
	POP        R22
	POP        R23
	POP        R20
	POP        R21
;IHMTCV1_0.c,261 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,262 :: 		Delay_ms (1000);
	LDI        R18, 72
	LDI        R17, 6
	LDI        R16, 160
L_main437:
	DEC        R16
	BRNE       L_main437
	DEC        R17
	BRNE       L_main437
	DEC        R18
	BRNE       L_main437
	NOP
	NOP
;IHMTCV1_0.c,256 :: 		for (contador = 1; contador <errov; contador ++){
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,265 :: 		}
; errov end address is: 20 (R20)
; contador end address is: 22 (R22)
	JMP        L_main434
L_main435:
;IHMTCV1_0.c,252 :: 		}else if(errov !=1 && count1 == 29){
L__main525:
L__main524:
;IHMTCV1_0.c,268 :: 		}
L_main430:
;IHMTCV1_0.c,269 :: 		}
L_main423:
;IHMTCV1_0.c,271 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main835
	JMP        L_main439
L__main835:
;IHMTCV1_0.c,272 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,273 :: 		}
L_main439:
;IHMTCV1_0.c,274 :: 		}
	JMP        L_main421
L_main422:
;IHMTCV1_0.c,216 :: 		if(Button (&PIND, 3, 0, 0) && menu == 2) {
L__main527:
L__main526:
;IHMTCV1_0.c,280 :: 		if(Button (&PIND, 3, 0, 0) && menu == 3) {
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main836
	JMP        L__main531
L__main836:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main837
	CPI        R16, 3
L__main837:
	BREQ       L__main838
	JMP        L__main530
L__main838:
L__main515:
;IHMTCV1_0.c,281 :: 		msgExecutar();
	CALL       _msgExecutar+0
;IHMTCV1_0.c,283 :: 		while (sair){
L_main443:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main839
	JMP        L_main444
L__main839:
;IHMTCV1_0.c,284 :: 		int count = 1;
; count start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
;IHMTCV1_0.c,288 :: 		int contador = 0;
;IHMTCV1_0.c,289 :: 		int teste = 0;
; teste start address is: 18 (R18)
	LDI        R18, 0
	LDI        R19, 0
;IHMTCV1_0.c,290 :: 		int count1 = 0;
; count1 start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
;IHMTCV1_0.c,291 :: 		int errov = 1;
; errov start address is: 2 (R2)
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
;IHMTCV1_0.c,292 :: 		int numVias = 11;
;IHMTCV1_0.c,293 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 16 (R16)
	LDI        R17, 0
;IHMTCV1_0.c,295 :: 		if(buttonEstate == 0){
	CPI        R17, 0
	BRNE       L__main840
	CPI        R16, 0
L__main840:
	BREQ       L__main841
	JMP        L_main445
L__main841:
; buttonEstate end address is: 16 (R16)
;IHMTCV1_0.c,297 :: 		iljinIHM(count, PINO);
	MOVW       R16, R28
	SUBI       R16, 194
	SBCI       R17, 254
	PUSH       R3
	PUSH       R2
	PUSH       R19
	PUSH       R18
	MOVW       R4, R16
	MOVW       R2, R22
; count end address is: 22 (R22)
	CALL       IHMTCV1_0_iljinIHM+0
	POP        R18
	POP        R19
	POP        R2
	POP        R3
;IHMTCV1_0.c,299 :: 		for (contador = 1; contador <= 11; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; teste end address is: 18 (R18)
; count1 end address is: 20 (R20)
; errov end address is: 2 (R2)
; contador end address is: 22 (R22)
	MOVW       R4, R18
	MOVW       R18, R20
L_main446:
; contador start address is: 22 (R22)
; errov start address is: 2 (R2)
; count1 start address is: 18 (R18)
; teste start address is: 4 (R4)
	LDI        R16, 11
	LDI        R17, 0
	CP         R16, R22
	CPC        R17, R23
	BRGE       L__main842
	JMP        L_main447
L__main842:
;IHMTCV1_0.c,300 :: 		count1 ++;
	MOVW       R16, R18
	SUBI       R16, 255
	SBCI       R17, 255
; count1 end address is: 18 (R18)
; count1 start address is: 24 (R24)
	MOVW       R24, R16
;IHMTCV1_0.c,301 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	SUBI       R18, 194
	SBCI       R19, 254
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main843
	CPI        R16, 0
L__main843:
	BRNE       L__main844
	JMP        L_main449
L__main844:
;IHMTCV1_0.c,302 :: 		teste ++;
	MOVW       R16, R4
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R4, R16
;IHMTCV1_0.c,303 :: 		}else{
	JMP        L_main450
L_main449:
;IHMTCV1_0.c,304 :: 		vetErro[errov] = vetorDeErroDFIPM[contador];
	MOVW       R18, R28
	SUBI       R18, 172
	SBCI       R19, 254
	MOVW       R16, R2
	LSL        R16
	ROL        R17
	MOVW       R20, R16
	ADD        R20, R18
	ADC        R21, R19
	MOVW       R18, R22
	LSL        R18
	ROL        R19
	LDI        R16, #lo_addr(IHMTCV1_0_vetorDeErroDFIPM+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorDeErroDFIPM+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	MOVW       R30, R20
	ST         Z+, R16
	ST         Z+, R17
;IHMTCV1_0.c,305 :: 		errov ++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
; errov end address is: 2 (R2)
; teste end address is: 4 (R4)
;IHMTCV1_0.c,306 :: 		}
L_main450:
;IHMTCV1_0.c,299 :: 		for (contador = 1; contador <= 11; contador ++){
; errov start address is: 2 (R2)
; teste start address is: 4 (R4)
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,307 :: 		}
; count1 end address is: 24 (R24)
; contador end address is: 22 (R22)
	MOVW       R18, R24
	JMP        L_main446
L_main447:
;IHMTCV1_0.c,309 :: 		if(teste == 11){
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R5, R27
	BRNE       L__main845
	LDI        R27, 11
	CP         R4, R27
L__main845:
	BREQ       L__main846
	JMP        L_main451
L__main846:
; count1 end address is: 18 (R18)
; errov end address is: 2 (R2)
; teste end address is: 4 (R4)
;IHMTCV1_0.c,311 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,312 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr30_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr30_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,315 :: 		}else if(errov !=1 && count1 == 11){
	JMP        L_main452
L_main451:
; errov start address is: 2 (R2)
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__main847
	LDI        R27, 1
	CP         R2, R27
L__main847:
	BRNE       L__main848
	JMP        L__main529
L__main848:
	CPI        R19, 0
	BRNE       L__main849
	CPI        R18, 11
L__main849:
	BREQ       L__main850
	JMP        L__main528
L__main850:
; count1 end address is: 18 (R18)
L__main514:
;IHMTCV1_0.c,316 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R3
	PUSH       R2
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
	POP        R2
	POP        R3
;IHMTCV1_0.c,318 :: 		for (contador = 1; contador <errov; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; errov end address is: 2 (R2)
; contador end address is: 22 (R22)
	MOVW       R20, R2
L_main456:
; contador start address is: 22 (R22)
; errov start address is: 20 (R20)
	CP         R22, R20
	CPC        R23, R21
	BRLT       L__main851
	JMP        L_main457
L__main851:
;IHMTCV1_0.c,319 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr31_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr31_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,320 :: 		Lcd_Out(2,1,"VIA:");
	LDI        R27, #lo_addr(?lstr32_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr32_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,321 :: 		erro = vetErro[contador];
	MOVW       R18, R28
	SUBI       R18, 172
	SBCI       R19, 254
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,322 :: 		IntToStr(erro, txt);
	PUSH       R21
	PUSH       R20
	PUSH       R23
	PUSH       R22
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
	POP        R22
	POP        R23
	POP        R20
	POP        R21
;IHMTCV1_0.c,323 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,324 :: 		Delay_ms (1000);
	LDI        R18, 72
	LDI        R17, 6
	LDI        R16, 160
L_main459:
	DEC        R16
	BRNE       L_main459
	DEC        R17
	BRNE       L_main459
	DEC        R18
	BRNE       L_main459
	NOP
	NOP
;IHMTCV1_0.c,318 :: 		for (contador = 1; contador <errov; contador ++){
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,327 :: 		}
; errov end address is: 20 (R20)
; contador end address is: 22 (R22)
	JMP        L_main456
L_main457:
;IHMTCV1_0.c,315 :: 		}else if(errov !=1 && count1 == 11){
L__main529:
L__main528:
;IHMTCV1_0.c,328 :: 		}
L_main452:
;IHMTCV1_0.c,330 :: 		}
L_main445:
;IHMTCV1_0.c,332 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main852
	JMP        L_main461
L__main852:
;IHMTCV1_0.c,333 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,334 :: 		}
L_main461:
;IHMTCV1_0.c,335 :: 		}
	JMP        L_main443
L_main444:
;IHMTCV1_0.c,280 :: 		if(Button (&PIND, 3, 0, 0) && menu == 3) {
L__main531:
L__main530:
;IHMTCV1_0.c,339 :: 		if(Button (&PIND, 3, 0, 0) && menu == 4) {
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main853
	JMP        L__main535
L__main853:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main854
	CPI        R16, 4
L__main854:
	BREQ       L__main855
	JMP        L__main534
L__main855:
L__main513:
;IHMTCV1_0.c,341 :: 		msgExecutar();
	CALL       _msgExecutar+0
;IHMTCV1_0.c,343 :: 		while (sair){
L_main465:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main856
	JMP        L_main466
L__main856:
;IHMTCV1_0.c,345 :: 		int count = 1;
; count start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
;IHMTCV1_0.c,349 :: 		int contador = 0;
;IHMTCV1_0.c,350 :: 		int teste = 0;
; teste start address is: 18 (R18)
	LDI        R18, 0
	LDI        R19, 0
;IHMTCV1_0.c,351 :: 		int errov = 1;
; errov start address is: 2 (R2)
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
;IHMTCV1_0.c,352 :: 		int count1 = 0;
; count1 start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
;IHMTCV1_0.c,353 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 16 (R16)
	LDI        R17, 0
;IHMTCV1_0.c,355 :: 		if(buttonEstate == 0){
	CPI        R17, 0
	BRNE       L__main857
	CPI        R16, 0
L__main857:
	BREQ       L__main858
	JMP        L_main467
L__main858:
; buttonEstate end address is: 16 (R16)
;IHMTCV1_0.c,356 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R3
	PUSH       R2
	PUSH       R19
	PUSH       R18
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,357 :: 		Lcd_Out(1,1,"Executando Teste");
	LDI        R27, #lo_addr(?lstr33_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr33_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,358 :: 		Lcd_Out(2,1,"Aguarde...");
	LDI        R27, #lo_addr(?lstr34_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr34_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,359 :: 		iljinIO(count, PINO);
	MOVW       R16, R28
	SUBI       R16, 150
	SBCI       R17, 254
	MOVW       R4, R16
	MOVW       R2, R22
; count end address is: 22 (R22)
	CALL       IHMTCV1_0_iljinIO+0
	POP        R18
	POP        R19
	POP        R2
	POP        R3
;IHMTCV1_0.c,361 :: 		for (contador = 1; contador <= 11; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; teste end address is: 18 (R18)
; count1 end address is: 20 (R20)
; errov end address is: 2 (R2)
; contador end address is: 22 (R22)
	MOVW       R4, R18
	MOVW       R18, R20
L_main468:
; contador start address is: 22 (R22)
; count1 start address is: 18 (R18)
; errov start address is: 2 (R2)
; teste start address is: 4 (R4)
	LDI        R16, 11
	LDI        R17, 0
	CP         R16, R22
	CPC        R17, R23
	BRGE       L__main859
	JMP        L_main469
L__main859:
;IHMTCV1_0.c,363 :: 		count1 ++;
	MOVW       R16, R18
	SUBI       R16, 255
	SBCI       R17, 255
; count1 end address is: 18 (R18)
; count1 start address is: 24 (R24)
	MOVW       R24, R16
;IHMTCV1_0.c,365 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	SUBI       R18, 150
	SBCI       R19, 254
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main860
	CPI        R16, 0
L__main860:
	BRNE       L__main861
	JMP        L_main471
L__main861:
;IHMTCV1_0.c,366 :: 		teste ++;
	MOVW       R16, R4
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R4, R16
;IHMTCV1_0.c,367 :: 		} else{
	JMP        L_main472
L_main471:
;IHMTCV1_0.c,369 :: 		vetErro[errov] = vetorDeErroModuloIO[contador];
	MOVW       R18, R28
	SUBI       R18, 128
	SBCI       R19, 254
	MOVW       R16, R2
	LSL        R16
	ROL        R17
	MOVW       R20, R16
	ADD        R20, R18
	ADC        R21, R19
	MOVW       R18, R22
	LSL        R18
	ROL        R19
	LDI        R16, #lo_addr(IHMTCV1_0_vetorDeErroModuloIO+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorDeErroModuloIO+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	MOVW       R30, R20
	ST         Z+, R16
	ST         Z+, R17
;IHMTCV1_0.c,370 :: 		errov ++;
	MOVW       R16, R2
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R2, R16
; errov end address is: 2 (R2)
; teste end address is: 4 (R4)
;IHMTCV1_0.c,371 :: 		}
L_main472:
;IHMTCV1_0.c,361 :: 		for (contador = 1; contador <= 11; contador ++){
; errov start address is: 2 (R2)
; teste start address is: 4 (R4)
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,372 :: 		}
; count1 end address is: 24 (R24)
; contador end address is: 22 (R22)
	MOVW       R18, R24
	JMP        L_main468
L_main469:
;IHMTCV1_0.c,374 :: 		if(teste == 11){
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R5, R27
	BRNE       L__main862
	LDI        R27, 11
	CP         R4, R27
L__main862:
	BREQ       L__main863
	JMP        L_main473
L__main863:
; count1 end address is: 18 (R18)
; errov end address is: 2 (R2)
; teste end address is: 4 (R4)
;IHMTCV1_0.c,376 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,377 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr35_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr35_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,380 :: 		}else if(errov !=1 && count1 == 11){
	JMP        L_main474
L_main473:
; errov start address is: 2 (R2)
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__main864
	LDI        R27, 1
	CP         R2, R27
L__main864:
	BRNE       L__main865
	JMP        L__main533
L__main865:
	CPI        R19, 0
	BRNE       L__main866
	CPI        R18, 11
L__main866:
	BREQ       L__main867
	JMP        L__main532
L__main867:
; count1 end address is: 18 (R18)
L__main512:
;IHMTCV1_0.c,381 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R3
	PUSH       R2
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
	POP        R2
	POP        R3
;IHMTCV1_0.c,383 :: 		for (contador = 1; contador <errov; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; errov end address is: 2 (R2)
; contador end address is: 22 (R22)
	MOVW       R20, R2
L_main478:
; contador start address is: 22 (R22)
; errov start address is: 20 (R20)
	CP         R22, R20
	CPC        R23, R21
	BRLT       L__main868
	JMP        L_main479
L__main868:
;IHMTCV1_0.c,384 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr36_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr36_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,385 :: 		Lcd_Out(2,1,"VIA:");
	LDI        R27, #lo_addr(?lstr37_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr37_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,386 :: 		erro = vetErro[contador];
	MOVW       R18, R28
	SUBI       R18, 128
	SBCI       R19, 254
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,387 :: 		IntToStr(erro, txt);
	PUSH       R21
	PUSH       R20
	PUSH       R23
	PUSH       R22
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
	POP        R22
	POP        R23
	POP        R20
	POP        R21
;IHMTCV1_0.c,388 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,389 :: 		Delay_ms (1000);
	LDI        R18, 72
	LDI        R17, 6
	LDI        R16, 160
L_main481:
	DEC        R16
	BRNE       L_main481
	DEC        R17
	BRNE       L_main481
	DEC        R18
	BRNE       L_main481
	NOP
	NOP
;IHMTCV1_0.c,383 :: 		for (contador = 1; contador <errov; contador ++){
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,390 :: 		}
; errov end address is: 20 (R20)
; contador end address is: 22 (R22)
	JMP        L_main478
L_main479:
;IHMTCV1_0.c,380 :: 		}else if(errov !=1 && count1 == 11){
L__main533:
L__main532:
;IHMTCV1_0.c,391 :: 		}
L_main474:
;IHMTCV1_0.c,393 :: 		}
L_main467:
;IHMTCV1_0.c,394 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main869
	JMP        L_main483
L__main869:
;IHMTCV1_0.c,395 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,396 :: 		}
L_main483:
;IHMTCV1_0.c,397 :: 		}
	JMP        L_main465
L_main466:
;IHMTCV1_0.c,339 :: 		if(Button (&PIND, 3, 0, 0) && menu == 4) {
L__main535:
L__main534:
;IHMTCV1_0.c,401 :: 		if(Button (&PIND, 3, 0, 0) && menu == 5){
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main870
	JMP        L__main537
L__main870:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main871
	CPI        R16, 5
L__main871:
	BREQ       L__main872
	JMP        L__main536
L__main872:
L__main511:
;IHMTCV1_0.c,402 :: 		msgExecutar();
	CALL       _msgExecutar+0
;IHMTCV1_0.c,401 :: 		if(Button (&PIND, 3, 0, 0) && menu == 5){
L__main537:
L__main536:
;IHMTCV1_0.c,405 :: 		if(Button (&PIND, 3, 0, 0) && menu == 6){
	CLR        R6
	CLR        R5
	LDI        R27, 3
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main873
	JMP        L__main541
L__main873:
	LDS        R16, _menu+0
	LDS        R17, _menu+1
	CPI        R17, 0
	BRNE       L__main874
	CPI        R16, 6
L__main874:
	BREQ       L__main875
	JMP        L__main540
L__main875:
L__main510:
;IHMTCV1_0.c,406 :: 		msgExecutar();
	CALL       _msgExecutar+0
;IHMTCV1_0.c,408 :: 		while (sair){
L_main490:
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	MOV        R27, R16
	OR         R27, R17
	BRNE       L__main876
	JMP        L_main491
L__main876:
;IHMTCV1_0.c,409 :: 		int numVias = 18;
; numVias start address is: 22 (R22)
	LDI        R22, 18
	LDI        R23, 0
;IHMTCV1_0.c,410 :: 		int count = 1;
; count start address is: 2 (R2)
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
;IHMTCV1_0.c,414 :: 		int contador = 0;
;IHMTCV1_0.c,415 :: 		int teste = 0;
; teste start address is: 18 (R18)
	LDI        R18, 0
	LDI        R19, 0
;IHMTCV1_0.c,416 :: 		int errov = 1;
; errov start address is: 20 (R20)
	LDI        R20, 1
	LDI        R21, 0
;IHMTCV1_0.c,417 :: 		int count1 = 0;
; count1 start address is: 24 (R24)
	LDI        R24, 0
	LDI        R25, 0
;IHMTCV1_0.c,418 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 16 (R16)
	LDI        R17, 0
;IHMTCV1_0.c,420 :: 		if(buttonEstate == 0){
	CPI        R17, 0
	BRNE       L__main877
	CPI        R16, 0
L__main877:
	BREQ       L__main878
	JMP        L_main492
L__main878:
; buttonEstate end address is: 16 (R16)
;IHMTCV1_0.c,421 :: 		msgExecutando();
	PUSH       R19
	PUSH       R18
	PUSH       R3
	PUSH       R2
	CALL       _msgExecutando+0
	POP        R2
	POP        R3
;IHMTCV1_0.c,423 :: 		celescIO(count, PINO);
	MOVW       R16, R28
	SUBI       R16, 106
	SBCI       R17, 254
	MOVW       R4, R16
; count end address is: 2 (R2)
	CALL       IHMTCV1_0_celescIO+0
	POP        R18
	POP        R19
;IHMTCV1_0.c,427 :: 		for (contador = 1; contador <= numVias; contador ++){
; contador start address is: 16 (R16)
	LDI        R16, 1
	LDI        R17, 0
; teste end address is: 18 (R18)
; count1 end address is: 24 (R24)
; contador end address is: 16 (R16)
; numVias end address is: 22 (R22)
; errov end address is: 20 (R20)
	MOVW       R6, R18
	MOVW       R18, R24
	MOVW       R24, R16
	MOVW       R4, R20
L_main493:
; contador start address is: 24 (R24)
; count1 start address is: 18 (R18)
; errov start address is: 4 (R4)
; teste start address is: 6 (R6)
; numVias start address is: 22 (R22)
	CP         R22, R24
	CPC        R23, R25
	BRGE       L__main879
	JMP        L_main494
L__main879:
;IHMTCV1_0.c,428 :: 		count1 ++;
	MOVW       R16, R18
	SUBI       R16, 255
	SBCI       R17, 255
; count1 end address is: 18 (R18)
; count1 start address is: 2 (R2)
	MOVW       R2, R16
;IHMTCV1_0.c,430 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	SUBI       R18, 106
	SBCI       R19, 254
	MOVW       R16, R24
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main880
	CPI        R16, 0
L__main880:
	BRNE       L__main881
	JMP        L_main496
L__main881:
;IHMTCV1_0.c,431 :: 		teste ++;
	MOVW       R16, R6
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R6, R16
;IHMTCV1_0.c,432 :: 		} else{
	JMP        L_main497
L_main496:
;IHMTCV1_0.c,433 :: 		vetErro[errov] = vetorDeErroModuloCelesc[contador];
	MOVW       R18, R28
	SUBI       R18, 68
	SBCI       R19, 254
	MOVW       R16, R4
	LSL        R16
	ROL        R17
	MOVW       R20, R16
	ADD        R20, R18
	ADC        R21, R19
	MOVW       R18, R24
	LSL        R18
	ROL        R19
	LDI        R16, #lo_addr(IHMTCV1_0_vetorDeErroModuloCelesc+0)
	LDI        R17, hi_addr(IHMTCV1_0_vetorDeErroModuloCelesc+0)
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	MOVW       R30, R20
	ST         Z+, R16
	ST         Z+, R17
;IHMTCV1_0.c,434 :: 		errov ++;
	MOVW       R16, R4
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R4, R16
; errov end address is: 4 (R4)
; teste end address is: 6 (R6)
;IHMTCV1_0.c,435 :: 		}
L_main497:
;IHMTCV1_0.c,427 :: 		for (contador = 1; contador <= numVias; contador ++){
; errov start address is: 4 (R4)
; teste start address is: 6 (R6)
	MOVW       R16, R24
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R24, R16
;IHMTCV1_0.c,436 :: 		}
; numVias end address is: 22 (R22)
; count1 end address is: 2 (R2)
; contador end address is: 24 (R24)
	MOVW       R18, R2
	JMP        L_main493
L_main494:
;IHMTCV1_0.c,439 :: 		if(teste == 18){
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R7, R27
	BRNE       L__main882
	LDI        R27, 18
	CP         R6, R27
L__main882:
	BREQ       L__main883
	JMP        L_main498
L__main883:
; count1 end address is: 18 (R18)
; errov end address is: 4 (R4)
; teste end address is: 6 (R6)
;IHMTCV1_0.c,441 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,442 :: 		Lcd_Out(1,5,"Teste OK!");
	LDI        R27, #lo_addr(?lstr38_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr38_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,445 :: 		}else if(errov !=1 && count1 == 18){
	JMP        L_main499
L_main498:
; errov start address is: 4 (R4)
; count1 start address is: 18 (R18)
	LDI        R27, 0
	CP         R5, R27
	BRNE       L__main884
	LDI        R27, 1
	CP         R4, R27
L__main884:
	BRNE       L__main885
	JMP        L__main539
L__main885:
	CPI        R19, 0
	BRNE       L__main886
	CPI        R18, 18
L__main886:
	BREQ       L__main887
	JMP        L__main538
L__main887:
; count1 end address is: 18 (R18)
L__main509:
;IHMTCV1_0.c,446 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,448 :: 		for (contador = 1; contador <errov; contador ++){
; contador start address is: 22 (R22)
	LDI        R22, 1
	LDI        R23, 0
; errov end address is: 4 (R4)
; contador end address is: 22 (R22)
	MOVW       R20, R4
L_main503:
; contador start address is: 22 (R22)
; errov start address is: 20 (R20)
	CP         R22, R20
	CPC        R23, R21
	BRLT       L__main888
	JMP        L_main504
L__main888:
;IHMTCV1_0.c,449 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr39_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr39_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,450 :: 		Lcd_Out(2,1,"VIA:");
	LDI        R27, #lo_addr(?lstr40_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr40_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,451 :: 		erro = vetErro[contador];
	MOVW       R18, R28
	SUBI       R18, 68
	SBCI       R19, 254
	MOVW       R16, R22
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	STS        _erro+0, R16
	STS        _erro+1, R17
;IHMTCV1_0.c,452 :: 		IntToStr(erro, txt);
	PUSH       R21
	PUSH       R20
	PUSH       R23
	PUSH       R22
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R16
	CALL       _IntToStr+0
	POP        R22
	POP        R23
	POP        R20
	POP        R21
;IHMTCV1_0.c,453 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,454 :: 		Delay_ms (1000);
	LDI        R18, 72
	LDI        R17, 6
	LDI        R16, 160
L_main506:
	DEC        R16
	BRNE       L_main506
	DEC        R17
	BRNE       L_main506
	DEC        R18
	BRNE       L_main506
	NOP
	NOP
;IHMTCV1_0.c,448 :: 		for (contador = 1; contador <errov; contador ++){
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,457 :: 		}
; errov end address is: 20 (R20)
; contador end address is: 22 (R22)
	JMP        L_main503
L_main504:
;IHMTCV1_0.c,445 :: 		}else if(errov !=1 && count1 == 18){
L__main539:
L__main538:
;IHMTCV1_0.c,458 :: 		}
L_main499:
;IHMTCV1_0.c,460 :: 		}
L_main492:
;IHMTCV1_0.c,462 :: 		if(Button (&PIND, 2, 0, 0)){
	CLR        R6
	CLR        R5
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(PIND+0)
	MOV        R2, R27
	LDI        R27, hi_addr(PIND+0)
	MOV        R3, R27
	CALL       _Button+0
	TST        R16
	BRNE       L__main889
	JMP        L_main508
L__main889:
;IHMTCV1_0.c,463 :: 		sair++;
	LDS        R16, _sair+0
	LDS        R17, _sair+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _sair+0, R16
	STS        _sair+1, R17
;IHMTCV1_0.c,465 :: 		}
L_main508:
;IHMTCV1_0.c,467 :: 		}
	JMP        L_main490
L_main491:
;IHMTCV1_0.c,405 :: 		if(Button (&PIND, 3, 0, 0) && menu == 6){
L__main541:
L__main540:
;IHMTCV1_0.c,470 :: 		} while(1);
	JMP        L_main367
;IHMTCV1_0.c,472 :: 		}
L_end_main:
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
