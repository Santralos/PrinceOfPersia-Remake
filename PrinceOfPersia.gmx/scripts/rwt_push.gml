if(ds_list_size(capsule) >= stack_size){
    ds_map_destroy(ds_list_find_value(capsule,ds_list_size(capsule)-1));
    ds_list_delete(capsule,ds_list_size(capsule)-1);
}

var frame;
var p_frame;

p_frame = ds_list_find_value(capsule, 0);
frame = ds_map_create();

switch (object_index)
{
    
    case obj_player:
       // if(!is_undefined(ds_map_find_value(p_frame, x))
        ds_map_add(frame, "x", x);
        ds_map_add(frame, "y", y);
        ds_map_add(frame, "sprite_index", sprite_index);
        ds_map_add(frame, "image_index", image_index);
        ds_map_add(frame, "xprevious", xprevious);
        ds_map_add(frame, "yprevious", yprevious);
        ds_map_add(frame, "lives", lives);
        //show_debug_message("Player capsule added");
    break;
    
    case obj_lever:
        ds_map_add(frame, "switched", switched);
    break;
    
    case obj_gate:
        ds_map_add(frame, "image_index", image_index);
        ds_map_add(frame, "open", open);
    break;
}

ds_list_insert(capsule,0,frame);
