var move;
var hsp;
var msp;

msp = walking_speed;
if(BUTTON_RUNNING){
    msp = running_speed;
}
if(BUTTON_JUMPING){
    if (!place_free(x,y+1) && vsp = 0){
        //jump
        vsp = -jump_speed;
        STUNNED = true;
        alarm[0] = (1/anim_jump_speed_a) * sprite_get_number(spr_player_jump_a);
        sprite_index = spr_player_jump_a;
        image_index = 0;
        image_speed = anim_jump_speed_a;
        exit;
    }
}

move = BUTTON_RIGHT - BUTTON_LEFT;
hsp = move * msp;
vsp = vsp + grav;

//Horizontal Collision
if (!place_free(x+hsp,y)){
    while(place_free(x+sign(hsp),y)){
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

//Vertical Collision
if (!place_free(x,y+ceil(vsp))){
    while(place_free(x,y+sign(vsp))){
        y += sign(vsp);
    }
    vsp = 0;
    if(y != yprevious){
        STUNNED = true;
        alarm[0] = (1/anim_jump_speed_c) * sprite_get_number(spr_player_jump_c);
        sprite_index = spr_player_jump_c;
        image_index  = 0;
        image_speed  = anim_jump_speed_c;
    }
}

y += vsp;
