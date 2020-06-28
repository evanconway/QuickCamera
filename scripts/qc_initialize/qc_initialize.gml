/// @description Creates the Quick Camera
/// @param window_scale
/// @param resolution_width
/// @param resolution_height

global.quick_camera = instance_create_depth(0, 0, 0, o_quick_camera);

with (global.quick_camera) 
{
	qc_window_scale = argument[0] <= 1 ? 1 : argument[0];
	qc_resolution_width = argument[1];
	qc_resolution_height = argument[2];
	qc_view_width = argument[1];
	qc_view_height = argument[2];
	window_set_size(qc_resolution_width * qc_window_scale, qc_resolution_height * qc_window_scale);
	surface_resize(application_surface, qc_resolution_width, qc_resolution_height);
	camera_set_view_size(view_camera[0], qc_view_width, qc_view_height);
	alarm[0] = 1; // centers window
}
