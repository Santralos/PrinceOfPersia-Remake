globalvar BUTTON_LEFT;
globalvar BUTTON_RIGHT;
globalvar BUTTON_RUNNING;
globalvar BUTTON_COMBAT;

//For keyboard
BUTTON_LEFT = keyboard_check(ord("A"));
BUTTON_RIGHT = keyboard_check(ord("D"));
BUTTON_RUNNING = keyboard_check(vk_lshift);
