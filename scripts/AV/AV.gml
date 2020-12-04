
function yellow(){
	if o_game_controller.red
	{
		layer_set_visible("color_coll", o_game_controller.yellow)	
		layer_set_visible("b_color", o_game_controller.yellow)
	}

	
	if o_game_controller.yellow
	{
			if instance_exists(o_player) audio_play_sound(plug_on,2,false)
	}
	else
	{
			if instance_exists(o_player) audio_play_sound(plug_off,2,false)
	}
	
} 

function white(){
	if o_game_controller.white
	{
		audio_resume_all();
		if instance_exists(o_player) audio_play_sound(plug_on,2,false)
	}
	else 
	{
		audio_pause_all();
		if instance_exists(o_player) audio_play_sound(plug_off,2,false)

	}
	
	audio_resume_sound(tv_noise_in_game)
} 

function red(){
	layer_set_visible("grey_coll",  o_game_controller.red)	
	layer_set_visible("b_grey",  o_game_controller.red)
	layer_set_visible("spike",  o_game_controller.red)
	layer_set_visible("check_point",  o_game_controller.red)
	layer_set_visible("decor_coll",  o_game_controller.red)
	layer_set_visible("volume",  o_game_controller.red)

	if !o_game_controller.red
	{
		layer_set_visible("color_coll", false)		
		layer_set_visible("b_color", false)
		if instance_exists(o_player) audio_play_sound(plug_off,2,false)

	}
	else 
	{
		layer_set_visible("color_coll",  o_game_controller.yellow)
		layer_set_visible("b_color",  o_game_controller.yellow)
		if instance_exists(o_player) audio_play_sound(plug_on,2,false)

	}
}

function visible(){
	return o_game_controller.red && o_game_controller.yellow
}

function only_grey(){
	return o_game_controller.red && !o_game_controller.yellow
}