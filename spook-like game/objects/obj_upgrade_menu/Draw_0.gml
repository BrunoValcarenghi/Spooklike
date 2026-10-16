var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

var _cor_custom = $709dbd;

draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(_cam_x, _cam_y, _cam_x + _cam_w, _cam_y + _cam_h, false);
draw_set_alpha(1.0);

draw_set_font(f_nicopaint);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(_cam_x + _cam_w / 2, _cam_y + (_cam_h * 0.12), "ESCOLHA SEU UPGRADE", 1.5, 1.5, 0);

var _card_w = 260;
var _card_h = 360;
var _spacing = 25;
var _total_w = (3 * _card_w) + (2 * _spacing);
var _start_x = _cam_x + (_cam_w - _total_w) / 2 + (_card_w / 2);
var _card_y = _cam_y + (_cam_h / 2) + 15;

var _base_scale_x = _card_w / 128;
var _base_scale_y = _card_h / 128;

for (var i = 0; i < 3; i++) {
    var _cx = _start_x + i * (_card_w + _spacing);
    var _is_hover = (opcao_selecionada == i);
    
    var _sc = card_scale[i];
    var _glow = min(icon_glow_alpha[i], 1);
    
    var _final_card_scale_x = _base_scale_x * _sc;
    var _final_card_scale_y = _base_scale_y * _sc;
    var _card_color = _is_hover ? _cor_custom : c_white;
    draw_sprite_ext(spr_card, 0, _cx, _card_y, _final_card_scale_x, _final_card_scale_y, 0, _card_color, 1.0);
    
    var _upgrade = opcoes[i];
    
    var _icon_y_offset = -90;
    var _icon_y = _card_y + (_icon_y_offset * _sc);

    if (_glow > 0.01) {
        var _base_glow_scale = 0.95; 
        var _final_glow_scale = _base_glow_scale * _sc;
        draw_sprite_ext(_upgrade.spr, 1, _cx, _icon_y, _final_glow_scale, _final_glow_scale, 0, c_white, _glow);
    }
    
    draw_sprite_ext(_upgrade.spr, 0, _cx, _icon_y, _sc, _sc, 0, c_white, 1.0);

    draw_set_font(f_nicopaint);
    draw_set_color(_is_hover ? _cor_custom : c_white);
    var _name_y_offset = -10;
    var _name_y = _card_y + (_name_y_offset * _sc);
    draw_text_ext_transformed(_cx, _name_y, _upgrade.name, 18, (_card_w - 30), _sc, _sc, 0);

    draw_set_font(f_nicoclean);
    draw_set_color(c_ltgray);
    var _desc_y_offset = 60;
    var _desc_y = _card_y + (_desc_y_offset * _sc);
    draw_text_ext_transformed(_cx, _desc_y, _upgrade.desc, 16, (_card_w - 40), _sc, _sc, 0);
}