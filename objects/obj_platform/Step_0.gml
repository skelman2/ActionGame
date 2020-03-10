//delete_me_in gets set to a positive number when the player bounces on it.
if (delete_me_in > 0){
	//count down
	delete_me_in -= 1;
	
	if (sprite_index == spr_cloud1){
	sprite_index = spr_destroycloud1;	
	}
	if (sprite_index == spr_cloud2){
	sprite_index = spr_destroycloud2;	
	}
	if (sprite_index == spr_cloud3){
	sprite_index = spr_destroycloud3;	
	}
	if (sprite_index == spr_cloud4){
	sprite_index = spr_destroycloud4;	
	}

	if (delete_me_in == 0) {
		//timer over, delete me	
	instance_destroy();
	}
}

	if(place_meeting(x,y,obj_platform)){
	x+=irandom_range(-25,25);
	y+=irandom_range(-25,25);
	}
	
	
	
	if (change_timer >0){
	change_timer -=1;
	if (change_timer == 270 and sprite_index== spr_cloud1){
	sprite_index = spr_cloud2;
	}
	if (change_timer == 180 and sprite_index== spr_cloud2){
	sprite_index = spr_cloud3;
	}
	if (change_timer == 90 and sprite_index== spr_cloud3){
	sprite_index = spr_cloud4;
	}
}