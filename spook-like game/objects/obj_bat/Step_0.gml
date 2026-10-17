if (instance_exists(obj_player)) {

    angulo_orbita += 2;
    
    var _target_x = obj_player.x + lengthdir_x(raio_orbita, angulo_orbita);
    var _target_y = (obj_player.y - 20) + lengthdir_y(raio_orbita, angulo_orbita); 
    
    x = lerp(x, _target_x, 0.1);
    y = lerp(y, _target_y, 0.1);
}

if (instance_exists(obj_player)) {
    if (x > obj_player.x && visual_xscale > -1) visual_xscale -= 0.15;
    if (x < obj_player.x && visual_xscale <  1) visual_xscale += 0.15;
}

var _inimigo_alvo = instance_nearest(x, y, obj_enemy);
var _distancia_max_ataque = 300; 

if (_inimigo_alvo != noone) {
    var _dist = distance_to_object(_inimigo_alvo);
    
    if (_dist <= _distancia_max_ataque && can_shoot) {

        can_shoot = false;
        alarm[0] = shoot_time;
        
        var _dir_base = point_direction(x, y, _inimigo_alvo.x, _inimigo_alvo.y);
        
        with (instance_create_layer(x, y, "shoot", obj_shoot)) {
            direction = _dir_base;
            image_angle = direction;
            speed = 6;
            image_xscale = other.tamanho_projetil;
            image_yscale = other.tamanho_projetil;
        }
    }
}