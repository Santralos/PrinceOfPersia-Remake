with(obj_player){
    for (i=0; i<ds_list_size(capsule); i+=1)
    {
        ds_map_destroy(ds_list_find_value(capsule,i));
    };
    ds_list_destroy(capsule);
}
with(obj_gate){
    for (i=0; i<ds_list_size(capsule); i+=1)
    {
        ds_map_destroy(ds_list_find_value(capsule,i));
    };
    ds_list_destroy(capsule);
}
with(obj_lever){
    for (i=0; i<ds_list_size(capsule); i+=1)
    {
        ds_map_destroy(ds_list_find_value(capsule,i));
    };
    ds_list_destroy(capsule);
}

