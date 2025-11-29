/// @description Inserir descrição aqui
if(target_bk && alarm[0] <= 0){
	image_blend = c_red;
	audio_play_sound(snd_hit, 0, 0);
	punch = irandom_range(2, 4);
	durability -= punch;
	alarm[0] = 6;
	hit = true;
}