#include "assignment1_5.h"

//The functions are protected agains writing the same message over and over...
void KITT_message_welcome();
void KITT_message_activated();
void KITT_message_swoosh();
void KITT_message_turbo();
void KITT_message_deactivated();

int KITT_message_lastMessage = 0;

void KITT_state_one();
void KITT_state_two();
void KITT_state_three();
void KITT_state_four();
void KITT_state_five();

int KITT_buttons_correct = 0;