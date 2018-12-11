#line 1 "C:/Users/italo.francis/Desktop/IHMTCV1.0/IHMTCV1_0.c"
#line 13 "C:/Users/italo.francis/Desktop/IHMTCV1.0/IHMTCV1_0.c"
int sair = 1;
int num = 0;
char txt[10];
int erro = 0;
unsigned menu = 0;
int static vetorDeErroCompleto[50] = { 0, 50, 51, 52, 53, 91, 92, 93, 71,
72, 73, 74, 75, 76,60, 61, 62, 63, 30, 31, 32, 33, 34, 35, 36, 37,38, 39, 45, 40, 41, 42, 44, 43, 47,46,49, 48, 94, 96, 98, 77, 77,77, 77, 77, 77, 64, 64, 64 };
int static vetorCaboControle[30] = { 0,50, 51, 52, 53, 91, 92, 93, 71,72, 73, 74, 75, 76,60, 61, 62, 63,94, 96, 98, 77, 77,77, 77, 77, 77, 64, 64, 64};
int static vetorDeErroDFIPM[11] = {0, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39};
int static vetorDeErroModuloIO[11] = {0, 45, 40, 41, 42, 44, 43, 47,46,49, 48};
int static vetorDeErroModuloCelesc[19] = {0, 108, 109, 106, 105, 104, 115, 111, 112, 113, 114, 110, 107, 116, 117, 100, 101, 102, 103};



sbit LCD_RS at PORTA0_bit;
sbit LCD_EN at PORTA2_bit;
sbit LCD_D4 at PORTA4_bit;
sbit LCD_D5 at PORTA5_bit;
sbit LCD_D6 at PORTA6_bit;
sbit LCD_D7 at PORTA7_bit;

sbit LCD_RS_Direction at DDA0_bit;
sbit LCD_EN_Direction at DDA2_bit;
sbit LCD_D4_Direction at DDA4_bit;
sbit LCD_D5_Direction at DDA5_bit;
sbit LCD_D6_Direction at DDA6_bit;
sbit LCD_D7_Direction at DDA7_bit;
#line 1 "c:/users/italo.francis/desktop/ihmtcv1.0/msg.h"


 void msgExecutar(){

 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 5,"Pressione");
 lcd_Out(2, 5,"EXECUTAR!");
 }

 void msgInicializacao(){
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1,"LUPA TECNOLOGIA");
 lcd_Out(2,1,"Inicializando...");
 Delay_ms (2200);
 lcd_Out(2, 1,"Testador V1.2.0");
 Delay_ms (2500);
 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Selecionar Teste");
 lcd_Out(2, 1,"Pressione MOD");
 }

 void msgExecutando (){
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Executando Teste");
 Lcd_Out(2,1,"Aguarde...");

 }
