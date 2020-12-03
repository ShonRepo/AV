draw_sprite(s_test,-1,0,0)

if o_game_controller.yellow
{
	index_yellow = max(index_yellow - 1, 0)
}
else
{
	index_yellow = min(index_yellow + 1, 13)
}

if o_game_controller.white
{
	index_white = max(index_white - 1, 0)
}
else
{
	index_white = min(index_white + 1, 13)
}


if o_game_controller.red
{
	index_red = max(index_red - 1, 0)
}
else
{
	index_red = min(index_red + 1, 13)
}

draw_sprite(s_yellow,index_yellow,21,84)
draw_sprite(s_white,index_white,40,84)
draw_sprite(s_red,index_red,59,84)

draw_set_font(MegaFont)
draw_set_halign(fa_center);
if !instance_exists(o_player) draw_text(width/2, height/2 , "Press R to restart")