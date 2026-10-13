// cursor follow mouse
// el cursor sigue al mouse
// cursor segue o mosue
x = mouse_x
y = mouse_y

// change cursor to aim
// muda cursor para mira
if instance_exists(obj_enemy){
	if distance_to_object(obj_enemy) < 100 {image_index	= 1}
}
else {image_index = 0}