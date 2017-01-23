switched = !switched;
if(my_objects == noone){
    exit;
}

for (i=0; i<ds_list_size(my_objects); i+=1)
{
    var gate;
    gate = ds_list_find_value(my_objects, i);
    gate.open = !gate.open;
};
