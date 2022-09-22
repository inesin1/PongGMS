// Проверка конца игры 
if (ScoreLeft == 9) {	
	draw_set_font(f_Arial);	
	// Пишем, что левый игрок победил
	draw_text(
		window_get_width() / 2, 
		window_get_height() / 2, 
		"Игрок слева победил! Нажмите R чтобы начать сначала"
	);	
	isPause = true;
}

if (ScoreRight == 9) {	
	draw_set_font(f_Arial);	
	// Пишем, что правый игрок победил
	draw_text(
		window_get_width() / 2, 
		window_get_height() / 2, 
		"Игрок справа победил! Нажмите R чтобы начать сначала"
	);	
	isPause = true;
}