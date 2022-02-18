if((keyboard_check(ord("D")) || gamepad_axis_value(1, gp_axislh) >= .2 || gamepad_axis_value(4, gp_axislh) >= .2) && place_free(x + collisionSpeed, y)) {
	x += walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if((keyboard_check(ord("A")) || gamepad_axis_value(1, gp_axislh) <= -.2 || gamepad_axis_value(4, gp_axislh) >= .2)  && place_free(x - collisionSpeed, y)) {
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if((keyboard_check(ord("W")) || gamepad_axis_value(1, gp_axislv) <= -.2 || gamepad_axis_value(4, gp_axislh) >= .2)  && place_free(x, y - collisionSpeed)) {
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if((keyboard_check(ord("S")) || gamepad_axis_value(1, gp_axislv) >= .2 || gamepad_axis_value(1, gp_axislh) >= .2)  && place_free(x, y + collisionSpeed)) {
	y += walkSpeed;
	image_speed = walkSpeed / 3;
	//sprite_index = insert_sprite_direction
}
if(keyboard_check(vk_nokey)) {
	image_speed = 0;
	image_index = 0;
	walkSpeed = 3.5;
}

if mouse_check_button(mb_left){
	if(can_fire){
		can_fire = false;
		alarm[0] = firerate;
			
		var _dir = point_direction(x, y, mouse_x, mouse_y);
		var space = 10;
		var _x = x + lengthdir_x(space, _dir);
		var _y = y + lengthdir_y(space, _dir);
		var _inst = instance_create_layer(_x, _y, "Projectiles", Projectile_1)
		with (_inst) {
			speed = other.projectile_speed;
			direction = _dir;
			image_angle = _dir;
			owner_id = other;
		}
	}
}

if (abs(gamepad_axis_value(1, gp_axisrh)) >= .2 || abs(gamepad_axis_value(1, gp_axisrv)) >= .2){
	if(can_fire){
		can_fire = false;
		alarm[0] = firerate;
			
		var xaxisr = gamepad_axis_value(1, gp_axisrh);
		var yaxisr = gamepad_axis_value(1, gp_axisrv);
		var _dir = point_direction(x, y, (x + xaxisr), (y + yaxisr));
		var space = 10;
		var _x = x + lengthdir_x(space, _dir);
		var _y = y + lengthdir_y(space, _dir);
		var _inst = instance_create_layer(_x, _y, "Projectiles", Projectile_1)
		with (_inst) {
			speed = other.projectile_speed;
			direction = _dir;
			image_angle = _dir;
			owner_id = other;
		}
	}
}

if current_health <= 0{
	game_restart()
}