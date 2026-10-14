horda = 0
tempo_spwn = 60

atualiazar_horda = function(){
    horda++;
    
    if (horda <= 10) {
        qnt = floor(4 + (horda * 0.8));
    }
    else if (horda <= 20) {
        qnt = floor(12 + ((horda - 10) * 1.8));
    }
    else {
        qnt = floor(30 + ((horda - 20) * 0.8));
    }

    maximo = floor(qnt * 0.4); 
    maximo = clamp(maximo, 3, 15);
}

atualiazar_horda()

criar_inimigo = function(n){
    
    var _cam = view_camera[0];
    var _cam_x = camera_get_view_x(_cam);
    var _cam_y = camera_get_view_y(_cam);
    var _cam_w = camera_get_view_width(_cam);  // 1280
    var _cam_h = camera_get_view_height(_cam); // 720
    
    var _min_margin = 40;  
    var _max_margin = 150; 
    
    var _lado = irandom(3);
    var _spawn_x, _spawn_y;
    
    switch (_lado) {
        case 0: // Lado Esquerdo
            _spawn_x = _cam_x - irandom_range(_min_margin, _max_margin);
            _spawn_y = irandom_range(_cam_y, _cam_y + _cam_h);
            break;
            
        case 1: // Lado Direito
            _spawn_x = _cam_x + _cam_w + irandom_range(_min_margin, _max_margin);
            _spawn_y = irandom_range(_cam_y, _cam_y + _cam_h);
            break;
            
        case 2: // Parte de Cima
            _spawn_x = irandom_range(_cam_x, _cam_x + _cam_w);
            _spawn_y = _cam_y - irandom_range(_min_margin, _max_margin);
            break;
            
        case 3: // Parte de Baixo
            _spawn_x = irandom_range(_cam_x, _cam_x + _cam_w);
            _spawn_y = _cam_y + _cam_h + irandom_range(_min_margin, _max_margin);
            break;
    }
    
    var enemy = instance_create_layer(_spawn_x, _spawn_y, "enemy", obj_enemy);

    enemy.sprite_index = global.enemies[n].spr;
    enemy.spd = global.enemies[n].spd;
    enemy.hp = global.enemies[n].hp;
    enemy.shoot_time = global.enemies[n].shoot_time;
    enemy.distance = global.enemies[n].distance;

}