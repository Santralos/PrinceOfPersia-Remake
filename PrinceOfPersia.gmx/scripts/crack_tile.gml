var block;

//Crack Myself
image_speed = anim_speed;

//Check Right
block = instance_place(x+16,y,obj_cracktile);
if(block != noone){
    with(block){
        if(image_speed == 0){
            crack_tile();
        }
    }
}
//Check Left
block = instance_place(x-16,y,obj_cracktile);
if(block != noone){
    with(block){
        if(image_speed == 0){
            crack_tile();
        }
    }
}
//Check Bottom
block = instance_place(x,y+16,obj_cracktile);
if(block != noone){
    with(block){
        if(image_speed == 0){
            crack_tile();
        }
    }
}
