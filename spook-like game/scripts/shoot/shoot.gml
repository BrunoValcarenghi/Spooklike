function shoot(){
	
	if mouse_check_button(mb_left) and can_shoot{
		
		audio_random(sfx_shoot)
		
		//tempo
		can_shoot = false;
		alarm[0] = shoot_time;
		
		with instance_create_layer(x, y, "shoot", obj_shoot){
		
		direction = point_direction(x, y, mouse_x, mouse_y)
		image_angle = direction
		speed = 6
		
		}
		
	}
	
}


