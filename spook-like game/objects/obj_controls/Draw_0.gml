draw_set_colour(c_white)

draw_set_halign(0)
draw_set_valign(0)

switch global.language{

	case 1: 
		text1 = "Andar"; 
		text2 = "Interagir"; 
		text3 = "Correr"; 
		text4 = "Atirar"; 
		break;
	case 2:  
		text1 = "Andar"; 
		text2 = "Interagir"; 
		text3 = "Correr"; 
		text4 = "Atriar"; 
		break;
	default:  
		text1 = "Walk"; 
		text2 = "Interact"; 
		text3 = "Run"; 
		text4 = "Shoot"; 
		break;

}

draw_sprite(spr_controls, 0, x, y)
draw_text(x, y+40, text1)

draw_sprite(spr_controls, 1, x + 90, y)
draw_text(x + 120, y, text2)

draw_sprite(spr_controls, 2, x + 90, y + 40)
draw_text(x + 120, y + 40, text3)

draw_sprite(spr_controls, 3, x + 270, y)
draw_text(x + 240, y+40, text4)
