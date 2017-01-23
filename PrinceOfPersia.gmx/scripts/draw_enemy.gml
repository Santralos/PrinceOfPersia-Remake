var anim_speed;

if(hspeed == 0){
    sprite_index = spr_enemy_idle;
    anim_speed = anim_idle_speed;
}else{
    sprite_index = spr_enemy_walking;
    anim_speed = anim_walking_speed;
}

image_index += anim_speed;
image_xscale = dir;

draw_self();

if(triggered){
    t_index += anim_trigger_speed;
    draw_sprite(spr_enemy_trigger, t_index, x, y-160);
}


//DEBUG ZONE
if(!DEBUG_ALLOWED || !DEBUGGING){
    exit;
}
var color;
var d_player;
var blocked;

blocked = collision_line(x,y-100,obj_player.x, obj_player.y - 120,obj_solid,false,true);
d_player = point_distance(x,y-100,obj_player.x, obj_player.y - 120);

if(!blocked && d_player <= sight_range && sign(obj_player.x -x)==dir){
    color = c_red;
}else{
    color = c_white;
}

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(x,y-100,string(sight_level));

draw_line_colour(x,y-100,obj_player.x, obj_player.y - 80,color,color);
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);
