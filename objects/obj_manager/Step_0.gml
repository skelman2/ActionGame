/// @description Insert description here
// You can write your code in this editor






	if (global.spawn_timer == 775) or (global.spawn_timer == 750)
	or (global.spawn_timer == 730) or (global.spawn_timer == 690)
	or (global.spawn_timer == 660) or (global.spawn_timer == 615)
	or (global.spawn_timer == 720) or (global.spawn_timer == 700)
	or (global.spawn_timer == 675) or (global.spawn_timer == 650)
	or (global.spawn_timer == 625) or (global.spawn_timer == 600)
	or (global.spawn_timer == 575) or (global.spawn_timer == 500){
	var new_x = random_range(0, room_width - 32);
	var new_y = random_range(0,room_height-50);
	instance_create_layer(new_x,new_y,"Instances",obj_platform);
	}




if (global.spawn_timer < 450){
		while (instance_number(obj_platform)<15){
		var new_x = random_range(0, room_width - 32);
		var new_y = random_range(0,room_height-50);
		instance_create_layer(new_x,new_y,"Instances", obj_platform);
			if(place_meeting(x,y,obj_platform)){
			x+=irandom_range(-25,25);
			y+=irandom_range(-25,25);
			}
		}
	}



if (global.spawn_timer >200){
	global.spawn_timer -=1;

	if (global.spawn_timer == 500){
		
		var p1 = instance_create_layer(0,200, "Instances",obj_p1);
		p1.player_id = 0;
		
		var p2 = instance_create_layer(200,200, "Instances",obj_p2);
		p2.player_id = 1;
	}
	
}



if (global.p1_score == 60){
	instance_destroy(obj_p2);
	instance_destroy(obj_p1);
	global.p1has_ball = false;
	global.p1_win = true;
	if (keyboard_check_pressed(ord("R"))) room_restart();
	instance_create_layer(34,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(98,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(162,(room_height/2)+50,"Stars",obj_confetti);
	if (sound_timer > 0){
		sound_timer--;
		if (sound_timer <10 and sound_timer >0){
		audio_play_sound(snd_win,6,false);
		}
	}
}
if (global.p2_score == 60){
	instance_destroy(obj_p2);
	instance_destroy(obj_p1);
	global.p2has_ball = false;
	global.p2_win = true;
	if (keyboard_check_pressed(ord("R"))) room_restart();
	instance_create_layer(34,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(98,(room_height/2)+50,"Stars",obj_confetti);
	instance_create_layer(162,(room_height/2)+50,"Stars",obj_confetti);
	
	if (sound_timer > 0){
		sound_timer--;
		if (sound_timer <10 and sound_timer >0){
		audio_play_sound(snd_win,6,false);
		}
	}
}







if (global.spawn_timer < 750 and global.spawn_timer > 745){
audio_play_sound(snd_beepLow,4,false);		
}

if (global.spawn_timer < 699 and global.spawn_timer > 694){
audio_play_sound(snd_beepLow,4,false);			
}

if (global.spawn_timer < 649 and global.spawn_timer > 644){
audio_play_sound(snd_beepLow,4,false);			
}
if (global.spawn_timer < 599 and global.spawn_timer > 594){
audio_play_sound(snd_beepLow,4,false);		
}
if (global.spawn_timer < 549 and global.spawn_timer > 544){
audio_play_sound(snd_beepHigh,4,false);		
}