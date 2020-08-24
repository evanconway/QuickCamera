/// @desc Creates the Quick Camera.
function qc_initialize(window_scale, resolution_width, resolution_height) {
	global.quick_camera = instance_create_depth(0, 0, 0, o_quick_camera);
	with (global.quick_camera) {
		qc_window_scale = window_scale <= 1 ? 1 : window_scale;
		qc_resolution_width = resolution_width;
		qc_resolution_height = resolution_height;
		qc_view_width = resolution_width;
		qc_view_height = resolution_height;
		window_set_size(qc_resolution_width * qc_window_scale, qc_resolution_height * qc_window_scale);
		surface_resize(application_surface, qc_resolution_width, qc_resolution_height);
		camera_set_view_size(view_camera[0], qc_view_width, qc_view_height);
		alarm[0] = 1; // centers window
	}
}

/// @desc Ensures the user has called qc_initialize.
function qc_ensureinit() {
	if (global.quick_camera == undefined || !instance_exists(global.quick_camera)) {
		show_error("Quick Camera has not been initialized!", true);
	}
}

/// @desc Returns height of camera.
function qc_get_height() {
	with (global.quick_camera) {
		return qc_resolution_height;
	}
}

/// @desc Returns width of camera.
function qc_get_width() {
	with (global.quick_camera) {
		return qc_resolution_width;
	}
}

/// @desc Sets postion of camera in room
function qc_set_pos(x, y) {
	qc_ensureinit();
	with (global.quick_camera) {
		camera_set_view_pos(view_camera[0], x, y);
	}
}

/// @desc Updates the Quick Camera.
function qc_update() {
	qc_ensureinit();
	with (global.quick_camera) {	
		camera_set_view_size(view_camera[0], qc_view_width, qc_view_height);
		var _xclamp = clamp(camera_get_view_x(view_camera[0]), 0, room_width - qc_view_width);
		var _yclamp = clamp(camera_get_view_y(view_camera[0]), 0, room_height - qc_view_height);
		camera_set_view_pos(view_camera[0], _xclamp, _yclamp);
		
		/* On the windows platform, this next line of code is not needed. The resolution of the gui 
		layer resizes with the surface_resize script. But in HTML the gui layer stays the size of 
		the window unless this script is called. */
		display_set_gui_size(qc_resolution_width, qc_resolution_height);
	}
}
