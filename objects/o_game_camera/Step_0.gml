if(instance_exists(o_player)) 
{
	viewx = lerp(viewx, o_player.x, 0.1)
	viewy = lerp(viewy, o_player.y, 0.1)
	vm = matrix_build_lookat(viewx, viewy, -10, viewx, viewy, 0, 0, 1, 0)
	camera_set_view_mat(camera, vm)
}