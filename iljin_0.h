 #define ILJIN_0H


       static int iljiCompleto (int count, int *PINO){

           switch (count){

                     case 1://PINO 50
                           PORTB = 0b00010101;
                           PORTE = 0b01001000;
                           Delay_ms(tempo);
                           PINO[1] = PING & (1<<0);
                           count++;

                     case 2://PINO 51
                           PORTE = 0b01001001;
                           Delay_ms(tempo);
                           PINO[2] = PING & (1<<0);
                           count++;


                     case 3://PINO 52
                           PORTE = 0b01001010;
                           Delay_ms(tempo);
                           PINO[3] = PING & (1<<0);
                           count++;


                     case 4://PINO 53
                           PORTE = 0b01001011;
                           Delay_ms(tempo);
                           PINO[4] = PING & (1<<0);
                           count++;

                     case 5://PINO 91
                           PORTE = 0b01001100;
                           Delay_ms(tempo);
                           PINO[5] = PING & (1<<0);
                           count++;

                     case 6://PINO 92
                           PORTE = 0b01001101;
                           Delay_ms(tempo);
                           PINO[6] = PING & (1<<0);
                           count++;

                     case 7://PINO 93
                           PORTE = 0b01001110;
                           Delay_ms(tempo);
                           PINO[7] = PING & (1<<0);
                           count++;


                     case 8://PINO 71
                           PORTE = 0b01001111;
                           Delay_ms(tempo);
                           PINO[8] = PING & (1<<0);
                           count++;


                        case 9://PINO 72
                           PORTE = 0b00110000;
                           Delay_ms(tempo);
                           PINO[9] = PING & (1<<0);
                           count++;

                     case 10://PINO 73
                           PORTE = 0b00110001;
                           Delay_ms(tempo);
                           PINO[10] = PING & (1<<0);
                           count++;

                     case 11://PINO 74
                           PORTE = 0b00110010;
                           Delay_ms(tempo);
                           PINO[11] = PING & (1<<0);
                           count++;

                     case 12://PINO 75
                           PORTE = 0b00110011;
                           Delay_ms(tempo);
                           PINO[12] = PING & (1<<0);
                           count++;

                      case 13://PINO 76
                           PORTE = 0b00110100;
                           Delay_ms(tempo);
                           PINO[13] = PING & (1<<0);
                           count++;

                      case 14://PINO 60
                           PORTE = 0b00110101;
                           Delay_ms(tempo);
                           PINO[14] = PING & (1<<0);
                           count++;

                      case 15://PINO 61
                           PORTE = 0b00110110;
                           Delay_ms(tempo);
                           PINO[15] = PING & (1<<0);
                           count++;

                      case 16://PINO 62
                           PORTE = 0b00110111;
                           Delay_ms(tempo);
                           PINO[16] = PING & (1<<0);
                           count++;

                     case 17://PINO 63
                           PORTE = 0b11010000;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[17] = PING & (1<<0);
                           count++;


                     case 18://PINO 30
                           PORTE = 0b11010001;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[18] = PING & (1<<0);
                           count++;

                     case 19://PINO 31
                           PORTE = 0b11010010;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[19] = PING & (1<<0);
                           count++;

                     case 20://PINO 32
                           PORTE = 0b11010011;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[20] = PING & (1<<0);
                           count++;

                      case 21://PINO 33
                           PORTE = 0b11010100;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[21] = PING & (1<<0);
                           count++;

                     case 22://PINO 34
                           PORTE = 0b11010101;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[22] = PING & (1<<0);
                           count++;

                     case 23://PINO 35
                           PORTE = 0b11010110;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[23] = PING & (1<<0);
                           count++;

                     case 24://PINO 36
                           PORTE = 0b11010111;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[24] = PING & (1<<0);
                           count++;

                     case 25://PINO 37
                           PORTE = 0b01010000;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[25] = PING & (1<<0);
                           count++;

                     case 26://PINO 38
                           PORTE = 0b01010001;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[26] = PING & (1<<0);
                           count++;

                     case 27://PINO 39
                           PORTE = 0b01010010;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[27] = PING & (1<<0);
                           count++;

                     case 28://PINO 45
                           PORTE = 0b01010011;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[28] = PING & (1<<0);
                           count++;

                     case 29://PINO 40
                           PORTE = 0b01010100;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[29] = PING & (1<<0);
                           count++;

                      case 30://PINO 41
                           PORTE = 0b01010101;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[30] = PING & (1<<0);
                           count++;

                      case 31://PINO 42
                           PORTE = 0b01010110;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[31] = PING & (1<<0);
                           count++;

                      case 32://PINO 44
                           PORTE = 0b01010111;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[32] = PING & (1<<0);
                           count++;

                      case 33://PINO 43
                           PORTE = 0b01010000;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[33] = PING & (1<<0);
                           count++;

                      case 34://PINO 47
                           PORTE = 0b01010001;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[34] = PING & (1<<0);
                           count++;

                      case 35://PINO 46
                           PORTE = 0b01010010;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[35] = PING & (1<<0);
                           count++;

                     case 36://PINO 49
                           PORTE = 0b01010011;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[36] = PING & (1<<0);
                           count++;

                     case 37://PINO 48
                           PORTE = 0b01010100;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[37] = PING & (1<<0);
                           count++;

                   /*
                     case 38:
                           Lcd_Out(2,1,"PINO 38");
                           PORTE = 0b01010101;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[38] = PING & (1<<0);
                           count++;

                     case 39:
                           Lcd_Out(2,1,"PINO 39");
                           PORTE = 0b01010110;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[39] = PING & (1<<0);
                           count++;

                      case 40:
                           Lcd_Out(2,1,"PINO 40");
                           PORTE = 0b01010111;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[40] = PING & (1<<0);
                           count++;
                      */


                     case 38://PINO 94
                             PORTF = PORTF |(1<<0);
                             Delay_ms(tempo);
                             PINO[38] = PINF &(1<<1);
                             count++;

                     case 39://PINO 96
                             PORTF = PORTF |(1<<0);
                             Delay_ms(tempo);
                             PINO[39] = PINF &(1<<2);
                             count++;

                     case 40://PINO 98
                             PORTF = PORTF |(1<<0);
                             Delay_ms(tempo);
                             PINO[40] = PINF &(1<<3);
                             count++;

                     case 41://PINO 77
                             PORTC = PORTC |(1<<0);
                             Delay_ms(tempo);
                             PINO[41] = PINC &(1<<1);
                             count++;


                     case 42://PINO 77
                             PORTC = PORTC |(1<<0);
                             Delay_ms(tempo);
                             PINO[42] = PINC & (1<<2);
                             count++;

                     case 43://PINO 77
                             PORTC = PORTC |(1<<0);
                             Delay_ms(tempo);
                             PINO[43] = PINC & (1<<3);
                             count++;

                     case 44://PINO 77
                             PORTC = PORTC |(1<<0);
                             Delay_ms(tempo);
                             PINO[44] = PINC & (1<<4);
                             count++;


                     case 45://PINO 77
                             PORTC = PORTC |(1<<0);
                             Delay_ms(tempo);
                             PINO[45] = PINC & (1<<5);
                             count++;

                     case 46://PINO 77
                             PORTC = PORTC |(1<<0);
                             Delay_ms(tempo);
                             PINO[46] = PINC & (1<<6);
                             count++;

                     case 47://PINO 64
                             PORTF = PORTF |(1<<4);
                             Delay_ms(tempo);
                             PINO[47] = PINF &(1<<5);
                             count++;

                      case 48://PINO 64
                             PORTF = PORTF |(1<<4);
                             Delay_ms(tempo);
                             PINO[48] = PINF &(1<<6);
                             count++;
                     case 49: //PINO 64
                             PORTF = PORTF |(1<<4);
                             Delay_ms(tempo);
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
                             Delay_ms(tempo);
                             PINO[1] = PING & (1<<0);
                             count++;

                       case 2:
                             PORTE = 0b11010010;
                             PORTB = 0b00010100;
                             Delay_ms(tempo);
                             PINO[2] = PING & (1<<0);
                             count++;

                       case 3:
                             PORTE = 0b11010011;
                             PORTB = 0b00010100;
                             Delay_ms(tempo);
                             PINO[3] = PING & (1<<0);
                             count++;

                        case 4:
                             PORTE = 0b11010100;
                             PORTB = 0b00010100;
                             Delay_ms(tempo);
                             PINO[4] = PING & (1<<0);
                             count++;

                       case 5:
                             PORTE = 0b11010101;
                             PORTB = 0b00010100;
                             Delay_ms(tempo);
                             PINO[5] = PING & (1<<0);
                             count++;

                       case 6:
                             PORTE = 0b11010110;
                             PORTB = 0b00010100;
                             Delay_ms(tempo);
                             PINO[6] = PING & (1<<0);
                             count++;

                       case 7:
                             PORTE = 0b11010111;
                             PORTB = 0b00010100;
                             Delay_ms(tempo);
                             PINO[7] = PING & (1<<0);
                             count++;

                       case 8:
                             PORTE = 0b01010000;
                             PORTB = 0b00010011;
                             Delay_ms(tempo);
                             PINO[8] = PING & (1<<0);
                             count++;

                       case 9:
                             PORTE = 0b01010001;
                             PORTB = 0b00010011;
                             Delay_ms(tempo);
                             PINO[9] = PING & (1<<0);
                             count++;

                       case 10:
                             PORTE = 0b01010010;
                             PORTB = 0b00010011;
                             Delay_ms(tempo);
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
                           Delay_ms(tempo);
                           PINO[1] = PING & (1<<0);
                           count++;

                     case 2:
                           PORTE = 0b01010100;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[2] = PING & (1<<0);
                           count++;

                      case 3:
                           PORTE = 0b01010101;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[3] = PING & (1<<0);
                           count++;

                      case 4:
                           PORTE = 0b01010110;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[4] = PING & (1<<0);
                           count++;

                      case 5:
                           PORTE = 0b01010111;
                           PORTB = 0b00010011;
                           Delay_ms(tempo);
                           PINO[5] = PING & (1<<0);
                           count++;

                      case 6:
                           PORTE = 0b01010000;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[6] = PING & (1<<0);
                           count++;

                      case 7:
                           PORTE = 0b01010001;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[7] = PING & (1<<0);
                           count++;

                      case 8:
                           PORTE = 0b01010010;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[8] = PING & (1<<0);
                           count++;

                     case 9:
                           PORTE = 0b01010011;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[9] = PING & (1<<0);
                           count++;

                     case 10:
                           PORTE = 0b01010100;
                           PORTB = 0b00001101;
                           Delay_ms(tempo);
                           PINO[10] = PING & (1<<0);
                           count++;

               }
       
            return count , PINO;
       }
       

        static int iljinCaboControle(int count, int *PINO){
        
                 switch (count){
                       case 1://PINO 50
                           PORTB = 0b00010101;
                           PORTE = 0b01001000;
                           Delay_ms(tempo);
                           PINO[1] = PING & (1<<0);
                           count++;

                     case 2://PINO 51
                           PORTE = 0b01001001;
                           Delay_ms(tempo);
                           PINO[2] = PING & (1<<0);
                           count++;


                     case 3://PINO 52
                           PORTE = 0b01001010;
                           Delay_ms(tempo);
                           PINO[3] = PING & (1<<0);
                           count++;


                     case 4://PINO 53
                           PORTE = 0b01001011;
                           Delay_ms(tempo);
                           PINO[4] = PING & (1<<0);
                           count++;

                     case 5://PINO 91
                           PORTE = 0b01001100;
                           Delay_ms(tempo);
                           PINO[5] = PING & (1<<0);
                           count++;

                     case 6://PINO 92
                           PORTE = 0b01001101;
                           Delay_ms(tempo);
                           PINO[6] = PING & (1<<0);
                           count++;

                     case 7://PINO 93
                           PORTE = 0b01001110;
                           Delay_ms(tempo);
                           PINO[7] = PING & (1<<0);
                           count++;


                     case 8://PINO 71
                           PORTE = 0b01001111;
                           Delay_ms(tempo);
                           PINO[8] = PING & (1<<0);
                           count++;


                     case 9://PINO 72
                           PORTE = 0b00110000;
                           Delay_ms(tempo);
                           PINO[9] = PING & (1<<0);
                           count++;

                     case 10://PINO 73
                           PORTE = 0b00110001;
                           Delay_ms(tempo);
                           PINO[10] = PING & (1<<0);
                           count++;

                     case 11://PINO 74
                           PORTE = 0b00110010;
                           Delay_ms(tempo);
                           PINO[11] = PING & (1<<0);
                           count++;

                     case 12://PINO 75
                           PORTE = 0b00110011;
                           Delay_ms(tempo);
                           PINO[12] = PING & (1<<0);
                           count++;

                      case 13://PINO 76
                           PORTE = 0b00110100;
                           Delay_ms(tempo);
                           PINO[13] = PING & (1<<0);
                           count++;

                      case 14://PINO 60
                           PORTE = 0b00110101;
                           Delay_ms(tempo);
                           PINO[14] = PING & (1<<0);
                           count++;

                      case 15://PINO 61
                           PORTE = 0b00110110;
                           Delay_ms(tempo);
                           PINO[15] = PING & (1<<0);
                           count++;

                      case 16://PINO 62
                           PORTE = 0b00110111;
                           Delay_ms(tempo);
                           PINO[16] = PING & (1<<0);
                           count++;

                     case 17://PINO 63
                           PORTE = 0b11010000;
                           PORTB = 0b00010100;
                           Delay_ms(tempo);
                           PINO[17] = PING & (1<<0);
                           count++;
                           
                    case 18://PINO 94
                           PORTF = PORTF |(1<<0);
                           Delay_ms(tempo);
                           PINO[18] = PINF &(1<<1);
                           count++;

                    case 19://PINO 96
                           PORTF = PORTF |(1<<0);
                           Delay_ms(tempo);
                           PINO[19] = PINF &(1<<2);
                           count++;

                    case 20://PINO 98
                           PORTF = PORTF |(1<<0);
                           Delay_ms(tempo);
                           PINO[20] = PINF &(1<<3);
                           count++;

                    case 21://PINO 77
                           PORTC = PORTC |(1<<0);
                           Delay_ms(tempo);
                           PINO[21] = PINC &(1<<1);
                           count++;


                    case 22://PINO 77
                           PORTC = PORTC |(1<<0);
                           Delay_ms(tempo);
                           PINO[22] = PINC & (1<<2);
                           count++;

                    case 23://PINO 77
                           PORTC = PORTC |(1<<0);
                           Delay_ms(tempo);
                           PINO[23] = PINC & (1<<3);
                           count++;

                    case 24://PINO 77
                           PORTC = PORTC |(1<<0);
                           Delay_ms(tempo);
                           PINO[24] = PINC & (1<<4);
                           count++;


                    case 25://PINO 77
                           PORTC = PORTC |(1<<0);
                           Delay_ms(tempo);
                           PINO[25] = PINC & (1<<5);
                           count++;

                    case 26://PINO 77
                           PORTC = PORTC |(1<<0);
                           Delay_ms(tempo);
                           PINO[26] = PINC & (1<<6);
                           count++;

                    case 27://PINO 64
                           PORTF = PORTF |(1<<4);
                           Delay_ms(tempo);
                           PINO[27] = PINF &(1<<5);
                           count++;

                    case 28://PINO 64
                           PORTF = PORTF |(1<<4);
                           Delay_ms(tempo);
                           PINO[28] = PINF &(1<<6);
                           count++;
                           
                   case 29: //PINO 64
                           PORTF = PORTF |(1<<4);
                           Delay_ms(tempo);
                           PINO[29] = PINF &(1<<7);
                           count++;
               }

             return count , PINO;
        }
       
       