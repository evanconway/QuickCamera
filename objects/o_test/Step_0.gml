/// @description 

var _mag = 10;

x *= _mag;
y *= _mag;

x = floor(x);
y = floor(y);

var vel = 13;

if (keyboard_check(ord("W"))) y -= vel;
if (keyboard_check(ord("S"))) y += vel;
if (keyboard_check(ord("A"))) x -= vel;
if (keyboard_check(ord("D"))) x += vel;

vel = 1;

if (keyboard_check_pressed(vk_up)) y -= vel;
if (keyboard_check_pressed(vk_down)) y += vel;
if (keyboard_check_pressed(vk_left)) x -= vel;
if (keyboard_check_pressed(vk_right)) x += vel;

x /= _mag;
y /= _mag;

if (keyboard_check_pressed(ord("R"))) {
	if (++rounding_style >= ROUND.SIZE) rounding_style = ROUND.NONE;
}
