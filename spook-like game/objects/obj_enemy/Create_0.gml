hp = 1
spd = 1

visual_angle = 0
visual_xscale = 0
walk_timer = 0

walk_animation_enemy = function(){
    
	walk_timer += 0.2;
	
	target_angle = sin(walk_timer) * 10;
	visual_angle = lerp(visual_angle, target_angle, 0.3);

}

change_direction_enemy =  function(){
    
	if x > obj_player.x and visual_xscale > -1 visual_xscale -= .15;
	if x < obj_player.x and visual_xscale <  1 visual_xscale += .15;

}

