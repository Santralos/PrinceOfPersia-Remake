var d_player;
var blocked;

d_player = point_distance(x,y-100,obj_player.x, obj_player.y - 120);
blocked = collision_line(x,y-100,obj_player.x, obj_player.y - 120,obj_solid,false,true);

if(d_player <= sight_range && !blocked){
    sight_level++;
}

