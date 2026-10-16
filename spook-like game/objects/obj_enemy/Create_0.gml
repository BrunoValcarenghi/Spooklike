visual_angle = 0
visual_xscale = 0
walk_timer = 0
knock_time = obj_player.knock

can_shoot = 1

walk_animation_enemy = function(){
    
	walk_timer += 0.2;
	
	target_angle = sin(walk_timer) * 10;
	visual_angle = lerp(visual_angle, target_angle, 0.3);

}

change_direction_enemy =  function(){
    
	if x > obj_player.x and visual_xscale > -1 visual_xscale -= .15;
	if x < obj_player.x and visual_xscale <  1 visual_xscale += .15;

}

inimigo_andando = function(){

	mp_potential_step_object(obj_player.x, obj_player.y, spd, noone);
	walk_animation_enemy()
	change_direction_enemy()

}

knockback = function(){
	
	var _dir3 = point_direction(obj_player.x, obj_player.y, x, y);
	
    if (alarm[2] <= 0) return;
    
    var _force = (alarm[2] / knock_time) * 3;
    
    x += lengthdir_x(_force, _dir3);
    y += lengthdir_y(_force, _dir3);
	
	if irandom(3) = 0{
		
		instance_create_layer(
			x + irandom_range(-10, 10) + lengthdir_x(_force*15, _dir3), 
			y + irandom_range(-10, 10) + lengthdir_y(_force*15, _dir3), 
			"effects", 
			obj_blood
		)
	}
}