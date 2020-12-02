if(!view_enabled)
{
	view_set_wport(0, global.gameWidth)
	view_set_hport(0, global.gameWidth)
	view_set_visible(0, true)
	camera_set_view_mat(camera, vm)
	camera_set_proj_mat(camera, pm)
	view_camera[0] = camera
	view_enabled = true
	
	viewx = 0
	viewy = 0
}