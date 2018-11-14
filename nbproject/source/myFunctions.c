/* * Descriptive File Name

  @Company
    Fontys Hogenscholen Eindhoven
    Engineering
    Thijs Tops
    356791@student.fontys.nl
    Github: https://github.com/thijseigenwijs

  @File Name
    myFunctions.c

  @Summary
     This file is for my functions, and the initalisation of the various 
     functions, buttons, leds, switches. And ofcourse all the code behide it!

  @Description
    See above
 */

#include "myFunctions.h"
#include <xc.h>

int BTNU_debounce_value = 0;
int BTNU_debounce_timer = bounceTimer;
int BTNU_debounce_first = 1;

int BTNL_debounce_value = 0;
int BTNL_debounce_timer = bounceTimer;
int BTNL_debounce_first = 1;

int BTNC_debounce_value = 0;
int BTNC_debounce_timer = bounceTimer;
int BTNC_debounce_first = 1;

int BTNR_debounce_value = 0;
int BTNR_debounce_timer = bounceTimer;
int BTNR_debounce_first = 1;

int BTND_debounce_value = 0;
int BTND_debounce_timer = bounceTimer;
int BTND_debounce_first = 1;

void mf_leds_init(void) //Initalisation of the leds
{
    TRISAbits.TRISA0 = 0;
    LED0 = 0;

    TRISAbits.TRISA1 = 0;
    LED1 = 0;

    TRISAbits.TRISA2 = 0;
    LED2 = 0;

    TRISAbits.TRISA3 = 0;
    LED3 = 0;

    TRISAbits.TRISA4 = 0;
    LED4 = 0;

    TRISAbits.TRISA5 = 0;
    LED5 = 0;

    TRISAbits.TRISA6 = 0;
    LED6 = 0;

    TRISAbits.TRISA7 = 0;
    LED7 = 0;
    
    return;
}

void mf_buttons_init() //Initalisation of the buttons
{ //BTNU
    TRISBbits.TRISB1 = 1; 
    //BTNL
    TRISBbits.TRISB0 = 1; 
    ANSELBbits.ANSB0 = 0;

//BTNC
    TRISFbits.TRISF4 = 1;


//BTNR
    TRISBbits.TRISB8 = 1; // RB8 (BTNR) configured as input
    ANSELBbits.ANSB8 = 0;
    BTNR_debounce_timer = 1;
    BTNR_debounce_value = 0;


//BTND
    TRISAbits.TRISA15 = 1;
    BTND_debounce_timer = 1;
    BTND_debounce_value = 0;

    return;
}

int BTNU_debounced() {
    if ((BTNU == 1 )&&( BTNU_debounce_value != BTNU_debounce_timer)) {
        BTNU_debounce_value = BTNU_debounce_value + 1;
        BTNU_debounce_first = 1;
    } else if (BTNU == 0) {
        BTNU_debounce_value = 0;
    }

    if ((BTNU_debounce_timer == BTNU_debounce_value) && (BTNU_debounce_first == 1)) {
        BTNU_debounce_first = 0;
        int returnBit = 1;
        return returnBit;
    }
    int returnBit = 0;
    return returnBit;
}

int BTNL_debounced() {
    if ((BTNL == 1) && (BTNL_debounce_value != BTNL_debounce_timer)) {
        BTNL_debounce_value = BTNL_debounce_value + 1;
        BTNL_debounce_first = 1;
    } else if (BTNU == 0) {
        BTNL_debounce_value = 0;
    }

    if ((BTNL_debounce_timer == BTNL_debounce_value) && (BTNL_debounce_first == 1)) {
        BTNL_debounce_first = 0;
        int returnBit = 1;
        return returnBit;
    }
    int returnBit = 0;
    return returnBit;
}


int BTNC_debounced() {
    if ((BTNC == 1) && (BTNC_debounce_value != BTNC_debounce_timer)) {
        BTNC_debounce_value = BTNC_debounce_value + 1;
        BTNC_debounce_first = 1;
    } else if (BTNC == 0) {
        BTNC_debounce_value = 0;
    }

    if ((BTNC_debounce_timer == BTNC_debounce_value) && (BTNC_debounce_first == 1)) {
        BTNC_debounce_first = 0;
        int returnBit = 1;
        return returnBit;
    }
    int returnBit = 0;
    return returnBit;
}
int BTNR_debounced() {
    if ((BTNR == 1) && (BTNR_debounce_value != BTNR_debounce_timer)) {
        BTNR_debounce_value = BTNR_debounce_value + 1;
        BTNR_debounce_first = 1;
    } else if (BTNR == 0) {
        BTNR_debounce_value = 0;
    }

    if ((BTNR_debounce_timer == BTNR_debounce_value) && (BTNR_debounce_first == 1)) {
        BTNR_debounce_first = 0;
        int returnBit = 1;
        return returnBit;
    }
    int returnBit = 0;
    return returnBit;
}

int BTND_debounced() {
    if ((BTND == 1) && (BTND_debounce_value != BTND_debounce_timer)) {
        BTND_debounce_value = BTND_debounce_value + 1;
        BTND_debounce_first = 1;
    } else if (BTND == 0) {
        BTND_debounce_value = 0;
    }

    if ((BTND_debounce_timer == BTND_debounce_value) && (BTND_debounce_first == 1)) {
        BTND_debounce_first = 0;
        int returnBit = 1;
        return returnBit;
    }
    int returnBit = 0;
    return returnBit;
}



void mf_switch_init() //Initalisation of the switches
{
    TRISFbits.TRISF3 = 1;

    TRISFbits.TRISF5 = 1;

    TRISFbits.TRISF4 = 1;

    TRISDbits.TRISD15 = 1;

    TRISDbits.TRISD14 = 1;

    TRISBbits.TRISB11 = 1;
    ANSELBbits.ANSB11 = 0;

    TRISBbits.TRISB10 = 1;
    ANSELBbits.ANSB10 = 0;

    TRISBbits.TRISB9 = 1;
    ANSELBbits.ANSB9 = 0;

    return;
}