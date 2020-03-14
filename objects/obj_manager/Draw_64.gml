if (game_start == false){
	draw_set_color(c_white);
	draw_set_font(font_start);
	draw_text(350,275,"Press   'Space'   to   Start !");
	draw_set_font(font_controls);
	draw_text(250,200,"First   player   to   hold   the   ball \n          for   sixty   seconds   wins .");
	draw_text(160,400,"\moves  with  the");
	draw_text(134,440,"A  and  D  keys .");
	draw_text(675,400,"moves  with  the");
	draw_text(550,440,"left   and   right   arrows.");
	draw_set_color(c_lime)
	draw_text(50,400,"Green ");
	draw_set_color(c_orange)
	draw_text(550,400,"Orange ");
}



if (game_start == true){
	draw_set_font(font_score);
	draw_set_color(c_lime);
	draw_text(10,10,round(global.p1_score));
	
	draw_set_font(font_score);
	draw_set_color(c_orange);
	draw_text(950,10,round(global.p2_score));
}




if (global.p1_win == true){
	draw_text(110,175,"Player   One   Wins !");	
	draw_set_font(font_info);
	draw_text(300,300,"Press   'R'   to   Restart");
}




if (global.p2_win == true){
draw_text(110,175,"Player   Two   Wins !");	
draw_set_font(font_info);
draw_text(300,300,"Press   'R'   to   Restart");
}

draw_set_font(font_timer);
draw_set_color(c_red);
if (global.spawn_timer < 750 and global.spawn_timer > 700){
draw_text(450,175,"5!");		
}

if (global.spawn_timer < 699 and global.spawn_timer > 650){
draw_text(450,175,"4!");		
}
draw_set_color(c_yellow);
if (global.spawn_timer < 649 and global.spawn_timer > 600){
draw_text(450,175,"3!");		
}
if (global.spawn_timer < 599 and global.spawn_timer > 550){
draw_text(450,175,"2!");		
}
draw_set_color(c_lime);
if (global.spawn_timer < 549 and global.spawn_timer > 500){
draw_text(450,175,"1!");		
}
