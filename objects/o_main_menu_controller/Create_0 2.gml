height = camera_get_view_height(view_camera[1])
width = camera_get_view_width(view_camera[1])

surface_resize( application_surface, camera_get_view_width( view_camera[0] ), camera_get_view_height( view_camera[0] ) );

audio_play_sound(sound_main_music, 0, true)