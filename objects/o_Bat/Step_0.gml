/// @desc Перемещение

// Проверяем позицию ракетки
if (position == "left") {
	// Проверяем нажатия соответствующих клавиш
	if (keyboard_check(ord("W"))) {
		y -= spd;	// y = y - spd
	}
	
	if (keyboard_check(ord("S"))) {
		y += spd;
	}
}
else {
	if (keyboard_check(vk_up)) {
		y -= spd;
	}
	
	if (keyboard_check(vk_down)) {
		y += spd;
	}
}