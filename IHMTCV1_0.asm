
_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27
	IN         R28, SPL+0
	IN         R29, SPL+1
	SUBI       R28, 82
	SBCI       R29, 0
	OUT        SPL+0, R28
	OUT        SPL+1, R29
	ADIW       R28, 1

;IHMTCV1_0.c,46 :: 		void main() {
;IHMTCV1_0.c,47 :: 		DDRD = DDRD & (~(1<<0)); // Sensor de porta
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	IN         R27, DDRD+0
	CBR        R27, 1
	OUT        DDRD+0, R27
;IHMTCV1_0.c,48 :: 		DDRA = DDRA | (1 <<3);  //BACK display
	IN         R16, DDRA+0
	ORI        R16, 8
	OUT        DDRA+0, R16
;IHMTCV1_0.c,49 :: 		DDRA = DDRA | (1 <<1); //RD/RW Didplay
	ORI        R16, 2
	OUT        DDRA+0, R16
;IHMTCV1_0.c,50 :: 		PORTA = PORTA |(1<<3); //BACk inicializado acesso;
	IN         R16, PORTA+0
	ORI        R16, 8
	OUT        PORTA+0, R16
;IHMTCV1_0.c,51 :: 		PORTA = PORTA |(0<<1); //RW Display
	OUT        PORTA+0, R16
;IHMTCV1_0.c,52 :: 		PORTD = PORTD |(0<<0); // local remoto como pull up  ou tristate
;IHMTCV1_0.c,53 :: 		DDRG = DDRG & (~(1<<0));  // leitura dos cabos
	LDS        R16, DDRG+0
	ANDI       R16, 254
	STS        DDRG+0, R16
;IHMTCV1_0.c,54 :: 		DDRE = 0XFF;  // PORT E setado como saída.
	LDI        R27, 255
	OUT        DDRE+0, R27
;IHMTCV1_0.c,55 :: 		DDRB = 0XFF;  // PORT B setado como saida
	LDI        R27, 255
	OUT        DDRB+0, R27
;IHMTCV1_0.c,56 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;IHMTCV1_0.c,57 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,58 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	LDI        R27, 12
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,59 :: 		Lcd_Out(1,1,"LUPA TECNOLOGIA");
	LDI        R27, #lo_addr(?lstr1_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr1_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,60 :: 		lcd_Out(2,1,"Inicializando...");
	LDI        R27, #lo_addr(?lstr2_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr2_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,61 :: 		Delay_ms (2200);
	LDI        R18, 157
	LDI        R17, 64
	LDI        R16, 150
L_main0:
	DEC        R16
	BRNE       L_main0
	DEC        R17
	BRNE       L_main0
	DEC        R18
	BRNE       L_main0
	NOP
	NOP
;IHMTCV1_0.c,62 :: 		lcd_Out(2, 1,"Testador V0.0.1");
	LDI        R27, #lo_addr(?lstr3_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr3_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,65 :: 		while (1){
L_main2:
;IHMTCV1_0.c,66 :: 		int count = 1;
; count start address is: 17 (R17)
	LDI        R17, 1
	LDI        R18, 0
;IHMTCV1_0.c,69 :: 		int contador = 0;
;IHMTCV1_0.c,70 :: 		int teste = 0;
; teste start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
;IHMTCV1_0.c,71 :: 		buttonEstate = PIND & (1<<0);
	IN         R16, PIND+0
	ANDI       R16, 1
; buttonEstate start address is: 22 (R22)
	MOV        R22, R16
	LDI        R23, 0
;IHMTCV1_0.c,74 :: 		if(buttonEstate == 0){
	CPI        R23, 0
	BRNE       L__main134
	CPI        R22, 0
L__main134:
	BREQ       L__main135
	JMP        L_main4
L__main135:
; buttonEstate end address is: 22 (R22)
;IHMTCV1_0.c,76 :: 		Lcd_Cmd(_LCD_CLEAR);
	PUSH       R18
	PUSH       R17
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,77 :: 		Lcd_Out(1,1,"Executando Teste");
	LDI        R27, #lo_addr(?lstr4_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr4_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
	POP        R17
	POP        R18
;IHMTCV1_0.c,79 :: 		switch (count){
	JMP        L_main5
; count end address is: 17 (R17)
;IHMTCV1_0.c,81 :: 		case 1:
L_main7:
;IHMTCV1_0.c,82 :: 		Lcd_Out(2,1,"PINO 1");
	LDI        R27, #lo_addr(?lstr5_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr5_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,83 :: 		PORTB = 0b00010101;
	LDI        R27, 21
	OUT        PORTB+0, R27
;IHMTCV1_0.c,84 :: 		PORTE = 0b01001000;
	LDI        R27, 72
	OUT        PORTE+0, R27
;IHMTCV1_0.c,85 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main8:
	DEC        R16
	BRNE       L_main8
	DEC        R17
	BRNE       L_main8
	DEC        R18
	BRNE       L_main8
	NOP
;IHMTCV1_0.c,86 :: 		PINO[1] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 254
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,89 :: 		case 2:
L_main10:
;IHMTCV1_0.c,91 :: 		Lcd_Out(2,1,"PINO 2");
	LDI        R27, #lo_addr(?lstr6_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr6_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,92 :: 		PORTE = 0b01001001;
	LDI        R27, 73
	OUT        PORTE+0, R27
;IHMTCV1_0.c,93 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main11:
	DEC        R16
	BRNE       L_main11
	DEC        R17
	BRNE       L_main11
	DEC        R18
	BRNE       L_main11
	NOP
;IHMTCV1_0.c,94 :: 		PINO[2] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 252
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,98 :: 		case 3:
L_main13:
;IHMTCV1_0.c,99 :: 		Lcd_Out(2,1,"PINO 3");
	LDI        R27, #lo_addr(?lstr7_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr7_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,100 :: 		PORTE = 0b01001010;
	LDI        R27, 74
	OUT        PORTE+0, R27
;IHMTCV1_0.c,101 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main14:
	DEC        R16
	BRNE       L_main14
	DEC        R17
	BRNE       L_main14
	DEC        R18
	BRNE       L_main14
	NOP
;IHMTCV1_0.c,102 :: 		PINO[3] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 250
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,106 :: 		case 4:
L_main16:
;IHMTCV1_0.c,107 :: 		Lcd_Out(2,1,"PINO 4");
	LDI        R27, #lo_addr(?lstr8_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr8_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,108 :: 		PORTE = 0b01001011;
	LDI        R27, 75
	OUT        PORTE+0, R27
;IHMTCV1_0.c,109 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main17:
	DEC        R16
	BRNE       L_main17
	DEC        R17
	BRNE       L_main17
	DEC        R18
	BRNE       L_main17
	NOP
;IHMTCV1_0.c,110 :: 		PINO[4] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 248
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,113 :: 		case 5:
L_main19:
;IHMTCV1_0.c,114 :: 		Lcd_Out(2,1,"PINO 5");
	LDI        R27, #lo_addr(?lstr9_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr9_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,115 :: 		PORTE = 0b01001100;
	LDI        R27, 76
	OUT        PORTE+0, R27
;IHMTCV1_0.c,116 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main20:
	DEC        R16
	BRNE       L_main20
	DEC        R17
	BRNE       L_main20
	DEC        R18
	BRNE       L_main20
	NOP
;IHMTCV1_0.c,117 :: 		PINO[5] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 246
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,120 :: 		case 6:
L_main22:
;IHMTCV1_0.c,121 :: 		Lcd_Out(2,1,"PINO 6");
	LDI        R27, #lo_addr(?lstr10_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr10_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,122 :: 		PORTE = 0b01001101;
	LDI        R27, 77
	OUT        PORTE+0, R27
;IHMTCV1_0.c,123 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main23:
	DEC        R16
	BRNE       L_main23
	DEC        R17
	BRNE       L_main23
	DEC        R18
	BRNE       L_main23
	NOP
;IHMTCV1_0.c,124 :: 		PINO[6] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 244
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,127 :: 		case 7:
L_main25:
;IHMTCV1_0.c,128 :: 		Lcd_Out(2,1,"PINO 7");
	LDI        R27, #lo_addr(?lstr11_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr11_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,129 :: 		PORTE = 0b01001110;
	LDI        R27, 78
	OUT        PORTE+0, R27
;IHMTCV1_0.c,130 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main26:
	DEC        R16
	BRNE       L_main26
	DEC        R17
	BRNE       L_main26
	DEC        R18
	BRNE       L_main26
	NOP
;IHMTCV1_0.c,131 :: 		PINO[7] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 242
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,134 :: 		case 8:
L_main28:
;IHMTCV1_0.c,135 :: 		Lcd_Out(2,1,"PINO 8");
	LDI        R27, #lo_addr(?lstr12_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr12_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,136 :: 		PORTE = 0b01001111;
	LDI        R27, 79
	OUT        PORTE+0, R27
;IHMTCV1_0.c,137 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main29:
	DEC        R16
	BRNE       L_main29
	DEC        R17
	BRNE       L_main29
	DEC        R18
	BRNE       L_main29
	NOP
;IHMTCV1_0.c,138 :: 		PINO[8] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 240
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,141 :: 		case 9:
L_main31:
;IHMTCV1_0.c,142 :: 		Lcd_Out(2,1,"PINO 9");
	LDI        R27, #lo_addr(?lstr13_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr13_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,143 :: 		PORTE = 0b00110000;
	LDI        R27, 48
	OUT        PORTE+0, R27
;IHMTCV1_0.c,144 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main32:
	DEC        R16
	BRNE       L_main32
	DEC        R17
	BRNE       L_main32
	DEC        R18
	BRNE       L_main32
	NOP
;IHMTCV1_0.c,145 :: 		PINO[9] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 238
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,148 :: 		case 10:
L_main34:
;IHMTCV1_0.c,149 :: 		Lcd_Out(2,1,"PINO 10");
	LDI        R27, #lo_addr(?lstr14_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr14_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,150 :: 		PORTE = 0b00110001;
	LDI        R27, 49
	OUT        PORTE+0, R27
;IHMTCV1_0.c,151 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main35:
	DEC        R16
	BRNE       L_main35
	DEC        R17
	BRNE       L_main35
	DEC        R18
	BRNE       L_main35
	NOP
;IHMTCV1_0.c,152 :: 		PINO[10] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 236
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,155 :: 		case 11:
L_main37:
;IHMTCV1_0.c,156 :: 		Lcd_Out(2,1,"PINO 11");
	LDI        R27, #lo_addr(?lstr15_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr15_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,157 :: 		PORTE = 0b00110010;
	LDI        R27, 50
	OUT        PORTE+0, R27
;IHMTCV1_0.c,158 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main38:
	DEC        R16
	BRNE       L_main38
	DEC        R17
	BRNE       L_main38
	DEC        R18
	BRNE       L_main38
	NOP
;IHMTCV1_0.c,159 :: 		PINO[11] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 234
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,162 :: 		case 12:
L_main40:
;IHMTCV1_0.c,163 :: 		Lcd_Out(2,1,"PINO 12");
	LDI        R27, #lo_addr(?lstr16_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr16_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,164 :: 		PORTE = 0b00110011;
	LDI        R27, 51
	OUT        PORTE+0, R27
;IHMTCV1_0.c,165 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main41:
	DEC        R16
	BRNE       L_main41
	DEC        R17
	BRNE       L_main41
	DEC        R18
	BRNE       L_main41
	NOP
;IHMTCV1_0.c,166 :: 		PINO[12] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 232
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,169 :: 		case 13:
L_main43:
;IHMTCV1_0.c,170 :: 		Lcd_Out(2,1,"PINO 13");
	LDI        R27, #lo_addr(?lstr17_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr17_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,171 :: 		PORTE = 0b00110100;
	LDI        R27, 52
	OUT        PORTE+0, R27
;IHMTCV1_0.c,172 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main44:
	DEC        R16
	BRNE       L_main44
	DEC        R17
	BRNE       L_main44
	DEC        R18
	BRNE       L_main44
	NOP
;IHMTCV1_0.c,173 :: 		PINO[13] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 230
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,176 :: 		case 14:
L_main46:
;IHMTCV1_0.c,177 :: 		Lcd_Out(2,1,"PINO 14");
	LDI        R27, #lo_addr(?lstr18_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr18_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,178 :: 		PORTE = 0b00110101;
	LDI        R27, 53
	OUT        PORTE+0, R27
;IHMTCV1_0.c,179 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main47:
	DEC        R16
	BRNE       L_main47
	DEC        R17
	BRNE       L_main47
	DEC        R18
	BRNE       L_main47
	NOP
;IHMTCV1_0.c,180 :: 		PINO[14] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 228
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,183 :: 		case 15:
L_main49:
;IHMTCV1_0.c,184 :: 		Lcd_Out(2,1,"PINO 15");
	LDI        R27, #lo_addr(?lstr19_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr19_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,185 :: 		PORTE = 0b00110110;
	LDI        R27, 54
	OUT        PORTE+0, R27
;IHMTCV1_0.c,186 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main50:
	DEC        R16
	BRNE       L_main50
	DEC        R17
	BRNE       L_main50
	DEC        R18
	BRNE       L_main50
	NOP
;IHMTCV1_0.c,187 :: 		PINO[15] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 226
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,190 :: 		case 16:
L_main52:
;IHMTCV1_0.c,191 :: 		Lcd_Out(2,1,"PINO 16");
	LDI        R27, #lo_addr(?lstr20_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr20_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,192 :: 		PORTE = 0b00110111;
	LDI        R27, 55
	OUT        PORTE+0, R27
;IHMTCV1_0.c,193 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main53:
	DEC        R16
	BRNE       L_main53
	DEC        R17
	BRNE       L_main53
	DEC        R18
	BRNE       L_main53
	NOP
;IHMTCV1_0.c,194 :: 		PINO[16] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 224
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,197 :: 		case 17:
L_main55:
;IHMTCV1_0.c,198 :: 		Lcd_Out(2,1,"PINO 17");
	LDI        R27, #lo_addr(?lstr21_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr21_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,199 :: 		PORTE = 0b11010000;
	LDI        R27, 208
	OUT        PORTE+0, R27
;IHMTCV1_0.c,200 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,201 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main56:
	DEC        R16
	BRNE       L_main56
	DEC        R17
	BRNE       L_main56
	DEC        R18
	BRNE       L_main56
	NOP
;IHMTCV1_0.c,202 :: 		PINO[17] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 222
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,205 :: 		case 18:
L_main58:
;IHMTCV1_0.c,206 :: 		Lcd_Out(2,1,"PINO 18");
	LDI        R27, #lo_addr(?lstr22_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr22_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,207 :: 		PORTE = 0b11010001;
	LDI        R27, 209
	OUT        PORTE+0, R27
;IHMTCV1_0.c,208 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,209 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main59:
	DEC        R16
	BRNE       L_main59
	DEC        R17
	BRNE       L_main59
	DEC        R18
	BRNE       L_main59
	NOP
;IHMTCV1_0.c,210 :: 		PINO[18] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 220
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,213 :: 		case 19:
L_main61:
;IHMTCV1_0.c,214 :: 		Lcd_Out(2,1,"PINO 19");
	LDI        R27, #lo_addr(?lstr23_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr23_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,215 :: 		PORTE = 0b11010010;
	LDI        R27, 210
	OUT        PORTE+0, R27
;IHMTCV1_0.c,216 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,217 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main62:
	DEC        R16
	BRNE       L_main62
	DEC        R17
	BRNE       L_main62
	DEC        R18
	BRNE       L_main62
	NOP
;IHMTCV1_0.c,218 :: 		PINO[19] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 218
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,221 :: 		case 20:
L_main64:
;IHMTCV1_0.c,222 :: 		Lcd_Out(2,1,"PINO 20");
	LDI        R27, #lo_addr(?lstr24_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr24_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,223 :: 		PORTE = 0b11010011;
	LDI        R27, 211
	OUT        PORTE+0, R27
;IHMTCV1_0.c,224 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,225 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main65:
	DEC        R16
	BRNE       L_main65
	DEC        R17
	BRNE       L_main65
	DEC        R18
	BRNE       L_main65
	NOP
;IHMTCV1_0.c,226 :: 		PINO[20] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 216
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,229 :: 		case 21:
L_main67:
;IHMTCV1_0.c,230 :: 		Lcd_Out(2,1,"PINO 21");
	LDI        R27, #lo_addr(?lstr25_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr25_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,231 :: 		PORTE = 0b11010100;
	LDI        R27, 212
	OUT        PORTE+0, R27
;IHMTCV1_0.c,232 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,233 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main68:
	DEC        R16
	BRNE       L_main68
	DEC        R17
	BRNE       L_main68
	DEC        R18
	BRNE       L_main68
	NOP
;IHMTCV1_0.c,234 :: 		PINO[21] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 214
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,237 :: 		case 22:
L_main70:
;IHMTCV1_0.c,238 :: 		Lcd_Out(2,1,"PINO 22");
	LDI        R27, #lo_addr(?lstr26_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr26_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,239 :: 		PORTE = 0b11010101;
	LDI        R27, 213
	OUT        PORTE+0, R27
;IHMTCV1_0.c,240 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,241 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main71:
	DEC        R16
	BRNE       L_main71
	DEC        R17
	BRNE       L_main71
	DEC        R18
	BRNE       L_main71
	NOP
;IHMTCV1_0.c,242 :: 		PINO[22] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 212
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,245 :: 		case 23:
L_main73:
;IHMTCV1_0.c,246 :: 		Lcd_Out(2,1,"PINO 23");
	LDI        R27, #lo_addr(?lstr27_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr27_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,247 :: 		PORTE = 0b11010110;
	LDI        R27, 214
	OUT        PORTE+0, R27
;IHMTCV1_0.c,248 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,249 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main74:
	DEC        R16
	BRNE       L_main74
	DEC        R17
	BRNE       L_main74
	DEC        R18
	BRNE       L_main74
	NOP
;IHMTCV1_0.c,250 :: 		PINO[23] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 210
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,253 :: 		case 24:
L_main76:
;IHMTCV1_0.c,254 :: 		Lcd_Out(2,1,"PINO 24");
	LDI        R27, #lo_addr(?lstr28_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr28_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,255 :: 		PORTE = 0b11010111;
	LDI        R27, 215
	OUT        PORTE+0, R27
;IHMTCV1_0.c,256 :: 		PORTB = 0b00010100;
	LDI        R27, 20
	OUT        PORTB+0, R27
;IHMTCV1_0.c,257 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main77:
	DEC        R16
	BRNE       L_main77
	DEC        R17
	BRNE       L_main77
	DEC        R18
	BRNE       L_main77
	NOP
;IHMTCV1_0.c,258 :: 		PINO[24] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 208
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,261 :: 		case 25:
L_main79:
;IHMTCV1_0.c,262 :: 		Lcd_Out(2,1,"PINO 25");
	LDI        R27, #lo_addr(?lstr29_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr29_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,263 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;IHMTCV1_0.c,264 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,265 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main80:
	DEC        R16
	BRNE       L_main80
	DEC        R17
	BRNE       L_main80
	DEC        R18
	BRNE       L_main80
	NOP
;IHMTCV1_0.c,266 :: 		PINO[25] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 206
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,269 :: 		case 26:
L_main82:
;IHMTCV1_0.c,270 :: 		Lcd_Out(2,1,"PINO 26");
	LDI        R27, #lo_addr(?lstr30_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr30_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,271 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;IHMTCV1_0.c,272 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,273 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main83:
	DEC        R16
	BRNE       L_main83
	DEC        R17
	BRNE       L_main83
	DEC        R18
	BRNE       L_main83
	NOP
;IHMTCV1_0.c,274 :: 		PINO[26] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 204
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,277 :: 		case 27:
L_main85:
;IHMTCV1_0.c,278 :: 		Lcd_Out(2,1,"PINO 27");
	LDI        R27, #lo_addr(?lstr31_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr31_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,279 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;IHMTCV1_0.c,280 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,281 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main86:
	DEC        R16
	BRNE       L_main86
	DEC        R17
	BRNE       L_main86
	DEC        R18
	BRNE       L_main86
	NOP
;IHMTCV1_0.c,282 :: 		PINO[27] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 202
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,285 :: 		case 28:
L_main88:
;IHMTCV1_0.c,286 :: 		Lcd_Out(2,1,"PINO 28");
	LDI        R27, #lo_addr(?lstr32_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr32_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,287 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;IHMTCV1_0.c,288 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,289 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main89:
	DEC        R16
	BRNE       L_main89
	DEC        R17
	BRNE       L_main89
	DEC        R18
	BRNE       L_main89
	NOP
;IHMTCV1_0.c,290 :: 		PINO[28] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 200
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,293 :: 		case 29:
L_main91:
;IHMTCV1_0.c,294 :: 		Lcd_Out(2,1,"PINO 29");
	LDI        R27, #lo_addr(?lstr33_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr33_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,295 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;IHMTCV1_0.c,296 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,297 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main92:
	DEC        R16
	BRNE       L_main92
	DEC        R17
	BRNE       L_main92
	DEC        R18
	BRNE       L_main92
	NOP
;IHMTCV1_0.c,298 :: 		PINO[29] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 198
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,301 :: 		case 30:
L_main94:
;IHMTCV1_0.c,302 :: 		Lcd_Out(2,1,"PINO 30");
	LDI        R27, #lo_addr(?lstr34_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr34_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,303 :: 		PORTE = 0b01010101;
	LDI        R27, 85
	OUT        PORTE+0, R27
;IHMTCV1_0.c,304 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,305 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main95:
	DEC        R16
	BRNE       L_main95
	DEC        R17
	BRNE       L_main95
	DEC        R18
	BRNE       L_main95
	NOP
;IHMTCV1_0.c,306 :: 		PINO[30] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 196
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,309 :: 		case 31:
L_main97:
;IHMTCV1_0.c,310 :: 		Lcd_Out(2,1,"PINO 31");
	LDI        R27, #lo_addr(?lstr35_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr35_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,311 :: 		PORTE = 0b01010110;
	LDI        R27, 86
	OUT        PORTE+0, R27
;IHMTCV1_0.c,312 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,313 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main98:
	DEC        R16
	BRNE       L_main98
	DEC        R17
	BRNE       L_main98
	DEC        R18
	BRNE       L_main98
	NOP
;IHMTCV1_0.c,314 :: 		PINO[31] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 194
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,317 :: 		case 32:
L_main100:
;IHMTCV1_0.c,318 :: 		Lcd_Out(2,1,"PINO 32");
	LDI        R27, #lo_addr(?lstr36_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr36_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,319 :: 		PORTE = 0b01010111;
	LDI        R27, 87
	OUT        PORTE+0, R27
;IHMTCV1_0.c,320 :: 		PORTB = 0b00010011;
	LDI        R27, 19
	OUT        PORTB+0, R27
;IHMTCV1_0.c,321 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main101:
	DEC        R16
	BRNE       L_main101
	DEC        R17
	BRNE       L_main101
	DEC        R18
	BRNE       L_main101
	NOP
;IHMTCV1_0.c,322 :: 		PINO[32] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 192
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,325 :: 		case 33:
L_main103:
;IHMTCV1_0.c,326 :: 		Lcd_Out(2,1,"PINO 33");
	LDI        R27, #lo_addr(?lstr37_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr37_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,327 :: 		PORTE = 0b01010000;
	LDI        R27, 80
	OUT        PORTE+0, R27
;IHMTCV1_0.c,328 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,329 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main104:
	DEC        R16
	BRNE       L_main104
	DEC        R17
	BRNE       L_main104
	DEC        R18
	BRNE       L_main104
	NOP
;IHMTCV1_0.c,330 :: 		PINO[33] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 190
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,333 :: 		case 34:
L_main106:
;IHMTCV1_0.c,334 :: 		Lcd_Out(2,1,"PINO 34");
	LDI        R27, #lo_addr(?lstr38_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr38_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,335 :: 		PORTE = 0b01010001;
	LDI        R27, 81
	OUT        PORTE+0, R27
;IHMTCV1_0.c,336 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,337 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main107:
	DEC        R16
	BRNE       L_main107
	DEC        R17
	BRNE       L_main107
	DEC        R18
	BRNE       L_main107
	NOP
;IHMTCV1_0.c,338 :: 		PINO[34] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 188
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,341 :: 		case 35:
L_main109:
;IHMTCV1_0.c,342 :: 		Lcd_Out(2,1,"PINO 35");
	LDI        R27, #lo_addr(?lstr39_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr39_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,343 :: 		PORTE = 0b01010010;
	LDI        R27, 82
	OUT        PORTE+0, R27
;IHMTCV1_0.c,344 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,345 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main110:
	DEC        R16
	BRNE       L_main110
	DEC        R17
	BRNE       L_main110
	DEC        R18
	BRNE       L_main110
	NOP
;IHMTCV1_0.c,346 :: 		PINO[35] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 186
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,349 :: 		case 36:
L_main112:
;IHMTCV1_0.c,350 :: 		Lcd_Out(2,1,"PINO 36");
	LDI        R27, #lo_addr(?lstr40_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr40_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,351 :: 		PORTE = 0b01010011;
	LDI        R27, 83
	OUT        PORTE+0, R27
;IHMTCV1_0.c,352 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,353 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main113:
	DEC        R16
	BRNE       L_main113
	DEC        R17
	BRNE       L_main113
	DEC        R18
	BRNE       L_main113
	NOP
;IHMTCV1_0.c,354 :: 		PINO[36] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 184
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,357 :: 		case 37:
L_main115:
;IHMTCV1_0.c,358 :: 		Lcd_Out(2,1,"PINO 37");
	LDI        R27, #lo_addr(?lstr41_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr41_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,359 :: 		PORTE = 0b01010100;
	LDI        R27, 84
	OUT        PORTE+0, R27
;IHMTCV1_0.c,360 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,361 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main116:
	DEC        R16
	BRNE       L_main116
	DEC        R17
	BRNE       L_main116
	DEC        R18
	BRNE       L_main116
	NOP
;IHMTCV1_0.c,362 :: 		PINO[37] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 182
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,365 :: 		case 38:
L_main118:
;IHMTCV1_0.c,366 :: 		Lcd_Out(2,1,"PINO 38");
	LDI        R27, #lo_addr(?lstr42_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr42_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,367 :: 		PORTE = 0b01010101;
	LDI        R27, 85
	OUT        PORTE+0, R27
;IHMTCV1_0.c,368 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,369 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main119:
	DEC        R16
	BRNE       L_main119
	DEC        R17
	BRNE       L_main119
	DEC        R18
	BRNE       L_main119
	NOP
;IHMTCV1_0.c,370 :: 		PINO[38] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 180
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,373 :: 		case 39:
L_main121:
;IHMTCV1_0.c,374 :: 		Lcd_Out(2,1,"PINO 39");
	LDI        R27, #lo_addr(?lstr43_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr43_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,375 :: 		PORTE = 0b01010110;
	LDI        R27, 86
	OUT        PORTE+0, R27
;IHMTCV1_0.c,376 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,377 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main122:
	DEC        R16
	BRNE       L_main122
	DEC        R17
	BRNE       L_main122
	DEC        R18
	BRNE       L_main122
	NOP
;IHMTCV1_0.c,378 :: 		PINO[39] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 178
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,381 :: 		case 40:
L_main124:
;IHMTCV1_0.c,382 :: 		Lcd_Out(2,1,"PINO 40");
	LDI        R27, #lo_addr(?lstr44_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr44_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,383 :: 		PORTE = 0b01010111;
	LDI        R27, 87
	OUT        PORTE+0, R27
;IHMTCV1_0.c,384 :: 		PORTB = 0b00001101;
	LDI        R27, 13
	OUT        PORTB+0, R27
;IHMTCV1_0.c,385 :: 		Delay_ms(tempo);
	LDI        R18, 4
	LDI        R17, 142
	LDI        R16, 19
L_main125:
	DEC        R16
	BRNE       L_main125
	DEC        R17
	BRNE       L_main125
	DEC        R18
	BRNE       L_main125
	NOP
;IHMTCV1_0.c,386 :: 		PINO[40] = PING & (1<<0);
	MOVW       R16, R28
	MOVW       R18, R16
	SUBI       R18, 176
	SBCI       R19, 255
	LDS        R16, PING+0
	ANDI       R16, 1
	MOVW       R30, R18
	ST         Z+, R16
	LDI        R27, 0
	ST         Z+, R27
;IHMTCV1_0.c,389 :: 		}
	JMP        L_main6
L_main5:
; count start address is: 17 (R17)
	CPI        R18, 0
	BRNE       L__main136
	CPI        R17, 1
L__main136:
	BRNE       L__main137
	JMP        L_main7
L__main137:
	CPI        R18, 0
	BRNE       L__main138
	CPI        R17, 2
L__main138:
	BRNE       L__main139
	JMP        L_main10
L__main139:
	CPI        R18, 0
	BRNE       L__main140
	CPI        R17, 3
L__main140:
	BRNE       L__main141
	JMP        L_main13
L__main141:
	CPI        R18, 0
	BRNE       L__main142
	CPI        R17, 4
L__main142:
	BRNE       L__main143
	JMP        L_main16
L__main143:
	CPI        R18, 0
	BRNE       L__main144
	CPI        R17, 5
L__main144:
	BRNE       L__main145
	JMP        L_main19
L__main145:
	CPI        R18, 0
	BRNE       L__main146
	CPI        R17, 6
L__main146:
	BRNE       L__main147
	JMP        L_main22
L__main147:
	CPI        R18, 0
	BRNE       L__main148
	CPI        R17, 7
L__main148:
	BRNE       L__main149
	JMP        L_main25
L__main149:
	CPI        R18, 0
	BRNE       L__main150
	CPI        R17, 8
L__main150:
	BRNE       L__main151
	JMP        L_main28
L__main151:
	CPI        R18, 0
	BRNE       L__main152
	CPI        R17, 9
L__main152:
	BRNE       L__main153
	JMP        L_main31
L__main153:
	CPI        R18, 0
	BRNE       L__main154
	CPI        R17, 10
L__main154:
	BRNE       L__main155
	JMP        L_main34
L__main155:
	CPI        R18, 0
	BRNE       L__main156
	CPI        R17, 11
L__main156:
	BRNE       L__main157
	JMP        L_main37
L__main157:
	CPI        R18, 0
	BRNE       L__main158
	CPI        R17, 12
L__main158:
	BRNE       L__main159
	JMP        L_main40
L__main159:
	CPI        R18, 0
	BRNE       L__main160
	CPI        R17, 13
L__main160:
	BRNE       L__main161
	JMP        L_main43
L__main161:
	CPI        R18, 0
	BRNE       L__main162
	CPI        R17, 14
L__main162:
	BRNE       L__main163
	JMP        L_main46
L__main163:
	CPI        R18, 0
	BRNE       L__main164
	CPI        R17, 15
L__main164:
	BRNE       L__main165
	JMP        L_main49
L__main165:
	CPI        R18, 0
	BRNE       L__main166
	CPI        R17, 16
L__main166:
	BRNE       L__main167
	JMP        L_main52
L__main167:
	CPI        R18, 0
	BRNE       L__main168
	CPI        R17, 17
L__main168:
	BRNE       L__main169
	JMP        L_main55
L__main169:
	CPI        R18, 0
	BRNE       L__main170
	CPI        R17, 18
L__main170:
	BRNE       L__main171
	JMP        L_main58
L__main171:
	CPI        R18, 0
	BRNE       L__main172
	CPI        R17, 19
L__main172:
	BRNE       L__main173
	JMP        L_main61
L__main173:
	CPI        R18, 0
	BRNE       L__main174
	CPI        R17, 20
L__main174:
	BRNE       L__main175
	JMP        L_main64
L__main175:
	CPI        R18, 0
	BRNE       L__main176
	CPI        R17, 21
L__main176:
	BRNE       L__main177
	JMP        L_main67
L__main177:
	CPI        R18, 0
	BRNE       L__main178
	CPI        R17, 22
L__main178:
	BRNE       L__main179
	JMP        L_main70
L__main179:
	CPI        R18, 0
	BRNE       L__main180
	CPI        R17, 23
L__main180:
	BRNE       L__main181
	JMP        L_main73
L__main181:
	CPI        R18, 0
	BRNE       L__main182
	CPI        R17, 24
L__main182:
	BRNE       L__main183
	JMP        L_main76
L__main183:
	CPI        R18, 0
	BRNE       L__main184
	CPI        R17, 25
L__main184:
	BRNE       L__main185
	JMP        L_main79
L__main185:
	CPI        R18, 0
	BRNE       L__main186
	CPI        R17, 26
L__main186:
	BRNE       L__main187
	JMP        L_main82
L__main187:
	CPI        R18, 0
	BRNE       L__main188
	CPI        R17, 27
L__main188:
	BRNE       L__main189
	JMP        L_main85
L__main189:
	CPI        R18, 0
	BRNE       L__main190
	CPI        R17, 28
L__main190:
	BRNE       L__main191
	JMP        L_main88
L__main191:
	CPI        R18, 0
	BRNE       L__main192
	CPI        R17, 29
L__main192:
	BRNE       L__main193
	JMP        L_main91
L__main193:
	CPI        R18, 0
	BRNE       L__main194
	CPI        R17, 30
L__main194:
	BRNE       L__main195
	JMP        L_main94
L__main195:
	CPI        R18, 0
	BRNE       L__main196
	CPI        R17, 31
L__main196:
	BRNE       L__main197
	JMP        L_main97
L__main197:
	CPI        R18, 0
	BRNE       L__main198
	CPI        R17, 32
L__main198:
	BRNE       L__main199
	JMP        L_main100
L__main199:
	CPI        R18, 0
	BRNE       L__main200
	CPI        R17, 33
L__main200:
	BRNE       L__main201
	JMP        L_main103
L__main201:
	CPI        R18, 0
	BRNE       L__main202
	CPI        R17, 34
L__main202:
	BRNE       L__main203
	JMP        L_main106
L__main203:
	CPI        R18, 0
	BRNE       L__main204
	CPI        R17, 35
L__main204:
	BRNE       L__main205
	JMP        L_main109
L__main205:
	CPI        R18, 0
	BRNE       L__main206
	CPI        R17, 36
L__main206:
	BRNE       L__main207
	JMP        L_main112
L__main207:
	CPI        R18, 0
	BRNE       L__main208
	CPI        R17, 37
L__main208:
	BRNE       L__main209
	JMP        L_main115
L__main209:
	CPI        R18, 0
	BRNE       L__main210
	CPI        R17, 38
L__main210:
	BRNE       L__main211
	JMP        L_main118
L__main211:
	CPI        R18, 0
	BRNE       L__main212
	CPI        R17, 39
L__main212:
	BRNE       L__main213
	JMP        L_main121
L__main213:
	CPI        R18, 0
	BRNE       L__main214
	CPI        R17, 40
L__main214:
	BRNE       L__main215
	JMP        L_main124
L__main215:
; count end address is: 17 (R17)
L_main6:
;IHMTCV1_0.c,391 :: 		for (contador = 1; contador <= numVias; contador ++){
; contador start address is: 16 (R16)
	LDI        R16, 1
	LDI        R17, 0
; teste end address is: 20 (R20)
; contador end address is: 16 (R16)
	MOVW       R22, R20
	MOVW       R20, R16
L_main127:
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	LDI        R16, 40
	LDI        R17, 0
	CP         R16, R20
	CPC        R17, R21
	BRGE       L__main216
	JMP        L_main128
L__main216:
;IHMTCV1_0.c,393 :: 		if(PINO[contador] != 0){
	MOVW       R18, R28
	MOVW       R16, R20
	LSL        R16
	ROL        R17
	ADD        R16, R18
	ADC        R17, R19
	MOVW       R30, R16
	LD         R16, Z+
	LD         R17, Z+
	CPI        R17, 0
	BRNE       L__main217
	CPI        R16, 0
L__main217:
	BRNE       L__main218
	JMP        L_main130
L__main218:
;IHMTCV1_0.c,394 :: 		teste ++;
	MOVW       R16, R22
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R22, R16
;IHMTCV1_0.c,396 :: 		if(teste == numVias){
	CPI        R17, 0
	BRNE       L__main219
	CPI        R16, 40
L__main219:
	BREQ       L__main220
	JMP        L_main131
L__main220:
;IHMTCV1_0.c,397 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,398 :: 		Lcd_Out(1,5,"TESTE OK!");
	LDI        R27, #lo_addr(?lstr45_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr45_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,399 :: 		}
L_main131:
;IHMTCV1_0.c,401 :: 		} else{
	JMP        L_main132
; teste end address is: 22 (R22)
L_main130:
;IHMTCV1_0.c,402 :: 		Lcd_Cmd(_LCD_CLEAR);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Cmd+0
;IHMTCV1_0.c,403 :: 		Lcd_Out(1,1,"FALHA NO TESTE!");
	LDI        R27, #lo_addr(?lstr46_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr46_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,404 :: 		Lcd_Out(2,1,"PINO");
	LDI        R27, #lo_addr(?lstr47_IHMTCV1_0+0)
	MOV        R4, R27
	LDI        R27, hi_addr(?lstr47_IHMTCV1_0+0)
	MOV        R5, R27
	LDI        R27, 1
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,405 :: 		IntToStr(contador,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	MOVW       R2, R20
; contador end address is: 20 (R20)
	CALL       _IntToStr+0
;IHMTCV1_0.c,406 :: 		Lcd_Out(2,5,txt);
	LDI        R27, #lo_addr(_txt+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_txt+0)
	MOV        R5, R27
	LDI        R27, 5
	MOV        R3, R27
	LDI        R27, 2
	MOV        R2, R27
	CALL       _Lcd_Out+0
;IHMTCV1_0.c,407 :: 		break;
	JMP        L_main128
;IHMTCV1_0.c,408 :: 		}
L_main132:
;IHMTCV1_0.c,391 :: 		for (contador = 1; contador <= numVias; contador ++){
; contador start address is: 20 (R20)
; teste start address is: 22 (R22)
	MOVW       R16, R20
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R20, R16
;IHMTCV1_0.c,409 :: 		}
; teste end address is: 22 (R22)
; contador end address is: 20 (R20)
	JMP        L_main127
L_main128:
;IHMTCV1_0.c,411 :: 		}
L_main4:
;IHMTCV1_0.c,412 :: 		}
	JMP        L_main2
;IHMTCV1_0.c,413 :: 		}
L_end_main:
	POP        R5
	POP        R4
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
