if(ds_stack_size(capsule) > 2){

    var frame;
    frame = ds_stack_pop(capsule);
    frame = ds_stack_pop(capsule);
    switch (object_index)
    {
        case obj_box: 
            x = ds_map_find_value(frame, "x");
            y = ds_map_find_value(frame, "y");
            vsp = ds_map_find_value(frame, "vsp");
        break;
        
        case obj_player:
            x = ds_map_find_value(frame, "x");
            y = ds_map_find_value(frame, "y");
            sprite_index = ds_map_find_value(frame, "sprite_index");
            image_index = ds_map_find_value(frame, "image_index");
            xprevious = ds_map_find_value(frame, "xprevious");
            show_debug_message("Rewinding stack: "+string(ds_stack_size(capsule)));
        break;
    }
    ds_map_destroy(frame);
}
