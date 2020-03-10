
// code to change sprite cloud stages

if (change_timer >0){
	change_timer -=1;
	if (change_timer == 360 and sprite_index== spr_cloud1){
	sprite_index = spr_cloud2;
	}
	if (change_timer == 240 and sprite_index== spr_cloud2){
	sprite_index = spr_cloud3;
	}
	if (change_timer == 120 and sprite_index== spr_cloud3){
	sprite_index = spr_cloud4;
	}
}

/*

//broken idea
if(change_timer > 0){
	change_timer -=1;
	if (change_timer ==0){
		if (sprite_index == spr_cloud1){
			sprite_index = spr_cloud2;
			change_timer = random_range(60,120);
			
			if(change_timer == 0){
				if (sprite_index == spr_cloud2){
				sprite_index = spr_cloud3;
				change_timer = random_range(60,120);
				
				if(change_timer == 0){
					if (sprite_index == spr_cloud3){
					sprite_index = spr_cloud4;
					}
				}
				}
			}
		}
	}
}




//class code

if(change_timer > 0){
	change_timer =-1;
	if (change_timer ==0){
		if (sprite_index == spr_cloud1){
			sprite_index = spr_cloud2;
		}
		else{
			sprite_index = spr_cloud;
		}
		change_timer = random_range(60,120);
	}

}