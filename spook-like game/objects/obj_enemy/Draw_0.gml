var _shadow_x = x;
var _shadow_y = y + 28; 

draw_sprite_ext(spr_shadow, 0, _shadow_x, _shadow_y, 1, 1, 0, c_black, 0.3);

draw_sprite_ext(
    sprite_index, 
    image_index, 
    x, 
    y, 
    visual_xscale, 
    image_yscale, 
    visual_angle,
    image_blend, 
    image_alpha
);