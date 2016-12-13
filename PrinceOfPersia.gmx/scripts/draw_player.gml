var hdir;

hdir = sign(x-xprevious);

if(hdir == 1 || hdir == -1){
    //Player is moving left or right
    sprite_index = spr_player_run;
    image_speed = anim_walking_speed;
    image_xscale = hdir;
}else{
    //Player is standing still
    sprite_index = spr_player_idle;
    image_speed = 0;
}

draw_self();
