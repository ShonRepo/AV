if(this_level_final)
{
	dark_alpha = min(dark_alpha + 0.005, 2)
	if ! instance_exists(o_dark) instance_create_layer(o_check_big.x, o_check_big.y, "dark", o_dark)
	o_dark.image_alpha = dark_alpha
}