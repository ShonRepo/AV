colorCollisionMap = layer_tilemap_get_id(layer_get_id("color_coll"))
grayCollisionMap = layer_tilemap_get_id(layer_get_id("grey_coll"))


height = camera_get_view_height(view_camera[0])
width = camera_get_view_width(view_camera[0])

red = true
white = true
yellow = true

index_red = 0
index_white = 0
index_yellow = 0

is_final_game = instance_exists(o_final_fire)

last_check_x = o_player.x
last_check_y = o_player.y

audio_play_sound(tv_noise_in_game,1, true)
if is_final_game audio_play_sound(sound_main_music,1, true) else audio_play_sound(sound_ost,1, true)

this_level_final = false;
dark_alpha = 0