#line 1 "c:/users/italo.francis/desktop/ihmtcv1.0/iljin_0.h"



 static int iljiCompleto (int count, int *PINO){

 switch (count){

 case 1:
 PORTB = 0b00010101;
 PORTE = 0b01001000;
 Delay_ms( 100 );
 PINO[1] = PING & (1<<0);
 count++;

 case 2:
 PORTE = 0b01001001;
 Delay_ms( 100 );
 PINO[2] = PING & (1<<0);
 count++;


 case 3:
 PORTE = 0b01001010;
 Delay_ms( 100 );
 PINO[3] = PING & (1<<0);
 count++;


 case 4:
 PORTE = 0b01001011;
 Delay_ms( 100 );
 PINO[4] = PING & (1<<0);
 count++;

 case 5:
 PORTE = 0b01001100;
 Delay_ms( 100 );
 PINO[5] = PING & (1<<0);
 count++;

 case 6:
 PORTE = 0b01001101;
 Delay_ms( 100 );
 PINO[6] = PING & (1<<0);
 count++;

 case 7:
 PORTE = 0b01001110;
 Delay_ms( 100 );
 PINO[7] = PING & (1<<0);
 count++;


 case 8:
 PORTE = 0b01001111;
 Delay_ms( 100 );
 PINO[8] = PING & (1<<0);
 count++;


 case 9:
 PORTE = 0b00110000;
 Delay_ms( 100 );
 PINO[9] = PING & (1<<0);
 count++;

 case 10:
 PORTE = 0b00110001;
 Delay_ms( 100 );
 PINO[10] = PING & (1<<0);
 count++;

 case 11:
 PORTE = 0b00110010;
 Delay_ms( 100 );
 PINO[11] = PING & (1<<0);
 count++;

 case 12:
 PORTE = 0b00110011;
 Delay_ms( 100 );
 PINO[12] = PING & (1<<0);
 count++;

 case 13:
 PORTE = 0b00110100;
 Delay_ms( 100 );
 PINO[13] = PING & (1<<0);
 count++;

 case 14:
 PORTE = 0b00110101;
 Delay_ms( 100 );
 PINO[14] = PING & (1<<0);
 count++;

 case 15:
 PORTE = 0b00110110;
 Delay_ms( 100 );
 PINO[15] = PING & (1<<0);
 count++;

 case 16:
 PORTE = 0b00110111;
 Delay_ms( 100 );
 PINO[16] = PING & (1<<0);
 count++;

 case 17:
 PORTE = 0b11010000;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[17] = PING & (1<<0);
 count++;


 case 18:
 PORTE = 0b11010001;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[18] = PING & (1<<0);
 count++;

 case 19:
 PORTE = 0b11010010;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[19] = PING & (1<<0);
 count++;

 case 20:
 PORTE = 0b11010011;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[20] = PING & (1<<0);
 count++;

 case 21:
 PORTE = 0b11010100;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[21] = PING & (1<<0);
 count++;

 case 22:
 PORTE = 0b11010101;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[22] = PING & (1<<0);
 count++;

 case 23:
 PORTE = 0b11010110;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[23] = PING & (1<<0);
 count++;

 case 24:
 PORTE = 0b11010111;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[24] = PING & (1<<0);
 count++;

 case 25:
 PORTE = 0b01010000;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[25] = PING & (1<<0);
 count++;

 case 26:
 PORTE = 0b01010001;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[26] = PING & (1<<0);
 count++;

 case 27:
 PORTE = 0b01010010;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[27] = PING & (1<<0);
 count++;

 case 28:
 PORTE = 0b01010011;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[28] = PING & (1<<0);
 count++;

 case 29:
 PORTE = 0b01010100;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[29] = PING & (1<<0);
 count++;

 case 30:
 PORTE = 0b01010101;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[30] = PING & (1<<0);
 count++;

 case 31:
 PORTE = 0b01010110;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[31] = PING & (1<<0);
 count++;

 case 32:
 PORTE = 0b01010111;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[32] = PING & (1<<0);
 count++;

 case 33:
 PORTE = 0b01010000;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[33] = PING & (1<<0);
 count++;

 case 34:
 PORTE = 0b01010001;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[34] = PING & (1<<0);
 count++;

 case 35:
 PORTE = 0b01010010;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[35] = PING & (1<<0);
 count++;

 case 36:
 PORTE = 0b01010011;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[36] = PING & (1<<0);
 count++;

 case 37:
 PORTE = 0b01010100;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[37] = PING & (1<<0);
 count++;
#line 284 "c:/users/italo.francis/desktop/ihmtcv1.0/iljin_0.h"
 case 38:
 PORTF = PORTF |(1<<0);
 Delay_ms( 100 );
 PINO[38] = PINF &(1<<1);
 count++;

 case 39:
 PORTF = PORTF |(1<<0);
 Delay_ms( 100 );
 PINO[39] = PINF &(1<<2);
 count++;

 case 40:
 PORTF = PORTF |(1<<0);
 Delay_ms( 100 );
 PINO[40] = PINF &(1<<3);
 count++;

 case 41:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[41] = PINC &(1<<1);
 count++;


 case 42:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[42] = PINC & (1<<2);
 count++;

 case 43:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[43] = PINC & (1<<3);
 count++;

 case 44:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[44] = PINC & (1<<4);
 count++;


 case 45:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[45] = PINC & (1<<5);
 count++;

 case 46:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[46] = PINC & (1<<6);
 count++;

 case 47:
 PORTF = PORTF |(1<<4);
 Delay_ms( 100 );
 PINO[47] = PINF &(1<<5);
 count++;

 case 48:
 PORTF = PORTF |(1<<4);
 Delay_ms( 100 );
 PINO[48] = PINF &(1<<6);
 count++;
 case 49:
 PORTF = PORTF |(1<<4);
 Delay_ms( 100 );
 PINO[49] = PINF &(1<<7);
 count++;
 }


 return count , PINO;
 }


 static int iljinIHM (int count, int *PINO){


 switch (count){


 case 1:
 PORTE = 0b11010001;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[1] = PING & (1<<0);
 count++;

 case 2:
 PORTE = 0b11010010;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[2] = PING & (1<<0);
 count++;

 case 3:
 PORTE = 0b11010011;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[3] = PING & (1<<0);
 count++;

 case 4:
 PORTE = 0b11010100;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[4] = PING & (1<<0);
 count++;

 case 5:
 PORTE = 0b11010101;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[5] = PING & (1<<0);
 count++;

 case 6:
 PORTE = 0b11010110;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[6] = PING & (1<<0);
 count++;

 case 7:
 PORTE = 0b11010111;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[7] = PING & (1<<0);
 count++;

 case 8:
 PORTE = 0b01010000;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[8] = PING & (1<<0);
 count++;

 case 9:
 PORTE = 0b01010001;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[9] = PING & (1<<0);
 count++;

 case 10:
 PORTE = 0b01010010;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[10] = PING & (1<<0);
 count++;

 }

 return count , PINO;
 }

 static int iljinIO(int count, int *PINO){

 switch (count){

 case 1:
 PORTE = 0b01010011;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[1] = PING & (1<<0);
 count++;

 case 2:
 PORTE = 0b01010100;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[2] = PING & (1<<0);
 count++;

 case 3:
 PORTE = 0b01010101;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[3] = PING & (1<<0);
 count++;

 case 4:
 PORTE = 0b01010110;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[4] = PING & (1<<0);
 count++;

 case 5:
 PORTE = 0b01010111;
 PORTB = 0b00010011;
 Delay_ms( 100 );
 PINO[5] = PING & (1<<0);
 count++;

 case 6:
 PORTE = 0b01010000;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[6] = PING & (1<<0);
 count++;

 case 7:
 PORTE = 0b01010001;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[7] = PING & (1<<0);
 count++;

 case 8:
 PORTE = 0b01010010;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[8] = PING & (1<<0);
 count++;

 case 9:
 PORTE = 0b01010011;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[9] = PING & (1<<0);
 count++;

 case 10:
 PORTE = 0b01010100;
 PORTB = 0b00001101;
 Delay_ms( 100 );
 PINO[10] = PING & (1<<0);
 count++;

 }

 return count , PINO;
 }


 static int iljinCaboControle(int count, int *PINO){

 switch (count){
 case 1:
 PORTB = 0b00010101;
 PORTE = 0b01001000;
 Delay_ms( 100 );
 PINO[1] = PING & (1<<0);
 count++;

 case 2:
 PORTE = 0b01001001;
 Delay_ms( 100 );
 PINO[2] = PING & (1<<0);
 count++;


 case 3:
 PORTE = 0b01001010;
 Delay_ms( 100 );
 PINO[3] = PING & (1<<0);
 count++;


 case 4:
 PORTE = 0b01001011;
 Delay_ms( 100 );
 PINO[4] = PING & (1<<0);
 count++;

 case 5:
 PORTE = 0b01001100;
 Delay_ms( 100 );
 PINO[5] = PING & (1<<0);
 count++;

 case 6:
 PORTE = 0b01001101;
 Delay_ms( 100 );
 PINO[6] = PING & (1<<0);
 count++;

 case 7:
 PORTE = 0b01001110;
 Delay_ms( 100 );
 PINO[7] = PING & (1<<0);
 count++;


 case 8:
 PORTE = 0b01001111;
 Delay_ms( 100 );
 PINO[8] = PING & (1<<0);
 count++;


 case 9:
 PORTE = 0b00110000;
 Delay_ms( 100 );
 PINO[9] = PING & (1<<0);
 count++;

 case 10:
 PORTE = 0b00110001;
 Delay_ms( 100 );
 PINO[10] = PING & (1<<0);
 count++;

 case 11:
 PORTE = 0b00110010;
 Delay_ms( 100 );
 PINO[11] = PING & (1<<0);
 count++;

 case 12:
 PORTE = 0b00110011;
 Delay_ms( 100 );
 PINO[12] = PING & (1<<0);
 count++;

 case 13:
 PORTE = 0b00110100;
 Delay_ms( 100 );
 PINO[13] = PING & (1<<0);
 count++;

 case 14:
 PORTE = 0b00110101;
 Delay_ms( 100 );
 PINO[14] = PING & (1<<0);
 count++;

 case 15:
 PORTE = 0b00110110;
 Delay_ms( 100 );
 PINO[15] = PING & (1<<0);
 count++;

 case 16:
 PORTE = 0b00110111;
 Delay_ms( 100 );
 PINO[16] = PING & (1<<0);
 count++;

 case 17:
 PORTE = 0b11010000;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[17] = PING & (1<<0);
 count++;

 case 18:
 PORTF = PORTF |(1<<0);
 Delay_ms( 100 );
 PINO[18] = PINF &(1<<1);
 count++;

 case 19:
 PORTF = PORTF |(1<<0);
 Delay_ms( 100 );
 PINO[19] = PINF &(1<<2);
 count++;

 case 20:
 PORTF = PORTF |(1<<0);
 Delay_ms( 100 );
 PINO[20] = PINF &(1<<3);
 count++;

 case 21:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[21] = PINC &(1<<1);
 count++;


 case 22:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[22] = PINC & (1<<2);
 count++;

 case 23:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[23] = PINC & (1<<3);
 count++;

 case 24:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[24] = PINC & (1<<4);
 count++;


 case 25:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[25] = PINC & (1<<5);
 count++;

 case 26:
 PORTC = PORTC |(1<<0);
 Delay_ms( 100 );
 PINO[26] = PINC & (1<<6);
 count++;

 case 27:
 PORTF = PORTF |(1<<4);
 Delay_ms( 100 );
 PINO[27] = PINF &(1<<5);
 count++;

 case 28:
 PORTF = PORTF |(1<<4);
 Delay_ms( 100 );
 PINO[28] = PINF &(1<<6);
 count++;

 case 29:
 PORTF = PORTF |(1<<4);
 Delay_ms( 100 );
 PINO[29] = PINF &(1<<7);
 count++;
 }

 return count , PINO;
 }
