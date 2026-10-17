bounce()

if place_meeting(x, y, obj_player){

	with (obj_player){
	    var _cura = ceil(vida * 0.25);
	    hp = min(hp + _cura, vida); 
	}
	
	audio_random(sfx_item)

	instance_destroy();

}
