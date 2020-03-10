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



