/// @description Insert description here
// You can write your code in this editor

if mouse_x > x
	draw_sprite_ext(sprite_index, -1, x, y, 1, 1, point_direction(x, y, mouse_x, mouse_y), c_white, 1)
else
	draw_sprite_ext(sprite_index, -1, x, y, -1, 1, point_direction(x, y, mouse_x, mouse_y) + 180, c_white, 1)