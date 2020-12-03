
function yellow(){
	if o_game_controller.red
	{
		layer_set_visible("color_coll", o_game_controller.yellow)	
		layer_set_visible("b_color", o_game_controller.yellow)
		
	}
} 

function white(){
	if o_game_controller.white
	{
		audio_resume_all();
	}
	else 
	{
		audio_pause_all();
	}
	
	audio_resume_sound(tv_noise_in_game)
} 

function red(){
	layer_set_visible("grey_coll",  o_game_controller.red)	
	layer_set_visible("b_grey",  o_game_controller.red)
	layer_set_visible("spike",  o_game_controller.red)
	layer_set_visible("check_point",  o_game_controller.red)

	if !o_game_controller.red
	{
		layer_set_visible("color_coll", false)		
		layer_set_visible("b_color", false)

	}
	else 
	{
		layer_set_visible("color_coll",  o_game_controller.yellow)
		layer_set_visible("b_color",  o_game_controller.yellow)
	}
}

function visible(){
	return o_game_controller.red && o_game_controller.yellow
}

function only_grey(){
	return o_game_controller.red && !o_game_controller.yellow
}