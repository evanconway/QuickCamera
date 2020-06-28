/// @description Updates the Quick Camera
qc_ensureinit();
with (global.quick_camera) 
{	
	camera_set_view_size(view_camera[0], qc_view_width, qc_view_height);
	var _xclamp = clamp(camera_get_view_x(view_camera[0]), 0, room_width - qc_view_width);
	var _yclamp = clamp(camera_get_view_y(view_camera[0]), 0, room_height - qc_view_height);
	camera_set_view_pos(view_camera[0], _xclamp, _yclamp);
	
	/*
	On the windows platform, this line of code is not needed. The resolution of the gui layer resizes 
	with the surface_resize script. But in HTML the gui layer stays the size of the window unless
	this script is called. 
	*/
	display_set_gui_size(10000, 10000);
}
