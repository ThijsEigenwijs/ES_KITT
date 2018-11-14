
/* * Descriptive File Name

  @Company
    Fontys Hogenscholen Eindhoven
    Engineering
    Thijs Tops
    356791@student.fontys.nl
    Github: https://github.com/thijseigenwijs

  @File Name
    myFunctions.h

  @Summary
     This file is for my functions, and the initalisation of the various 
     functions, buttons, leds, switches

  @Description
    See above
 */



#ifndef _MYFUNCTIONS_H_
#define _MYFUNCTIONS_H_

#include "assignment1_5.h"

#define bounceTimer 100

#define LED0 LATAbits.LATA0
#define LED1 LATAbits.LATA1    
#define LED2 LATAbits.LATA2    
#define LED3 LATAbits.LATA3    
#define LED4 LATAbits.LATA4    
#define LED5 LATAbits.LATA5
#define LED6 LATAbits.LATA6    
#define LED7 LATAbits.LATA7

#define BTNU PORTBbits.RB1
#define BTNL PORTBbits.RB0
#define BTNC PORTFbits.RF0
#define BTNR PORTBbits.RB8
#define BTND PORTAbits.RA15

#define SW0 PORTFbits.RF3
#define SW1 PORTFbits.RF5
#define SW2 PORTFbits.RF4
#define SW3 PORTDbits.RD15
#define SW4 PORTDbits.RD14
#define SW5 PORTBbits.RB11
#define SW6 PORTBbits.RB10
#define SW7 PORTBbits.RB9

void mf_leds_init(void);
void mf_buttons_init(void);
void mf_switch_init(void);

int BTNR_debounced(void);
int BTND_debounced(void);
int BTNC_debounced(void);
int BTNL_debounced(void);

#endif
//End of file
