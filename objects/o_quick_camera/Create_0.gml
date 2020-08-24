/* The Quick Camera lets users quickly setup a camera for any Game Maker 
Studio 2 project. However, it was designed with low res games in mind. 
Most of the fundamental scripts this object works as a wrapper for can be 
found in this video: https://www.youtube.com/watch?v=_g1LQ6aIJFk

Here are the most important functions to remember:

window_set_size() - sets the size of the application window
surface_resize() - sets resolution of game
camera_set_view_size() - sets area of room shown on camera
camera_set_view_pos() - sets position of camera in room

We need to explain how these functions/values all interact with one another.

window_set_size() determines the dimensions of the application window. When 
the application is set to fullscreen, anything that window_set_size() trys 
to overwrite is ignored. I'm pretty sure full size just locks the dimensions 
of your window to the native resolution of the computer monitor.

surface_resize() scales, not stretches, scales to the window size. This means 
that if the window has dimensions of 16:9, and the surface has dimensions of 
4:3, then you will get a 4:3 game with black bars on the side inside of the 
16:9 window.

camera_set_view_size() and camera_set_view_pos() are fairly self explanatory. 
The "view" is the area of the room that is actually displayed to the screen. 
Note, the view is STRETCHED to the surface. This is an important difference 
from the surface, which is SCALED to the window. If the view has 4:3 dimensions, 
and the surface has 16:9, then the 4:3 view will get stretched and distorted 
into a 16:9 picture.

To achieve pixel perfection:
The ratio dimensions of the view and surface must be the same. The ratio 
dimensions of the window do not have to be the same, but the values should be
integer multiples of the view/surface dimensions. 
*/
qc_autoupdate = true;
qc_resolution_width = 256;
qc_resolution_height = 192;
qc_view_width = 256;
qc_view_height = 192;
qc_window_scale = 1;
