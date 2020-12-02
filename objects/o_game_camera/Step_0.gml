if(instance_exists(o_player)) 
{
	viewx = o_player.x
	viewy = o_player.y
	vm = matrix_build_lookat(viewx, viewy, -10, viewx, viewy, 0, 0, 1, 0)
	camera_set_view_mat(camera, vm)
}