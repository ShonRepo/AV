colorCollisionMap = layer_tilemap_get_id(layer_get_id("color_coll"))
grayCollisionMap = layer_tilemap_get_id(layer_get_id("grey_coll"))


height = camera_get_view_height(view_camera[1])
width = camera_get_view_width(view_camera[1])

red = true
white = true
yellow = true

index_red = 0
index_white = 0
index_yellow = 0

last_check_x = o_player.x
last_check_y = o_player.y


audio_play_sound(tv_noise_in_game,1, true)
