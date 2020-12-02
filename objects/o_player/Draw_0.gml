if(!visible())
{
	color_a = min(color_a - 0.035, 1)
	image_alpha = color_a
}
else
{
	color_a = 1
}

draw_self();
if(only_grey())
{
	image_alpha = 0
	grey_a = min(grey_a + 0.005, 1)
	gr = shader_get_uniform(grey, "a")
	shader_set(grey)
	shader_set_uniform_f(gr, grey_a)
	draw_self();

	shader_reset()
}
else
{
	grey_a = 0
}

if(visible() && !only_grey())
{
	image_alpha = 1
}

