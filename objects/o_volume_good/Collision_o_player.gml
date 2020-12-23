if (o_game_controller.white) 
{
	switch (state) 
	{
		case orientation.up:
		o_player.v_speed = -power_volume
		break;
		
		case orientation.down:
		o_player.v_speed = power_volume
		break;
		
		case orientation.left:
		if o_player.v_speed > 0
		{
			o_player.v_speed = 0
		}
		o_player.boost = 2
		o_player.image_xscale = -1
		break;
		
		case orientation.right:
		if o_player.v_speed > 0
		{
			o_player.v_speed = 0
		}
		o_player.boost = 2
		o_player.image_xscale = 1
		break;
		
	}
}