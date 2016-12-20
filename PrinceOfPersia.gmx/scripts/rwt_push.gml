if(ds_list_size(capsule) >= stack_size){
    ds_list_delete(capsule,ds_list_size(capsule)-1);
}

var frame;   
frame = ds_map_create();

switch (object_index)
{
    case obj_box: 
        ds_map_add(frame, "x", x);
        ds_map_add(frame, "y", y);
        ds_map_add(frame, "vsp", vsp);
        //show_debug_message("Box capsule added");
    break;
    
    case obj_player:
        ds_map_add(frame, "x", x);
        ds_map_add(frame, "y", y);
        ds_map_add(frame, "sprite_index", sprite_index);
        ds_map_add(frame, "image_index", image_index);
        ds_map_add(frame, "xprevious", xprevious);
        //show_debug_message("Player capsule added");
    break;
    
}

ds_list_insert(capsule,0,frame);

