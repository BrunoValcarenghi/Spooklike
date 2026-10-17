draw_self();

var _hp_atual = 0;
var _vida_maxima = 1;

if (instance_exists(obj_player)) {
    _hp_atual = obj_player.hp;        
    _vida_maxima = obj_player.vida;    
}

var _porcentagem = clamp(_hp_atual / _vida_maxima, 0, 1);

var _cx = x;
var _cy = y;

if (sprite_index != -1) {
    _cx = x + (sprite_width / 2 - 1);
    _cy = y + (sprite_height / 2 - 1);
}

var _raio = (sprite_width / 2) + 2; 
var _passo = 2;

draw_set_color(c_gray);
for (var i = 0; i < 360; i += _passo) {
    var _deg1 = i - 90;
    var _deg2 = min(i + _passo, 360) - 90;
    
    var _x1 = _cx + lengthdir_x(_raio, _deg1);
    var _y1 = _cy + lengthdir_y(_raio, _deg1);
    var _x2 = _cx + lengthdir_x(_raio, _deg2);
    var _y2 = _cy + lengthdir_y(_raio, _deg2);
    
    draw_line_width(_x1, _y1, _x2, _y2, 4);
}

if (_porcentagem > 0) {
    var _cor_custom = #71282E;
    draw_set_color(_cor_custom);
    
    var _angulo_final = 360 * _porcentagem;
    
    for (var i = 0; i < _angulo_final; i += _passo) {
        var _deg1 = i - 90;
        var _deg2 = min(i + _passo, _angulo_final) - 90;
        
        var _x1 = _cx + lengthdir_x(_raio, _deg1);
        var _y1 = _cy + lengthdir_y(_raio, _deg1);
        var _x2 = _cx + lengthdir_x(_raio, _deg2);
        var _y2 = _cy + lengthdir_y(_raio, _deg2);
        
        draw_line_width(_x1, _y1, _x2, _y2, 4);
    }
}

draw_set_color(c_white);

draw_sprite(spr_moldura, 0, x, y);