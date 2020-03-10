/*//take input to accelerate player
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
	if (y > room_height+50 and y < room_height + 60){
	instance_create_layer(x,153,"Stars", obj_stars);	
	}
	for (var dist_moved = 0; dist_moved < y_spd; dist_moved ++){
		new_y = obj_p1.y+dist_moved; //move 1 pixel at a time
		var collidewith = instance_place(obj_p1.x,new_y, obj_solid); 
		if (collidewith != noone){ //we collided with something!
			//only bounce on this if not currently overlapping!
			
			if (place_meeting(obj_p1.x,obj_p1.y,collidewith) == false){
				//finally we collide!
			
				if (collidewith.object_index == obj_platform){
					y_spd = jump_spd; //jump
					//tell the platform to delete itself in 20 frames
					if (collidewith.delete_me_in == 0){
						collidewith.delete_me_in = 20;
					}
				}
				if (collidewith.object_index == obj_p1){
					//image_index = 2;	
					//obj_p1.mask_index = -1;
					y_spd = jump_spd+2; 
					global.p1has_control = false;
				}
				if (collidewith.object_index == obj_p2){
					//image_index = 2;	
					//obj_p2.mask_index = -1;
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
/*
//restart if you fall out of the room
if (y > room_height+50){
	if (global.p2has_control == false){
	global.p2has_control = true;
	}
	if (global.p1has_control == false){
	global.p1has_control = true;
	}
	if (respawn_timer >0){
	respawn_timer -=1;
	if (respawn_timer == 0){
		if (irandom(1) = 0){
			x = 700;	
		}
		if (irandom(1) = 1){
			x = -500 ;
		}
		y = 200;
		y_spd = -10;
		respawn_timer = 60;
		}
	}
}


//restart if you press R
if (keyboard_check_pressed(ord("R"))) room_restart();


*/