/** Descriptive File Name

  @Company
    Fontys Hogenscholen Eindhoven
    Engineering
    Thijs Tops
    356791@student.fontys.nl
    Github: https://github.com/thijseigenwijs

  @File Name
    assignment1_5.c

  @Summary
    This file contains the main of the program, also called int main()!

  @Description
    This file contains everything i need, so yeah....
 */


// PIC32MX370F512L Configuration Bit Settings

// 'C' source line config statements

// DEVCFG3
// USERID = No Setting
#pragma config FSRSSEL = PRIORITY_7     // Shadow Register Set Priority Select (SRS Priority 7)
#pragma config PMDL1WAY = ON            // Peripheral Module Disable Configuration (Allow only one reconfiguration)
#pragma config IOL1WAY = ON             // Peripheral Pin Select Configuration (Allow only one reconfiguration)

// DEVCFG2
#pragma config FPLLIDIV = DIV_2        // PLL Input Divider (12x Divider)
#pragma config FPLLMUL = MUL_16         // PLL Multiplier (24x Multiplier)
#pragma config FPLLODIV = DIV_1       // System PLL Output Clock Divider (PLL Divide by 256)

// DEVCFG1
#pragma config FNOSC = FRCPLL           // Oscillator Selection Bits (Fast RC Osc w/Div-by-N (FRCDIV))
#pragma config FSOSCEN = OFF             // Secondary Oscillator Enable (Enabled)
#pragma config IESO = ON                // Internal/External Switch Over (Enabled)
#pragma config POSCMOD = XT           // Primary Oscillator Configuration (Primary osc disabled)
#pragma config OSCIOFNC = ON           // CLKO Output Signal Active on the OSCO Pin (Disabled)
#pragma config FPBDIV = DIV_8           // Peripheral Clock Divisor (Pb_Clk is Sys_Clk/8)
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor Selection (Clock Switch Disable, FSCM Disabled)
#pragma config WDTPS = PS1048576        // Watchdog Timer Postscaler (1:1048576)
#pragma config WINDIS = OFF             // Watchdog Timer Window Enable (Watchdog Timer is in Non-Window Mode)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (WDT Enabled)
#pragma config FWDTWINSZ = WINSZ_25     // Watchdog Timer Window Size (Window Size is 25%)

// DEVCFG0
#pragma config DEBUG = ON              // Background Debugger Enable (Debugger is Disabled)
#pragma config JTAGEN = OFF              // JTAG Enable (JTAG Port Enabled)
#pragma config ICESEL = ICS_PGx1        // ICE/ICD Comm Channel Select (Communicate on PGEC1/PGED1)
#pragma config PWP = OFF                // Program Flash Write Protect (Disable)
#pragma config BWP = OFF                // Boot Flash Write Protect bit (Protection Disabled)
#pragma config CP = OFF                 // Code Protect (Protection Disabled)

/*****************************************************************************/
/*  #Includes + #Defines                                                     */
/*****************************************************************************/
//#include <proc/p32mx370f512l.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <xc.h>
#include <sys/attribs.h>

#include "myFunctions.h"
#include "config.h"
#include "lcd.h"
#include "mf_lcd.h"
#include "mf_timer.h"
#include "KITT_Messages.h"
#include "assignment1_5.h"
/*****************************************************************************/
/*  All the variables                                                        */
/*****************************************************************************/

int state = 0;
int led = 0;
int direction = 0;

/*****************************************************************************/
/*  Function definitions                                                     */
/*****************************************************************************/


/*****************************************************************************/
/*  Main function                                                            */

/*****************************************************************************/
int myPR1 = 10937;

int main() {

    //Put there your setup / init functions

    mf_leds_init(); //Init the leds and turn them off
    mf_buttons_init(); //Init the buttons on the correct way
    mf_timer1_init();
    //Test for timer
    T1CONbits.ON = 0x1;

    TMR1 = 0;
    TMR2 = 0;

    PR1 = 65534; // 65543; 7 


    //T2CONbits.ON = 0;
    LCD_Init(); //Init the LCD
    KITT_init(); //Init KITT, HELL YEAH THATS AWESOME!

    KITT_message_welcome();

    //Timer 2, prescaler 64, for 350ms PR2 = 43749
    //Timer 2, prescaler 64, for 175ms PR2 = 21874

    //Make something to look for 3x BTNR presses


    unsigned char *pLedData = (unsigned char *) lat_LEDS_GRP_ADDR;
    *pLedData = 0x0;

    //Function to wait for the button presses
    //PR2 = 43749;
    while (1) {

        if (TMR1 > myPR1) {
            TMR1 = 0x0;
            if (direction == 0) {
                //add one to the led
                led = led + 1;
                //When limit is reached, turn direction
                if (led == 7) {
                    direction = 1;
                }
            } else if (direction == 1) {
                //subtract one
                led = led - 1;
                //When the limit is reached
                if (led == 0) {
                    //Turn direcetion
                    direction = 0;
                }
            }

            switch (led) {
                case 0:
                    LED7 = 0;
                    LED1 = 0;
                    LED0 = 1;
                    LED1 = 0;
                    break;
                case 1:
                    LED0 = 0;
                    LED1 = 1;
                    LED2 = 0;
                    break;
                case 2:
                    LED1 = 0;
                    LED2 = 1;
                    LED3 = 0;
                    break;
                case 3:
                    LED2 = 0;
                    LED3 = 1;
                    LED4 = 0;
                    break;
                case 4:
                    LED3 = 0;
                    LED4 = 1;
                    LED5 = 0;
                    break;
                case 5:
                    LED4 = 0;
                    LED5 = 1;
                    LED6 = 0;
                    break;
                case 6:
                    LED5 = 0;
                    LED6 = 1;
                    LED7 = 0;
                    break;
                case 7:
                    LED6 = 0;
                    LED7 = 1;
                    LED0 = 0;
                    break;
                default:
                    //This is also unreachable code
                    break;
            }


        }

        switch (state) {
            case 0: // Waiting to be turned on (BTNR, BTNR, BTNR)
                KITT_state_one();
                break;
            case 1: // Display Yes Micheal + Wait for BTND, BTNR, BTND
                KITT_message_activated();
                KITT_state_two();
                break;
            case 2: // Whoosh Whoosh + Wait for BTND, BTND, BTNR
                T1CONbits.ON = 0x1;

                KITT_message_swoosh();
                KITT_state_three();
                break;
            case 3: // TURBOOOOOO BTNR BTNR BTNR
                KITT_message_turbo();
                KITT_state_four();
                break;
            case 4: // Say bye
                T1CONbits.ON = 0x0;
                KITT_message_deactivated();
                KITT_state_five();
                break;
            default:
                break;
        }



    } // End of while(1) loop in what everything is 

}