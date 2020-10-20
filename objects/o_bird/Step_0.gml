//movement

mouse = mouse_check_button_pressed(mb_any);
key = keyboard_check_pressed(vk_space);

if (mouse or key ){
	
	if (!start){
		start = true;
		cspd = spd;
		gravity = 0.5;
		gravity_direction = 270;
		
		alarm[0] = room_speed;
		
	}
	if  (!died ){
		vspeed = -10;
	}

}

//horizontal movement
if (start){
	
	if (vspeed < 0 and image_angle < 15) image_angle += 3;
	if (vspeed > 0 and image_angle > -15) image_angle -= 3;
	
	//collision 
	if (!died and (place_meeting(x, y, wall) or y < 0 or y >room_height - 30 )){
		speed = 0;
		died = true;
		
	
	}
	
	if (died) {
		spd = 0; cspd = 0;
		image_speed = 0;
		image_index = 0;
		if (y > room_height-30){
			gravity = 0;
			vspeed = 0;
		}
		alarm[0] = -1;
		
	}
}