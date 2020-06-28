/// @description 

draw_set_alpha(1);
draw_set_font(f_font);
var _text_h = string_height("AG10");
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_set_color(c_black);
draw_rectangle(0, 0, qc_get_width(), _text_h * 4, false);
draw_set_color(c_lime);
var _y = 0;
draw_text(0, _y++ * _text_h, "Real      X: " + string(x) + " Y: " + string(y));
draw_text(0, _y++ * _text_h, "Round GM  X: " + string(round(x)) + " Y: " + string(round(y)));
draw_text(0, _y++ * _text_h, "Round Int X: " + string(round_int(x)) + " Y: " + string(round_int(y)));
switch (rounding_style) {
	case ROUND.NONE:
	draw_text(0, _y++ * _text_h, "Rounding Style: None");
	break;
	case ROUND.INT:
	draw_text(0, _y++ * _text_h, "Rounding Style: Int");
	break;
	case ROUND.GM:
	draw_text(0, _y++ * _text_h, "Rounding Style: GM");
	break;
}
