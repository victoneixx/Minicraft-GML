/// @description Inserir descrição aqui
if(keyboard_check_pressed(ord("R"))){game_restart()}
if(keyboard_check_pressed(vk_escape)){game_end()}
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

hspd = (_right - _left)*vel;
vspd = (_down - _up)*vel;


#region IDLE do player
var _vel = 0.2;
image_speed = 0;
if(_right){
	sprite_index = spr_player_side;
	image_xscale = 1;
	image_speed = _vel;
} else if(_left){
	sprite_index = spr_player_side;
	image_xscale = -1;
	image_speed = _vel;
} else if(_up){
	sprite_index = spr_player_up;
	image_speed = _vel;
} else if(_down){
	sprite_index = spr_player_down;
	image_speed = _vel;
}
#endregion

move_and_collide(hspd, vspd, obj_oak);

energy = clamp(energy, 0, 10);

if(energy <= 0){
	with(obj_elements){
		tired = true;
	}
} else {
	with(obj_elements){
		tired = false;
	}
}