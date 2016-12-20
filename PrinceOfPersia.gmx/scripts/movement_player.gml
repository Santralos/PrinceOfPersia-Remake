var move;
var hsp;
var msp;

msp = walking_speed;
if(BUTTON_RUNNING){
    msp = running_speed;
}

move = BUTTON_RIGHT - BUTTON_LEFT;
hsp = move * msp;

//Horizontal Collision
if (!place_free(x+hsp,y)){
    while(place_free(x+sign(hsp),y)){
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;