#line 1 "c:/users/italo.francis/desktop/ihmtcv1.0/celesc.h"


 static int celescIO (int count, int *PINO ){


 switch (count){

 case 1:
 PORTB = 0b00010101;
 PORTE = 0b01001000;
 Delay_ms( 100 );
 PINO[1] = PING & (1<<0);
 count++;

 case 2:
 PORTE = 0b01001001;
 Delay_ms( 100 );
 PINO[2] = PING & (1<<0);
 count++;


 case 3:
 PORTE = 0b01001010;
 Delay_ms( 100 );
 PINO[3] = PING & (1<<0);
 count++;


 case 4:
 PORTE = 0b01001011;
 Delay_ms( 100 );
 PINO[4] = PING & (1<<0);
 count++;

 case 5:
 PORTE = 0b01001100;
 Delay_ms( 100 );
 PINO[5] = PING & (1<<0);
 count++;

 case 6:
 PORTE = 0b01001101;
 Delay_ms( 100 );
 PINO[6] = PING & (1<<0);
 count++;

 case 7:
 PORTE = 0b01001110;
 Delay_ms( 100 );
 PINO[7] = PING & (1<<0);
 count++;


 case 8:
 PORTE = 0b01001111;
 Delay_ms( 100 );
 PINO[8] = PING & (1<<0);
 count++;


 case 9:
 PORTE = 0b00110000;
 Delay_ms( 100 );
 PINO[9] = PING & (1<<0);
 count++;

 case 10:
 PORTE = 0b00110001;
 Delay_ms( 100 );
 PINO[10] = PING & (1<<0);
 count++;

 case 11:
 PORTE = 0b00110010;
 Delay_ms( 100 );
 PINO[11] = PING & (1<<0);
 count++;

 case 12:
 PORTE = 0b00110011;
 Delay_ms( 100 );
 PINO[12] = PING & (1<<0);
 count++;

 case 13:
 PORTE = 0b00110100;
 Delay_ms( 100 );
 PINO[13] = PING & (1<<0);
 count++;

 case 14:
 PORTE = 0b00110101;
 Delay_ms( 100 );
 PINO[14] = PING & (1<<0);
 count++;

 case 15:
 PORTE = 0b00110110;
 Delay_ms( 100 );
 PINO[15] = PING & (1<<0);
 count++;

 case 16:
 PORTE = 0b00110111;
 Delay_ms( 100 );
 PINO[16] = PING & (1<<0);
 count++;

 case 17:
 PORTE = 0b11010000;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[17] = PING & (1<<0);
 count++;


 case 18:
 PORTE = 0b11010001;
 PORTB = 0b00010100;
 Delay_ms( 100 );
 PINO[18] = PING & (1<<0);
 count++;


 }
 return PINO;
 }
