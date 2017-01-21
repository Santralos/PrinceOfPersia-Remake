if(ds_list_size(capsule) > 2){

    var frame;
    ds_list_delete(capsule, 0);
    
    frame = ds_list_find_value(capsule,0);
    
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
            show_debug_message("Rewinding stack: "+string(ds_list_size(capsule)));
        break;
    }
    
    ds_map_destroy(frame);
    ds_list_delete(capsule, 0);
}


