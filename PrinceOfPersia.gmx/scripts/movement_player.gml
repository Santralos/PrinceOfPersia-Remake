var move;
var hsp;

move = BUTTON_RIGHT - BUTTON_LEFT;
hsp = move * movement_speed;

//Horizontal Collision
if (!place_free(x+hsp,y)){
    while(place_free(x+sign(hsp),y)){
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;