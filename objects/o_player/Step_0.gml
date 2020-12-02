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

if ((tilemap_get_at_pixel(o_game_controller.colorCollisionMap, x, y+1) && visible()) || (tilemap_get_at_pixel(o_game_controller.grayCollisionMap, x, y+1) && only_grey())) && (key_jump)
{
	v_speed =-1.5
}

//h_collision
if (tilemap_get_at_pixel(o_game_controller.colorCollisionMap,  x+h_speed, y) && visible()) || (tilemap_get_at_pixel(o_game_controller.grayCollisionMap,  x+h_speed, y) && only_grey())
{
	h_speed = 0;
}

x = x + h_speed;

//V_collision
if (tilemap_get_at_pixel(o_game_controller.colorCollisionMap, x, y+v_speed ) && visible()) || (tilemap_get_at_pixel(o_game_controller.grayCollisionMap, x, y+v_speed) && only_grey())
{
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

if (tilemap_get_at_pixel(o_game_controller.colorCollisionMap,  x, y) && visible()) || 
   (tilemap_get_at_pixel(o_game_controller.grayCollisionMap,  x, y) && only_grey()) 
instance_destroy(o_player)
