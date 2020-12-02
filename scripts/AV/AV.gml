
function yellow(){
	if o_game_controller.red
	{
		layer_set_visible("color_coll", o_game_controller.yellow)	
		layer_set_visible("b_color", o_game_controller.yellow)
		layer_set_visible("color_spike", o_game_controller.yellow)
		
	}
} 

function white(){
	layer_set_visible("volume",  o_game_controller.white)
} 

function red(){
	layer_set_visible("grey_coll",  o_game_controller.red)	
	layer_set_visible("b_grey",  o_game_controller.red)
	layer_set_visible("grey_spike",  o_game_controller.red)

	if !o_game_controller.red
	{
		layer_set_visible("color_coll", false)		
		layer_set_visible("b_color", false)
		layer_set_visible("color_spike", false)

	}
	else 
	{
		layer_set_visible("color_coll",  o_game_controller.yellow)
		layer_set_visible("b_color",  o_game_controller.yellow)
		layer_set_visible("color_spike", o_game_controller.yellow)
	}
}

function visible(){
	return o_game_controller.red && o_game_controller.yellow
}

function only_grey(){
	return o_game_controller.red && !o_game_controller.yellow
}