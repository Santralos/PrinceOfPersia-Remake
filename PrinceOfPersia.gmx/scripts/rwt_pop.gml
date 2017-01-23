if(ds_list_size(capsule) > 2){

    var frame;
    ds_map_destroy(ds_list_find_value(capsule,0));
    ds_list_delete(capsule, 0);
    
    frame = ds_list_find_value(capsule,0);
    
    switch (object_index)
    {
        
        case obj_player:
            x = ds_map_find_value(frame, "x");
            y = ds_map_find_value(frame, "y");
            sprite_index = ds_map_find_value(frame, "sprite_index");
            image_index = ds_map_find_value(frame, "image_index");
            xprevious = ds_map_find_value(frame, "xprevious");
            yprevious = ds_map_find_value(frame, "yprevious");
            lives = ds_map_find_value(frame, "lives");
            show_debug_message("Rewinding stack: "+string(ds_list_size(capsule)));
        break;
        
        case obj_lever:
            switched = ds_map_find_value(frame, "switched");
        break;
        
        case obj_gate:
            image_index = ds_map_find_value(frame, "image_index");
            open = ds_map_find_value(frame, "open");
        break;
    }
    
    ds_map_destroy(frame);
    ds_map_destroy(ds_list_find_value(capsule,0));
    ds_list_delete(capsule, 0);
}

