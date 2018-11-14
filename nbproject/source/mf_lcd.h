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

#ifndef _MF_LCD_H_
#define _MF_LCD_H_

#include "lcd.h"

char mf_lcd_display[2][16];

void mf_lcd_writeLine(int line);
void mf_lcd_setLine(int line, char text[]);

#endif
