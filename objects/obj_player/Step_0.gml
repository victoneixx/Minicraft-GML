/// @description Inserir descrição aqui
if(keyboard_check_pressed(ord("R"))){game_restart()}
if(keyboard_check_pressed(vk_escape)){game_end()}
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

hspd = (_right - _left)*vel;
vspd = (_down - _up)*vel;

move_and_collide(hspd, vspd, obj_ash)