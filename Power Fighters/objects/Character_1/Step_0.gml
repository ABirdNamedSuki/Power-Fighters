if((keyboard_check(ord("D")) || gamepad_axis_value(0, gp_axislh) >= .2) && place_free(x + collisionSpeed, y)) {
	x += walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if((keyboard_check(ord("A")) || gamepad_axis_value(0, gp_axislh) <= -.2)  && place_free(x - collisionSpeed, y)) {
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if((keyboard_check(ord("W")) || gamepad_axis_value(0, gp_axislv) <= -.2)  && place_free(x, y - collisionSpeed)) {
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if((keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) >= .2)  && place_free(x, y + collisionSpeed)) {
	y += walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if(keyboard_check(vk_nokey)) {
	image_speed = 0;
	image_index = 0;
	walkSpeed = 3.5;
}

