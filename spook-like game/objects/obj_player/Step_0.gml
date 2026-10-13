get_input()
pause()

if !trava {
	move_col()
	shoot()
}

if !invencible{image_alpha = 1}

if hp < 1 room_restart()