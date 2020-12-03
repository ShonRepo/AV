height = camera_get_view_height(view_camera[1])
width = camera_get_view_width(view_camera[1])

draw_sprite(s_yellow,0,21,84)
draw_sprite(s_white,0,40,84)
draw_sprite(s_red,0,59,84)

surface_resize( application_surface, camera_get_view_width( view_camera[0] ), camera_get_view_height( view_camera[0] ) );

alarm_set(0, 5 * room_speed)