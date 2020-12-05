if(this_level_final)
{
	dark_alpha = min(dark_alpha + 0.0005, 1)
	draw_set_color(c_black)
	draw_set_alpha(dark_alpha)
	draw_rectangle(0, 0, width, height, true)
}