//Show player stats
//Mostrar status do player
draw_set_colour(c_white)
draw_set_halign(0)

switch global.language{

	case 1: text1 = "Vida: "; text2 = "Moedas: "; break;
	case 2: text1 = "Vida: " text2 = "Moedas: "; break;
	default: text1 = "Life: "; text2 = "Coins: "; break;

}

draw_text(20, 30, string_concat(text1,  hp))
draw_text(20, 70, string_concat(text2, coins))