globalvar BUTTON_LEFT;
globalvar BUTTON_RIGHT;
globalvar BUTTON_RUNNING;
globalvar BUTTON_COMBAT;
globalvar BUTTON_REWINDING;
globalvar BUTTON_INTERACTION;
globalvar BUTTON_DEBUG;
globalvar BUTTON_RESET;

//For keyboard
if(gp_id != -1){
    GP_DEBUG = gamepad_button_check_pressed(gp_id, gp_select);
    GP_LEFT = gamepad_button_check(gp_id, gp_padl);
    GP_RIGHT = gamepad_button_check(gp_id, gp_padr);
    GP_COMBAT = gamepad_button_check_pressed(gp_id, gp_face3);
    GP_RUNNING = gamepad_button_check(gp_id, gp_shoulderrb);
    GP_REWINDING = gamepad_button_check(gp_id, gp_shoulderl);
    GP_JUMPING = gamepad_button_check_pressed(gp_id, gp_face1);
    GP_INTERACTION = gamepad_button_check_pressed(gp_id, gp_face4);
    GP_RESET = gamepad_button_check_pressed(gp_id, gp_start);
}else{
    GP_DEBUG = 0;
    GP_LEFT = 0;
    GP_RIGHT = 0;
    GP_COMBAT = 0;
    GP_RUNNING = 0;
    GP_REWINDING = 0;
    GP_JUMPING = 0;
    GP_INTERACTION = 0;
    GP_RESET = 0;
}
BUTTON_DEBUG = sign(keyboard_check_pressed(vk_f2)+GP_DEBUG);

BUTTON_LEFT = sign(keyboard_check(ord("A"))+GP_LEFT);
BUTTON_RIGHT = sign(keyboard_check(ord("D"))+GP_RIGHT);

BUTTON_COMBAT = sign(mouse_check_button_pressed(mb_left)+GP_COMBAT);
BUTTON_RUNNING = sign(keyboard_check(vk_lshift)+GP_RUNNING);
BUTTON_REWINDING = sign(keyboard_check(vk_lcontrol)+GP_REWINDING);
BUTTON_JUMPING = sign(keyboard_check_pressed(vk_space)+GP_JUMPING);
BUTTON_INTERACTION = sign(keyboard_check_pressed(ord("E"))+GP_INTERACTION);
BUTTON_RESET = sign(keyboard_check_pressed(ord("R"))+GP_RESET);


if(BUTTON_RESET){
    wipe_memory();
    game_restart();
}
