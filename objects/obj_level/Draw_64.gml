/// @description Inserir descrição aqui
var _font = font_add_sprite_ext(spr_font, "abcdefghijklmnopqrstuvwxyz" + "0123456789" + ".,!?'  -+=/\%()<>", 0, 2);
draw_set_font(_font);
draw_text(8, 8, "seed." + string(seed));
draw_set_font(-1);