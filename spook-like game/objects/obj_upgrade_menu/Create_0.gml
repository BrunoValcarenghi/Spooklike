var _onda_atual = 1;
if (instance_exists(obj_hordas)) {
    _onda_atual = obj_hordas.horda; 
}

var _upgrades_disponiveis = [];

for (var i = 0; i < array_length(global.upgrades); i++) {
    var _carta = global.upgrades[i];
    var _onda_minima = variable_struct_exists(_carta, "onda_min") ? _carta.onda_min : 1;
    
    if (_onda_atual >= _onda_minima) {
        array_push(_upgrades_disponiveis, _carta);
    }
}

opcoes = [];
var _indices = [];
var _total_disponiveis = array_length(_upgrades_disponiveis);
var _limite_sorteio = min(3, _total_disponiveis);

while (array_length(_indices) < _limite_sorteio) {
    var _rand = irandom(_total_disponiveis - 1);
    
    var _ja_existe = false;
    for (var i = 0; i < array_length(_indices); i++) {
        if (_indices[i] == _rand) {
            _ja_existe = true;
            break;
        }
    }
    
    if (!_ja_existe) {
        array_push(_indices, _rand);
    }
}

for (var i = 0; i < array_length(_indices); i++) {
    array_push(opcoes, _upgrades_disponiveis[_indices[i]]);
}

opcao_selecionada = -1;
card_scale = [1.0, 1.0, 1.0];     
icon_glow_alpha = [0.0, 0.0, 0.0];