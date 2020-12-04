draw_self();
if only_grey()
{	
	gr = shader_get_uniform(grey_volume, "a")
	if o_game_controller.white shader_set(grey_spike) else shader_set(grey_volume)
	shader_set_uniform_f(gr, grey_a)
	draw_self();

	shader_reset()
}

if!(o_game_controller.white)
{
   if only_grey() image_alpha = 0 else image_alpha = 1-grey_a
	grey_a = min(grey_a + 0.03, 1)
}
else
{
	grey_a = 0 
	image_alpha = 1
}
