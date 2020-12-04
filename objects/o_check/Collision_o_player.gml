if(is_active) 
{
	o_game_controller.last_check_x = x
	o_game_controller.last_check_y = y
	is_active = 0
	sprite_index = s_check_not_active
	if o_game_controller.white audio_play_sound(checkpoint ,2 ,false)
}

	o_game_controller.can_red = can_red
	o_game_controller.can_white = can_white
	o_game_controller.can_yellow = can_yellow