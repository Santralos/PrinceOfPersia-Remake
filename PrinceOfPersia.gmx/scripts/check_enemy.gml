if(life = 0){
    hspeed = 0;
    exit;
}


var d_player;
var blocked;

blocked = collision_line(x,y-100,obj_player.x, obj_player.y - 80,obj_solid,false,true);
d_player = point_distance(x,y-100,obj_player.x, obj_player.y - 80);

if(!triggered && d_player <= sight_range && !blocked && sign(obj_player.x -x)==dir){
    sight_level++;
    if(sight_level >= sight_threshold){
        triggered = true;
    }
}

vsp += grav;

//Vertical Collision
if (!place_free(x,y+ceil(vsp))){
    var block;
    
    block = instance_place(x,y+ceil(vsp),obj_cracktile);
    if(block != noone){
        with(block){
            if(image_speed == 0){
                crack_tile();
            }
        }
    }

    vsp = 0;
}

y += vsp;
y = round(y);

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
