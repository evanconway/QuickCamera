
var _realx = x;
var _realy = y;

switch (rounding_style) {
	case ROUND.INT:
		x = round_int(x);
		y = round_int(y);
		break;
	case ROUND.GM:
		x = round(x);
		y = round(y);
		break;
}

draw_self();

x = _realx;
y = _realy;
