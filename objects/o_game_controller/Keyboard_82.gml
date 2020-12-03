instance_destroy(o_player)
instance_destroy(o_dead_player)
instance_create_layer(last_check_x, last_check_y,"player",o_player)
red = true
white = true
yellow = true

can_red = false
can_white = false
can_yellow = false

red()
white()
yellow()