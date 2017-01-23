//Lever
var lever;
var l_distance;

lever = instance_nearest(x,y,obj_lever);

if(lever == noone){
    exit;
}

l_distance = point_distance(lever.x, lever.y, x, y);
if(l_distance <= lever_range){
    tooltip = "SWITCH (Y)";
    tooltip_color = c_yellow;
    if(BUTTON_INTERACTION){
        with(lever){
            switch_lever();
        }
    }
}
