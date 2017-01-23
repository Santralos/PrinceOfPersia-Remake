if(!gamepad_is_supported()){
    gp_id = -1;
    exit;
}

var gp_num = gamepad_get_device_count();
globalvar gp_id;
if(gp_num == 0){
    gp_id = -1;
    exit;
}
for (var i = 0; i < gp_num; i++;)
   {
       if (gamepad_is_connected(i)){
            gp_id = i;
            exit;
       }
   }

gp_id = -1;
