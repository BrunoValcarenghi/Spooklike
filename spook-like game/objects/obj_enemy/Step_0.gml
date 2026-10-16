if place_meeting(x, y, obj_player) 
and obj_player.invencible = false {
	damage()
}

knockback()

if hp < 1{instance_destroy()}

if shoot_time > 0{

	var _cam = view_camera[0];
	var _cx = camera_get_view_x(_cam);
	var _cy = camera_get_view_y(_cam);
	
	if (distance_to_object(obj_player) < distance 
	and rectangle_in_rectangle(
		bbox_left, 
		bbox_top, 
		bbox_right,
		bbox_bottom, 
		_cx - 32,
		_cy - 32, 
		_cx + 1280 + 32, 
		_cy + 720 + 32) > 0){
		
		if can_shoot{
		
			can_shoot = 0
			alarm[0] = shoot_time
			with instance_create_layer(x, y, "shoot", obj_enemy_shoot){
		
				direction = point_direction(x, y, obj_player.x,  obj_player.y)
				image_angle = direction
				speed = 6
				dano = other.dano
		
			}
		
		}

	}
	else{
	
		inimigo_andando()
	
	}

}
else inimigo_andando()



