/// @desc Передвижение
if (canMove) {
	x += spd * cos(dir * 3.14 / 180);
	y -= spd * sin(dir * 3.14 / 180);
}

#region Столкновения
// С вертикальными границами поля
if (y <= 0 + sprite_get_height(s_Ball) / 2) {					// С верхней
	dir = 360 - dir;
}
if (y >= window_get_height() - sprite_get_height(s_Ball) / 2) { // С нижней
	dir = 360 - dir;
}

// С горизонтальными границами поля
if (x <= 0 + sprite_get_width(s_Ball) / 2) {		// С левой
	x = window_get_width() / 2						// Ставим мяч на середину по горизонтали
	y = window_get_height() / 2						// Ставим мяч на середину по вертикали
	
	canMove = false;								// Запрещаем двигаться
	alarm[0] = 60;									// Ставим будильник на секунду
	
	o_Game.ScoreRight = o_Game.ScoreRight + 1;		// Прибавляем очки правому игроку
}
if (x >= window_get_width() - sprite_get_width(s_Ball) / 2) {	// С правой
	x = window_get_width() / 2					
	y = window_get_height() / 2				
	
	canMove = false;								// Запрещаем двигаться
	alarm[0] = 60;									// Ставим будильник на секунду
	
	o_Game.ScoreLeft = o_Game.ScoreLeft + 1;		// Прибавляем очки правому игроку
}

// С ракетками
if (place_meeting(x, y, o_Bat)) {
	dir = 180 - dir;
}
#endregion