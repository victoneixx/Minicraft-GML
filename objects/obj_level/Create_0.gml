/// @description Inserir descrição aqui
randomize()
cell = 16;
cell_h = room_width;
cell_v = room_height;
seed = noone;

var _seed_info = get_string("SUA SEED AQUI",  "");
if(_seed_info == ""){
	seed = irandom(999);
} else{
	seed = _seed_info;
}
random_set_seed(seed);

for(var xx = 0; xx < cell_h; xx += cell){
	for(var yy = 0; yy < cell_v; yy += cell){
		instance_create_layer(xx + cell/2, yy + cell/2, layer, obj_grass);
	}
}

for(var xx = 0; xx < cell_h; xx += cell){
	for(var yy = 0; yy < cell_v; yy += cell){
		var _random = random(1);
		if(_random >= 0.6){
			instance_create_layer(xx + cell/2, yy + cell/2, "ash", obj_oak);
		}
	}
}
