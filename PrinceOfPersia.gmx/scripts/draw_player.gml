
var hdir;
var a_msp;

hdir = sign(x-xprevious);
a_msp = anim_walking_speed;

if(BUTTON_RUNNING){
    a_msp = anim_running_speed;
}

if(hdir != 0){
    image_xscale = hdir;
}

if(BUTTON_REWINDING && ds_list_size(capsule)> 0){
    draw_self();
    exit;
}

if(hdir != 0 && vsp==0 && !STUNNED){
    //Player is moving left or right
    sprite_index = spr_player_run_new;
    image_speed = a_msp;
}else if(vsp < 0 && !STUNNED){
    sprite_index = spr_player_jump_a;
    image_index = 3;
    image_speed = 0;
}else if(vsp > 0 && !STUNNED){
    sprite_index = spr_player_jump_b;
    image_speed = anim_jump_speed_b;
}else if(!STUNNED){
    //Player is standing still
    sprite_index = spr_player_idle_new;
    image_speed = 0;
}

draw_self();