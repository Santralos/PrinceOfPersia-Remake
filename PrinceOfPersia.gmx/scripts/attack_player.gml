if(BUTTON_COMBAT){
    if(attack_state == ""){
        //Not in any attack move
        if(vsp == 0){
            attack_state = "A";
            image_index = 0;
            combo = false;
        }
    }
    else if(attack_state == "A" || attack_state == "B"){
        combo = true;
    }
}
