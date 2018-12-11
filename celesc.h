 #define CELESCH

   static int celescIO (int count, int *PINO ){

               
                 switch (count){

                          case 1:
                                 PORTB = 0b00010101;
                                 PORTE = 0b01001000;
                                 Delay_ms(tempo);
                                 PINO[1] = PING & (1<<0);
                                 count++;

                           case 2:
                                 PORTE = 0b01001001;
                                 Delay_ms(tempo);
                                 PINO[2] = PING & (1<<0);
                                 count++;


                           case 3:
                                 PORTE = 0b01001010;
                                 Delay_ms(tempo);
                                 PINO[3] = PING & (1<<0);
                                 count++;


                           case 4:
                                 PORTE = 0b01001011;
                                 Delay_ms(tempo);
                                 PINO[4] = PING & (1<<0);
                                 count++;

                           case 5:
                                 PORTE = 0b01001100;
                                 Delay_ms(tempo);
                                 PINO[5] = PING & (1<<0);
                                 count++;

                           case 6:
                                 PORTE = 0b01001101;
                                 Delay_ms(tempo);
                                 PINO[6] = PING & (1<<0);
                                 count++;

                           case 7:
                                 PORTE = 0b01001110;
                                 Delay_ms(tempo);
                                 PINO[7] = PING & (1<<0);
                                 count++;


                           case 8:
                                 PORTE = 0b01001111;
                                 Delay_ms(tempo);
                                 PINO[8] = PING & (1<<0);
                                 count++;


                              case 9:
                                 PORTE = 0b00110000;
                                 Delay_ms(tempo);
                                 PINO[9] = PING & (1<<0);
                                 count++;

                           case 10:
                                 PORTE = 0b00110001;
                                 Delay_ms(tempo);
                                 PINO[10] = PING & (1<<0);
                                 count++;

                           case 11:
                                 PORTE = 0b00110010;
                                 Delay_ms(tempo);
                                 PINO[11] = PING & (1<<0);
                                 count++;

                           case 12:
                                 PORTE = 0b00110011;
                                 Delay_ms(tempo);
                                 PINO[12] = PING & (1<<0);
                                 count++;

                            case 13:
                                 PORTE = 0b00110100;
                                 Delay_ms(tempo);
                                 PINO[13] = PING & (1<<0);
                                 count++;

                            case 14:
                                 PORTE = 0b00110101;
                                 Delay_ms(tempo);
                                 PINO[14] = PING & (1<<0);
                                 count++;

                            case 15:
                                 PORTE = 0b00110110;
                                 Delay_ms(tempo);
                                 PINO[15] = PING & (1<<0);
                                 count++;

                            case 16:
                                 PORTE = 0b00110111;
                                 Delay_ms(tempo);
                                 PINO[16] = PING & (1<<0);
                                 count++;

                           case 17:
                                 PORTE = 0b11010000;
                                 PORTB = 0b00010100;
                                 Delay_ms(tempo);
                                 PINO[17] = PING & (1<<0);
                                 count++;


                           case 18:
                                 PORTE = 0b11010001;
                                 PORTB = 0b00010100;
                                 Delay_ms(tempo);
                                 PINO[18] = PING & (1<<0);
                                 count++;


                   }
                    return PINO;
         }