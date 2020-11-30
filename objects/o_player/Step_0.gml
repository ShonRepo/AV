key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(ord("W"));
key_red = keyboard_check(ord("J"));
key_white = keyboard_check(ord("K"));
key_yellow = keyboard_check(ord("L"));

//movement
var move = key_right - key_left;

h_speed = move * speed_walk;

v_speed = v_speed + grv;

if (place_meeting(x, y+1,o_wall)) && (key_jump)
{
	v_speed =-7
}

//h_collision
if (place_meeting(x+h_speed,y,o_wall))
{
	while (!place_meeting(x+sign(h_speed),y,o_wall))
	{
		x = x + sign(h_speed);	
	}
	h_speed = 0;
}

x = x + h_speed;

//V_collision
if (place_meeting(x,y+v_speed,o_wall))
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

