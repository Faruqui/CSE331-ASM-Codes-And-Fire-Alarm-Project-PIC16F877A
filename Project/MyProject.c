// LCD module connections
sbit LCD_RS at RC2_bit;
sbit LCD_EN at RC3_bit;
sbit LCD_D4 at RC4_bit;
sbit LCD_D5 at RC5_bit;
sbit LCD_D6 at RC6_bit;
sbit LCD_D7 at RC7_bit;

sbit LCD_RS_Direction at TRISC2_bit;
sbit LCD_EN_Direction at TRISC3_bit;
sbit LCD_D4_Direction at TRISC4_bit;
sbit LCD_D5_Direction at TRISC5_bit;
sbit LCD_D6_Direction at TRISC6_bit;
sbit LCD_D7_Direction at TRISC7_bit;
// End LCD module connections


sbit GAS at RD0_bit;                 // gas sensor is connected to RD0 pin

void main() {


  Lcd_Init();                        // Initialize LCD

  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off

  TRISD0_bit=1;                      //Set RD0 as input
  TRISD1_bit=0;                      //Set RD1 as ouput

  while(1){
  if(GAS == 1){

         Lcd_out(1,1, "Gas Detected" );
         PORTD.F1 = 1;
  }
  else {

       Lcd_out(1,1, "No Gas          " );
       PORTD.F1 = 0;
  }

  }

}