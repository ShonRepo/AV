key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(ord("W"));
key_yellow = keyboard_check_pressed(ord("J"));
key_white = keyboard_check_pressed(ord("K"));
key_red = keyboard_check_pressed(ord("L"));

//movement
var move = key_right - key_left;

h_speed = move * speed_walk;

v_speed = v_speed + grv;

if ((place_meeting(x, y+1,o_wall) && visible()) || (place_meeting(x, y+1,o_wall_g) && only_grey())) && (key_jump)
{
	v_speed =-1.5
}

//h_collision
if (place_meeting(x+h_speed,y,o_wall) && visible()) || (place_meeting(x+h_speed,y,o_wall_g) && only_grey())
{
	while (!place_meeting(x+sign(h_speed),y,o_wall))
	{
		x = x + sign(h_speed);	
	}
	h_speed = 0;
}

x = x + h_speed;

//V_collision
if (place_meeting(x,y+v_speed,o_wall) && visible()) || (place_meeting(x,y+v_speed,o_wall_g) && only_grey())
{
	while (!place_meeting(x,y+sign(v_speed),o_wall))
	{
		y = y + sign(v_speed);	
	}
	v_speed = 0
}

y = y + v_speed;


if (h_speed !=0)
{
	sprite_index = sprite_run;
} else sprite_index = sprite_idle;


if (h_speed !=0) image_xscale = sign(h_speed);


if (hp == 0) {
    instance_destroy(o_player)
}



//AV Controller
if(key_red) {
	o_game_controller.red = !o_game_controller.red
	red() 
}
if(key_white) {
	o_game_controller.white = !o_game_controller.white
	white()
}
if(key_yellow) {
	o_game_controller.yellow = !o_game_controller.yellow
	yellow()
}
