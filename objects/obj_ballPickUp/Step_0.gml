/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
image_index = 0;
y = ystart +sin(get_timer()/500000)*5;
x = xstart +sin(get_timer()/900000)*2;

if (place_meeting(x,y,obj_p1)){
	instance_destroy();
		audio_play_sound(snd_pickup,8, false);
	//instance_create_layer(x,y,"Instances",obj_ball);
	//audio_play_sound(snd_Load,3,false);
	global.p1has_ball = true;
}

if (place_meeting(x,y,obj_p2)){
	instance_destroy();
	audio_play_sound(snd_pickup,8, false);
//	instance_create_layer(x,y,"Instances",obj_ball);
	//audio_play_sound(snd_Load,3,false);
	global.p2has_ball = true;
}

