/// @description Ensures the user has called qc_initialize

if (global.quick_camera == undefined || !instance_exists(global.quick_camera))
{
	show_error("Quick Camera has not been initialized!", true);
}
