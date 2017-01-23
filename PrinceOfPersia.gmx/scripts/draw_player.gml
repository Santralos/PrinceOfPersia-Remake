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

if(lives == 0){
    
    sprite_index = spr_player_falling;
    image_speed = anim_falling_speed;   
    
    if(image_index == 5){
        image_speed = 0;
    }
    draw_self();
    exit;
}

if(BUTTON_REWINDING && ds_list_size(capsule)> 0){
    draw_self();
    exit;
}

//TOOLTIPS
var r_x;
var r_y;
var r_a;

r_x = random_range(-2,2);
r_y = random_range(-2,2);
r_a = random_range(0,0.2);

draw_set_halign(fa_center);
draw_set_font(fnt_devbox);

draw_text_colour(x+r_x,y-176+r_y,tooltip,c_black,c_black,c_black,c_black,1-r_a);
draw_text_colour(x+r_x,y-180+r_y,tooltip,tooltip_color,tooltip_color,tooltip_color,tooltip_color,1-r_a);


if(attack_state != ""){
    switch (attack_state)
    {
        case "A":
            sprite_index = spr_player_attack_A;
            image_speed = anim_attack_speed;
        break;
        
        case "B":
            sprite_index = spr_player_attack_B;
            image_speed = anim_attack_speed;
        break;
        
        case "C":
            sprite_index = spr_player_attack_C;
            image_speed = anim_attack_speed;
        break;
    }
}else{
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
}
draw_self();

if(!DEBUG_ALLOWED || !DEBUGGING){
    exit;
}
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);
