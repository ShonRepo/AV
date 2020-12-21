draw_self();
if(only_grey())
{
	shader_set(grey)
	draw_self();
	shader_reset()
}