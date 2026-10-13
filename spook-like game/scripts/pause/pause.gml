function pause(){

if keyboard_check_pressed(vk_escape){
	
	global.pausa=!global.pausa
	
}
	
	//pause
	if global.pausa{
		
		
		// player stop
		// detener player
		// parar player
		obj_player.trava = true
		
		// show options
		// mostrar opciones
		// mostrar opções
		obj_b_pause.image_alpha = 1
		
		//pause enemys
		//pausa inimigos
		instance_deactivate_layer("enemy")

	}
	
	//despause
	else{
		
		obj_player.trava = false
		instance_activate_all();
		obj_b_pause.image_alpha = 0

	}
	
}