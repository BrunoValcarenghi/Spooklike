hp-=obj_player.dano

with(obj_player){

	if hp + (hp*rouba_vida) >= vida hp = vida
	else hp += (hp*rouba_vida)

}

audio_random(sfx_damage)
shake(5)

alarm[2] = knock_time

var _dir = point_direction(obj_player.x, obj_player.y, x, y);
var _sys = part_system_create(ef_hit);
part_system_position(_sys, x, y);
part_system_angle(_sys, _dir - 15);

if image_alpha = 1 image_alpha = 0
else image_alpha = 1
alarm[1] = 5

