var lx, ly, lw;

lw = sprite_get_width(spr_box);
lx = floor(random_range(0, floor(room_width/lw))) * lw;
ly = 0;

box = instance_create(lx, ly, obj_box);