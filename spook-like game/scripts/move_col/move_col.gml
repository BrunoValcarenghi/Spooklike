// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_col(){

#region //movement - movimiento - movimentação

hsp = (key_right - key_left) * spd
vsp = (key_down - key_up) * spd

walk_animation()

#endregion

#region //collision - colisión - colisão


// horizontal collision
// colisión horizontal
// colisão horizontal	
if (place_meeting(x+hsp, y, obj_col)){
	
	while (!place_meeting(x+sign(hsp), y, obj_col)){
	x = x + sign(hsp)
	}
	
	hsp = 0

}

x += hsp

// vertical collision
// colisión vertical
// colisão vertical
if (place_meeting(x, y+vsp, obj_col)){
	
	while (!place_meeting(x, y+sign(vsp), obj_col)){
	y = y + sign(vsp)
	}
	
	vsp = 0

}

y += vsp
#endregion

}


function walk_animation(){
    
    if hsp != 0 or vsp != 0{
        dir = hsp;
        walk_timer += 0.2;
        
        target_angle = sin(walk_timer) * 15;
    } else {
        target_angle = 0;
        walk_timer = 0;
    }
	
	visual_angle = lerp(visual_angle, target_angle, 0.3);

}

function change_direction(){
    
    if dir < 0 and visual_xscale > -1 visual_xscale -= .15;
    if dir > 0 and visual_xscale <  1 visual_xscale += .15;

}