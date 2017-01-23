if(BUTTON_COMBAT){
    if(attack_state == ""){
        //Not in any attack move
        
        if(vsp == 0){
            //Sneakkill
            var enemy;
            enemy = instance_nearest(x,y,obj_enemy);
            if(instance_exists(enemy)){
                if(distance_to_object(enemy) < sneak_distance && sign(x-enemy.x) != enemy.dir && enemy.life > 0){
                    attack_state = "C";
                    image_index = 0;
                    combo = false;
                    with(enemy){
                        kill_enemy();
                    }
                    exit;
                }
                
            }
            attack_state = "A";
            image_index = 0;
            combo = false;
        }
    }
    else if(attack_state == "A" || attack_state == "B"){
        combo = true;
    }
}
