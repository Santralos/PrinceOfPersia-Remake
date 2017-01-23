var d_player;
var blocked;

blocked = collision_line(x,y-100,obj_player.x, obj_player.y - 120,obj_solid,false,true);
d_player = point_distance(x,y-100,obj_player.x, obj_player.y - 120);

if(!triggered && d_player <= sight_range && !blocked && sign(obj_player.x -x)==dir){
    sight_level++;
    if(sight_level >= sight_threshold){
        triggered = true;
    }
}

if(triggered){
    //Trying to move to the player and attack him
    dir = sign(obj_player.x -x);
    if(!(place_free(x+(dir*100), y+10) || !place_free(x+(dir*50), y)) && d_player > 150 && !blocked){
        hspeed = dir * walk_speed;
    }else{
        hspeed = 0;
    }
}else if(alarm[0] == -1 && (place_free(x+(dir*100), y+10) || !place_free(x+(dir*50), y))){
    alarm[0] = wait_time;
    hspeed = 0;
}
