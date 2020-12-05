if(this_level_final)
{
	if is_final_game dark_alpha = min(dark_alpha + 0.005, 2) else dark_alpha = min(dark_alpha + 0.025, 2)
	if ! instance_exists(o_dark) 
	{
		if is_final_game instance_create_layer(o_final_fire.x, o_final_fire.y, "dark", o_dark) else	instance_create_layer(o_check_big.x, o_check_big.y, "dark", o_dark)
	}
	o_dark.image_alpha = dark_alpha
	
	if is_final_game && dark_alpha == 2 room_goto(r_titres)
}