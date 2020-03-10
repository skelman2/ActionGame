if (global.p1has_control == true){
if (keyboard_check(vk_left)){
	x_spd -= x_accel;
}
if (keyboard_check(vk_right)){
	x_spd += x_accel;
}
}
event_inherited();



//take input to accelerate player
sprite_index = idle_sprite;
image_index = 0;
//actually change the x position using the speed
x += x_spd;

//slow down a little every frame
x_spd *= 0.9;

//wall collision
if (room_bounds == true){
if (x < 0){ //left wall
	x = 0; //put them on the left wall
	x_spd = -1 * x_spd;
}
if (x > room_width - 16) {
	x = room_width - 16;
	x_spd = -1 * x_spd;
}
}

//accelerate from gravity
y_spd += grav;



var new_y;
//only collide if going down
if (y_spd > 0){
	image_index = 1;

	
	if (y > room_height+50 and y < room_height + 60) and (global.spawn_timer < 400){
	instance_create_layer(x,153,"Stars", obj_stars);	
	global.p1_score--;	
	audio_play_sound(snd_death,4,false);
	}
	
	for (var dist_moved = 0; dist_moved < y_spd; dist_moved ++){
		new_y = y+dist_moved; //move 1 pixel at a time
		var collidewith = instance_place(x,new_y, obj_solid); 
		if (collidewith != noone){ //we collided with something!
			//only bounce on this if not currently overlapping!
			
		if (place_meeting(x,y,collidewith) == false and global.p1has_control == true){
				//finally we collide!
					
				if (collidewith.object_index == obj_platform){
					audio_play_sound(snd_jump,1,false);
					y_spd = jump_spd; //jump
					//tell the platform to delete itself in 20 frames
					if (collidewith.delete_me_in == 0){
						collidewith.delete_me_in = 20;
					}	
				}
					if (collidewith.object_index == obj_p2){
					audio_play_sound(snd_KO,2,false);
					ScreenShake(5,20);
					global.p1_score++;	
					instance_create_layer(obj_p2.x,obj_p2.y,"Stars", obj_KOstars);
					y_spd = jump_spd+2; 
					global.p2has_control = false;
				}
				break; //stop moving down 
			}
			
		}
	}
}
else { //can't collide because we're not moving down, so
	// just move y the normal way
	new_y = y + y_spd;
}
//set the player y to the new y
y = new_y;

if (global.p1has_control == false){
sprite_index = spr_player1dead;		
}
//camera follows player.
//var camera_y = y - 0.5*camera_get_view_height(view_camera[0]);
//camera_set_view_pos(view_camera[0], 0, camera_y);
/*
if (y > room_height){
	room_bounds = false;
}
if (y < room_height-100){
	room_bounds = true;
}
*/

//restart if you fall out of the room
if (y > room_height+50){
	if (global.p1has_control == false){
	global.p1has_control = true;
	}
	if (respawn_timer >0){
	respawn_timer -=1;
	if (respawn_timer == 0){
		x = random_range(0,200);
		y = 200;
		y_spd = random_range(-8,-12);
		audio_play_sound(snd_respawn,3,false);
		respawn_timer = 60;
		}
	}
}


//restart if you press R
if (keyboard_check_pressed(ord("R"))) room_restart();