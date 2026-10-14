if (qnt > 0) {
    
    var _inimigos_vivos_atual = instance_number(obj_enemy);
    
    if (_inimigos_vivos_atual < maximo) {
        tempo_spwn--;
        
        if (tempo_spwn <= 0) {
            
            var _inimigos_disponiveis = [];
            
            for (var i = 0; i < array_length(global.enemies); i++) {
                
                var _numero_inimigo = i + 1;

                var _horda_minima = _numero_inimigo * 2; 
                
                if (horda >= _horda_minima) {
                    array_push(_inimigos_disponiveis, i);
                }
            }

            if (array_length(_inimigos_disponiveis) == 0) {
                array_push(_inimigos_disponiveis, 0);
            }
            
            var _index_sorteado = irandom(array_length(_inimigos_disponiveis) - 1);
            var _enemy_escolhido = _inimigos_disponiveis[_index_sorteado];
            
            criar_inimigo(_enemy_escolhido);
            
            qnt--; 
            tempo_spwn = 60; 
        }
    }
} 
else {
    var _inimigos_vivos = instance_number(obj_enemy);
    
    if (_inimigos_vivos <= 0) {
        if (keyboard_check_pressed(ord("E"))) {
            atualiazar_horda();
            tempo_spwn = 60; 
        }
    }
}