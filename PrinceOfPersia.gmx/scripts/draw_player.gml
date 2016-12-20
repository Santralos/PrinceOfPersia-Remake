var hdir;
var a_msp;

hdir = sign(x-xprevious);
a_msp = anim_walking_speed;

if(BUTTON_RUNNING){
    a_msp = anim_running_speed;
}

if(hdir == 1 || hdir == -1){
    //Player is moving left or right
    sprite_index = spr_player_run_new;
    image_speed = a_msp;
    image_xscale = hdir;
}else{
    //Player is standing still
    sprite_index = spr_player_idle;
    image_speed = 0;
}

draw_self();
