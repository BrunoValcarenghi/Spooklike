opcoes = [];

var _indices = [];
var _total = array_length(global.upgrades);

while (array_length(_indices) < 3) {
    var _rand = irandom(_total - 1);
    
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

for (var i = 0; i < 3; i++) {
    array_push(opcoes, global.upgrades[_indices[i]]);
}

opcao_selecionada = -1;

card_scale = [1, 1, 1];     
icon_glow_alpha = [0, 0, 0]; 