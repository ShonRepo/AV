// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grey_decor(){
draw_self(); 
if instance_exists(o_game_controller) {
if(only_grey())
{	
	shader_set(grey_spike)
	draw_self();

	shader_reset()
}
}
}