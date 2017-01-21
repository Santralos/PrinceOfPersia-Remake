if(!DEBUG_ALLOWED || !DEBUGGING){
    exit;
}

draw_set_font(fnt_devbox);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_set_colour(c_white);
draw_text(argument0,argument1,VERSION_TEXT+"#Player V-Speed: "+string(obj_player.vsp)+"#Y= "+string(obj_player.y));
