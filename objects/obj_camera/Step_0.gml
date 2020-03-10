x = 100;
y += (yTo - y)/5;

	/*
if (obj_p1.y and obj_p2.y < room_height){
	yTo = mean(obj_p1.y,obj_p2.y);
}
if (obj_p1.y < room_height and obj_p2.y >= room_height){
	yTo = obj_p1.y;	
}
if (obj_p2.y < room_height and obj_p1.y >= room_height){
	yTo = obj_p2.y;	
}
*/

if (instance_exists(obj_p1) and instance_exists(obj_p2)){
		yTo = (mean(obj_p1.y,obj_p2.y))+25;
}

if (!instance_exists(obj_p1) and !instance_exists(obj_p2)){
		yTo = 100;
}


y = clamp(y,view_h_half-40, 80);


//cam shake

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));



var vm = matrix_build_lookat (x,y,-10,x,y,0,0,1,0);
camera_set_view_mat (camera,vm);

