/// @description Inserir descrição aqui
if(!instance_exists(target)){exit}
x = lerp(x, target.x, 0.9);
y = lerp(y, target.y, 0.9);
camera_set_view_pos(view_camera[0], x-cam_x/2, y-cam_y/2);