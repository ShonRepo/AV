height = camera_get_view_height(view_camera[0])
width = camera_get_view_width(view_camera[0])

surface_resize( application_surface, camera_get_view_width( view_camera[0] ), camera_get_view_height( view_camera[0] ) );

camera = view_camera[0]
vm =  matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0)
pm = matrix_build_projection_ortho(global.gameWidth, global.gameHeight, 1, 3200)

viewx = 0
viewy = 0