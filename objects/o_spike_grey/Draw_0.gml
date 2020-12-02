draw_self();
if(only_grey()) 
{	
	shader_set(grey_spike)
	draw_self();

	shader_reset()
}