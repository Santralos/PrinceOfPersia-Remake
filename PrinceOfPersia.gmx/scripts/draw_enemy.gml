var anim_speed;

if(!triggered){
    if(y == yprevious){
        sprite_index = spr_enemy_idle;
        anim_speed = anim_idle_speed;
    }
}

image_index += anim_speed;

draw_self();



//DEBUG ZONE
if(!DEBUG_ALLOWED || !DEBUGGING){
    exit;
}
var color;
var d_player;
var blocked;

blocked = collision_line(x,y-100,obj_player.x, obj_player.y - 120,obj_solid,false,true);
d_player = point_distance(x,y-100,obj_player.x, obj_player.y - 120);

if(!blocked && d_player <= sight_range){
    color = c_red;
}else{
    color = c_white;
}

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(x,y-100,string(sight_level));

draw_line_colour(x,y-100,obj_player.x, obj_player.y - 80,color,color);


