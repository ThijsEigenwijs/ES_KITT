/** Descriptive File Name

  @Company
    Fontys Hogenscholen Eindhoven
    Engineering
    Thijs Tops
    356791@student.fontys.nl
    Github: https://github.com/thijseigenwijs

  @File Name
    assignment1_5.h

  @Summary
    The headerfile for the c-file where is the main, this file includes all the
    defines, for example the button and leds

  @Description
    See above
 */

#include <stdio.h>

#include "mf_lcd.h"
#include "lcd.h"

void mf_lcd_writeLine(int line) {
    LCD_WriteStringAtPos(mf_lcd_display[line], line, 0);
    return;
} 

void mf_lcd_setLine(int line, char text[]){
    sprintf(mf_lcd_display[line], text);
    mf_lcd_writeLine(line);
    return;
}