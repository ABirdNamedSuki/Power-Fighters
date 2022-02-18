/// @description Health bar
draw_self();
draw_healthbar(
	x - 32, 
	y - 35,
	x + sprite_width - 32, 
	y - 27, 
	100 * (current_health / max_health),
	c_white,
	c_red,
	c_green,
	1,
	true,
	false
);