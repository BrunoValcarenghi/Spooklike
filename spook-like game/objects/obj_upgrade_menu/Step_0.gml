var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

var _card_w = 260;
var _card_h = 360;
var _spacing = 25;
var _total_w = (3 * _card_w) + (2 * _spacing);
var _start_x = _cam_x + (_cam_w - _total_w) / 2 + (_card_w / 2);
var _card_y = _cam_y + (_cam_h / 2) + 15;

var _mx = mouse_x;
var _my = mouse_y;

opcao_selecionada = -1;


for (var i = 0; i < 3; i++) {
    var _cx = _start_x + i * (_card_w + _spacing);
    
    var _hover = point_in_rectangle(_mx, _my, _cx - _card_w/2, _card_y - _card_h/2, _cx + _card_w/2, _card_y + _card_h/2);
    
    if (_hover) {
        opcao_selecionada = i;
    }
    
    var _target_scale = _hover ? 1.10 : 1.0;
    var _target_glow = _hover ? 0.8 : 0.0;
    
    card_scale[i] = lerp(card_scale[i], _target_scale, 0.15);
    icon_glow_alpha[i] = lerp(icon_glow_alpha[i], _target_glow, 0.15);
}

if (mouse_check_button_pressed(mb_left) && opcao_selecionada != -1) {
    var _escolhido = opcoes[opcao_selecionada];
    
    with (obj_player) {
        switch (_escolhido.name) {
            case "Pacto de Sangue":
                vida = ceil(vida * 1.15);
				hp = vida
                break;
                
            case "Manopla Arcanista":
                knock *= 1.2;
                break;
                
            case "Passos de Mercúrio":
                spd *= 1.1; 
                break;
                
            case "Lâmina de Éter":
                dano *= 1.1;
                break;
                
            case "Bastião Sagrado":
                defesa *= 1.2;
                break;
                
            case "Companheiro das Sombras":
                
				//instance_create_layer(x, y, "Instances", obj_bat_pet);
             
                break;
                
            case "Essência Híbrida":
                dano *= 1.10;
                vida = ceil(vida * 1.15);
				hp = vida
                break;
                
            case "Duplo Arcano":
                projeteis = 2;
                break;
                
            case "Concentração Rápida":
                shoot_time = max(5, shoot_time - 3);
                break;
                
            case "Aura Protetora":
                invencible_time = round(invencible_time * 1.25);
                break;
                
            case "Tomo da Amplitude":
                tamanho_projetil *= 1.20;
                break;
                
            case "Vampirismo Arcano":
				if rouba_vida = 0 rouba_vida = 0.1
                else rouba_vida *= 1.10;
                break;
                
            case "Bênção do Mago Supremo":
                vida = ceil(vida * 1.20);
				hp = vida
                dano *= 1.10;
                defesa *= 1.15;
                spd *= 1.05;
                break;
        }
    }
    
    with (obj_hordas) {
        atualiazar_horda();
    }
    
    instance_destroy();
}