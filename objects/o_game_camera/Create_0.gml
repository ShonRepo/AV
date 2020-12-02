height = camera_get_view_height(view_camera[1])
width = camera_get_view_width(view_camera[1])

camera = view_camera[1]
vm =  matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0)
pm = matrix_build_projection_ortho(global.gameWidth, global.gameHeight, 1, 3200)

viewx = 0
viewy = 0