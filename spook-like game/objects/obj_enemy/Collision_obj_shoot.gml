hp-=obj_player.dano
audio_random(sfx_damage)
shake(5)

var _dir = point_direction(obj_player.x, obj_player.y, x, y);
var _sys = part_system_create(ef_hit);
part_system_position(_sys, x, y);
part_system_angle(_sys, _dir - 15);

if image_alpha = 1 image_alpha = 0
else image_alpha = 1
alarm[1] = 5

for(var i = irandom_range(3, 7); i > 0; i--) {
	
	var _dir2 = point_direction(obj_player.x, obj_player.y, x, y);
	
	instance_create_layer(
		x + irandom_range(-20, 20) + lengthdir_x(50, _dir2), 
		y + irandom_range(-20, 20) + lengthdir_y(50, _dir2), 
		"effects", 
		obj_blood
	)

}