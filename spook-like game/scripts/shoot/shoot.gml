function shoot(){
	
	if mouse_check_button(mb_left) and can_shoot{
		
		audio_random(sfx_shoot)
		
		can_shoot = false;
		alarm[0] = shoot_time;
		
		var _xx = 25
		if dir = -1 _xx = -25
		
		var _dir_base = point_direction(x + _xx, y-24, mouse_x, mouse_y);
		
		var _num_proj = max(1, projeteis);
		
		var _spread_step = 8; 
		
		for (var i = 0; i < _num_proj; i++) {
			
		
			var _offset = (i - (_num_proj - 1) / 2) * _spread_step;
			var _dir_final = _dir_base + _offset;
			
			with instance_create_layer(x+_xx, y-24, "shoot", obj_shoot){
				
				direction = _dir_final;
				image_angle = direction;
				speed = 6;
				image_xscale = other.tamanho_projetil;
				image_yscale = other.tamanho_projetil;
				
			}
		}
		
	}
	
}

