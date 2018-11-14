#include "KITT_Messages.h"      //His own header file, first ofcourse
#include "assignment1_5.h"      // The headerfile for everything
#include "lcd.h"                // Everything to control the LCD
#include "myFunctions.h"        // To control leds, buttons, and switches
#include <xc.h>

void KITT_init() {
    KITT_buttons_correct = 0;
    KITT_message_lastMessage = 0;
}

void KITT_message_welcome() {
    if (KITT_message_lastMessage != 1) {
        KITT_message_lastMessage = 1;
        mf_lcd_setLine(0, "Embedded Systems");
        mf_lcd_setLine(1, "> KITT activated");
    }
}

void KITT_message_activated() {
    if (KITT_message_lastMessage != 2) {
        KITT_message_lastMessage = 2;
        mf_lcd_setLine(0, "Embedded Systems");
        mf_lcd_setLine(1, "> Yes Micheal   ");
    }
}

void KITT_message_swoosh() {
    if (KITT_message_lastMessage != 3) {
        KITT_message_lastMessage = 3;
        mf_lcd_setLine(0, "Embedded Systems");
        mf_lcd_setLine(1, "> Swoosh Swoosh ");
    }
}

void KITT_message_turbo() {
    if (KITT_message_lastMessage != 4) {
        KITT_message_lastMessage = 4;
        mf_lcd_setLine(0, "    NEW KIDS    ");
        mf_lcd_setLine(1, "> TURBOOOOOOOOO ");
    }
}

void KITT_message_deactivated() {
    if (KITT_message_lastMessage != 5) {
        KITT_message_lastMessage = 5;
        mf_lcd_setLine(0, "Embedded Systems");
        mf_lcd_setLine(1, "> Bye Micheal   ");
    }
}

void KITT_state_one() {
    if (BTNR_debounced() == 1) {
        KITT_buttons_correct = KITT_buttons_correct + 1;
    }
    if (BTND_debounced() == 1) {
        KITT_buttons_correct = 0;
    }

    if (KITT_buttons_correct == 3) {
        KITT_buttons_correct = 0;
        state = state + 1;
    }
}

void KITT_state_two() {
    if ((BTNR_debounced() == 1)&& (KITT_buttons_correct == 1)) {
        KITT_buttons_correct = KITT_buttons_correct + 1;
    } else if ((BTNR_debounced() == 1) && (KITT_buttons_correct != 1)) {
        KITT_buttons_correct = 0;
    }

    if ((BTND_debounced() == 1)&& ((KITT_buttons_correct == 0) || (KITT_buttons_correct == 2))) {
        KITT_buttons_correct = KITT_buttons_correct + 1;
    } else if ((BTND_debounced() == 1) && (!(KITT_buttons_correct == 0 || KITT_buttons_correct == 2))) {
        KITT_buttons_correct = 0;
    }

    if (KITT_buttons_correct == 3) {
        state = state + 1;
        T1CONbits.ON = 1;
        //TMR1 = 0;
        _PR1 = 10937;
        KITT_buttons_correct = 0;

    }

}

void KITT_state_three() { //BTND, BTND, BTNR

    if ((BTND_debounced() == 1) && (KITT_buttons_correct == 0 || KITT_buttons_correct == 1)) {
        KITT_buttons_correct = KITT_buttons_correct + 1;
    } else if ((BTND_debounced() == 1) && (!(KITT_buttons_correct == 0 || KITT_buttons_correct == 1))) {
        KITT_buttons_correct = 0;
    }

    if ((BTNR_debounced() == 1) && (KITT_buttons_correct == 2)) {
        KITT_buttons_correct = KITT_buttons_correct + 1;
    } else if ((BTND_debounced() == 1) && (KITT_buttons_correct != 2)) {
        KITT_buttons_correct = 0;
    }

    if (KITT_buttons_correct == 3) {
        state = state + 1;
        _PR1 = 5468;
        KITT_buttons_correct = 0;

    }

}

void KITT_state_four() {
    if (BTNR_debounced() == 1) {
        KITT_buttons_correct = KITT_buttons_correct + 1;
    }
    if (BTND_debounced() == 1) {
        KITT_buttons_correct = 0;
    }

    if (KITT_buttons_correct == 3) {
        T1CONbits.ON = 0;
        TMR2 = 0;
        KITT_buttons_correct = 0;
        state = state + 1;
    }
}

void KITT_state_five() {
    state = 0;
}