#line 1 "c:/users/italo.francis/desktop/ihmtcv1.0/teste.h"



 static int testeVias(int contador, int count1, int *PINO, int teste, int numVias, int errov, int *vetErro, int *vetorDeErroModuloCelesc){

 for (contador = 1; contador <= numVias; contador ++){

 count1 ++;

 if(PINO[contador] != 0){

 teste ++;

 } else{

 vetErro[errov] = vetorDeErroModuloCelesc[contador];
 errov ++;

 }
 }

 return count1, PINO, teste, numVias, errov, vetErro, vetorDeErroModuloCelesc;
 }
#line 51 "C:/Users/italo.francis/Desktop/IHMTCV1.0/IHMTCV1_0.c"
void main() {



 DDRD = DDRD & (~(0<<2));
 DDRD = DDRD & (~(0<<3));


 DDRD = DDRD & (~(1<<0));


 DDRA = DDRA | (1 <<1);
 PORTA = PORTA |(0<<1);


 DDRA = DDRA | (1 <<3);
 PORTA = PORTA |(1<<3);


 DDRG = DDRG & (~(1<<0));


 DDRE = 0xFF;
 DDRB = 0xFF;


 DDRC = DDRC | (1<<0);
 DDRC = DDRC & (~(1<<1));
 DDRC = DDRC & (~(1<<2));
 DDRC = DDRC & (~(1<<3));
 DDRC = DDRC & (~(1<<4));
 DDRC = DDRC & (~(1<<5));
 DDRC = DDRC & (~(1<<6));
 DDRC = DDRC & (~(1<<7));


 DDRF = DDRF | (1<<0);
 DDRF = DDRF & (~(1<<1));
 DDRF = DDRF & (~(1<<2));
 DDRF = DDRF & (~(1<<3));
 DDRF = DDRF | (1<<4);
 DDRF = DDRF & (~(1<<5));
 DDRF = DDRF & (~(1<<6));
 DDRF = DDRF & (~(1<<7));
 msgInicializacao();

 do{
 sair--;
 if(Button (&PIND, 2, 0, 0)){
 menu++;

 switch (menu){

 case 1:
 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Executar Teste 1");
 lcd_Out(2, 1,"COMPLETO (I)");
 Delay_ms(200);
 break;
 case 2:

 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Executar Teste 2");
 lcd_Out(2, 1,"CONTROLE (I)");
 Delay_ms(200);
 break;

 case 3:

 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Executar Teste 3");
 lcd_Out(2, 1,"IHM - DFIPM (I)");
 Delay_ms(200);
 break;
 case 4:
 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Executar Teste 4");
 lcd_Out(2, 1,"I/0 (I)");
 Delay_ms(200);
 break;
 case 5:
 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Executar Teste 5");
 lcd_Out(2, 1,"I/0 (BF)");
 Delay_ms(200);
 break;
 case 6:
 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Executar Teste 6");
 lcd_Out(2, 1,"IHM - DFIPM (BF)");
 Delay_ms(200);
 break;
 case 7:
 Lcd_Cmd(_LCD_CLEAR);
 lcd_Out(1, 1,"Executar Teste 7");
 lcd_Out(2, 1,"I/O (T-CELESC)");
 Delay_ms(200);
 break;

 default:
 if(menu == 8){
 menu = 0;
 }
 }
 }

 if(Button (&PIND, 3, 0, 0) && menu == 1){
 msgExecutar();

 while (sair){
 int count = 1;
 int buttonEstate;
 int PINO[50];
 int contador = 0;
 int teste = 0;
 int errov = 1;
 int vetErro[51];
 int count1 = 0;
 int numVias = 49;
 buttonEstate = PIND & (1<<0);

 if(buttonEstate == 0){
 msgExecutando();
 iljiCompleto(count, PINO);

 for (contador = 1; contador <= numVias; contador ++){

 count1 ++;

 if(PINO[contador] != 0){
 teste ++;
 } else{
 vetErro[errov] = vetorDeErroCompleto[contador];
 errov ++;

 }
 }

 if(teste == numVias){

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,5,"Teste OK!");


 }else if(errov !=1 && count1 == numVias){
 Lcd_Cmd(_LCD_CLEAR);

 for (contador = 1; contador <errov; contador ++){
 Lcd_Out(1,1,"FALHA NO TESTE!");
 Lcd_Out(2,1,"VIA:");
 erro = vetErro[contador];
 IntToStr(erro, txt);
 Lcd_Out(2,5,txt);
 Delay_ms (1000);
 }
 }

 }
 if(Button (&PIND, 2, 0, 0)){
 sair++;
 }
 }
 }


 if(Button (&PIND, 3, 0, 0) && menu == 2) {
 msgExecutar();
 while (sair){
 int count = 1;
 int buttonEstate;
 int PINO[29];
 int vetErro[29];
 int contador = 0;
 int teste = 0;
 int count1 = 0;
 int errov = 1;
 int numVias = 29;
 buttonEstate = PIND & (1<<0);

 if(buttonEstate == 0){
 msgExecutando();
 iljinCaboControle(count,PINO);

 for (contador = 1; contador <= 29; contador ++){
 count1 ++;

 if(PINO[contador] != 0){

 teste ++;

 }else{
 vetErro[errov] = vetorCaboControle[contador];
 errov ++;
 }
 }

 if(teste == 29){

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,5,"Teste OK!");

 }else if(errov !=1 && count1 == 29){
 Lcd_Cmd(_LCD_CLEAR);


 for (contador = 1; contador <errov; contador ++){
 Lcd_Out(1,1,"FALHA NO TESTE!");
 Lcd_Out(2,1,"VIA:");
 erro = vetErro[contador];
 IntToStr(erro, txt);
 Lcd_Out(2,5,txt);
 Delay_ms (1000);


 }


 }
 }

 if(Button (&PIND, 2, 0, 0)){
 sair++;
 }
 }


 }


 if(Button (&PIND, 3, 0, 0) && menu == 3) {
 msgExecutar();

 while (sair){
 int count = 1;
 int buttonEstate;
 int PINO[11];
 int vetErro[11];
 int contador = 0;
 int teste = 0;
 int count1 = 0;
 int errov = 1;
 int numVias = 11;
 buttonEstate = PIND & (1<<0);

 if(buttonEstate == 0){
 msgExecutando;
 iljinIHM(count, PINO);

 for (contador = 1; contador <= 11; contador ++){
 count1 ++;
 if(PINO[contador] != 0){
 teste ++;
 }else{
 vetErro[errov] = vetorDeErroDFIPM[contador];
 errov ++;
 }
 }

 if(teste == 11){

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,5,"Teste OK!");


 }else if(errov !=1 && count1 == 11){
 Lcd_Cmd(_LCD_CLEAR);

 for (contador = 1; contador <errov; contador ++){
 Lcd_Out(1,1,"FALHA NO TESTE!");
 Lcd_Out(2,1,"VIA:");
 erro = vetErro[contador];
 IntToStr(erro, txt);
 Lcd_Out(2,5,txt);
 Delay_ms (1000);


 }
 }

 }

 if(Button (&PIND, 2, 0, 0)){
 sair++;
 }
 }

 }

 if(Button (&PIND, 3, 0, 0) && menu == 4) {

 msgExecutar();

 while (sair){

 int count = 1;
 int buttonEstate;
 int PINO[11];
 int vetErro[11];
 int contador = 0;
 int teste = 0;
 int errov = 1;
 int count1 = 0;
 buttonEstate = PIND & (1<<0);

 if(buttonEstate == 0){
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Executando Teste");
 Lcd_Out(2,1,"Aguarde...");
 iljinIO(count, PINO);

 for (contador = 1; contador <= 11; contador ++){

 count1 ++;

 if(PINO[contador] != 0){
 teste ++;
 } else{

 vetErro[errov] = vetorDeErroModuloIO[contador];
 errov ++;
 }
 }

 if(teste == 11){

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,5,"Teste OK!");


 }else if(errov !=1 && count1 == 11){
 Lcd_Cmd(_LCD_CLEAR);

 for (contador = 1; contador <errov; contador ++){
 Lcd_Out(1,1,"FALHA NO TESTE!");
 Lcd_Out(2,1,"VIA:");
 erro = vetErro[contador];
 IntToStr(erro, txt);
 Lcd_Out(2,5,txt);
 Delay_ms (1000);
 }
 }

 }
 if(Button (&PIND, 2, 0, 0)){
 sair++;
 }
 }

 }

 if(Button (&PIND, 3, 0, 0) && menu == 5){
 msgExecutar();
 }

 if(Button (&PIND, 3, 0, 0) && menu == 6){
 msgExecutar();

 while (sair){
 int numVias = 18;
 int count = 1;
 int buttonEstate;
 int PINO[19];
 int vetErro[19];
 int contador = 0;
 int teste = 0;
 int errov = 1;
 int count1 = 0;
 buttonEstate = PIND & (1<<0);

 if(buttonEstate == 0){
 msgExecutando();

 celescIO(count, PINO);



 for (contador = 1; contador <= numVias; contador ++){
 count1 ++;

 if(PINO[contador] != 0){
 teste ++;
 } else{
 vetErro[errov] = vetorDeErroModuloCelesc[contador];
 errov ++;
 }
 }


 if(teste == 18){

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,5,"Teste OK!");


 }else if(errov !=1 && count1 == 18){
 Lcd_Cmd(_LCD_CLEAR);

 for (contador = 1; contador <errov; contador ++){
 Lcd_Out(1,1,"FALHA NO TESTE!");
 Lcd_Out(2,1,"VIA:");
 erro = vetErro[contador];
 IntToStr(erro, txt);
 Lcd_Out(2,5,txt);
 Delay_ms (1000);


 }
 }

 }

 if(Button (&PIND, 2, 0, 0)){
 sair++;

 }

 }
 }

 } while(1);

 }
