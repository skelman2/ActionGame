/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

y = ystart +sin(get_timer()/500000)*5;



instance_create_layer(obj_p1.x,obj_p1.y, "Ball", o_Gun);
instance_destroy();
//audio_play_sound(snd_Load,3,false);