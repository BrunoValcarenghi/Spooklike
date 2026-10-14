if place_meeting(x, y, obj_player) 
and obj_player.invencible = false {
	damage()
}

if hp < 1{instance_destroy()}

mp_potential_step_object(obj_player.x, obj_player.y, spd, noone);

walk_animation_enemy()
change_direction_enemy()