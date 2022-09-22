/// @desc Отрисовка очков
draw_set_font(f_Arial);																	// Устанавливаем шрифт
draw_text(330, 24, string(o_Game.ScoreLeft) + "     " + string(o_Game.ScoreRight));		// Отрисовываем текст

// Проверка конца игры 
if (ScoreLeft == 1) {	
	draw_set_font(f_Arial);	
	// Пишем, что левый игрок победил
	draw_text(
		window_get_width() / 2 - 50, 
		window_get_height() / 2, 
		"Игрок слева победил! Нажмите R чтобы начать сначала"
	);	
	isPause = true;
}

if (ScoreRight == 1) {	
	draw_set_font(f_Arial);	
	// Пишем, что правый игрок победил
	draw_text(
		window_get_width() / 2 - 50, 
		window_get_height() / 2, 
		"Игрок справа победил! Нажмите R чтобы начать сначала"
	);	
	isPause = true;
}