key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var hmove = key_right - key_left;
var vmove = key_down - key_up;
hsp = hmove * walksp;
vsp = vmove * walksp;

if(place_meeting(x+hsp,y,obj_wall) || place_meeting(x+hsp,y,obj_wall_curve))
{
	while(!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if(place_meeting(x,y+vsp,obj_wall) || place_meeting(x,y+vsp,obj_wall_curve))
{
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;


if (key_right) {
	sprite_index = spr_pacman_walk_right;
	
} if (key_left) {
	sprite_index = spr_pacman_walk_left;
} if (key_up) {
	if(sprite_index == spr_pacman_stand_right){
		sprite_index = spr_pacman_walk_right;
	} if (sprite_index == spr_pacman_stand_left) {
		sprite_index = spr_pacman_walk_left;
	}
} if (key_down) {
	
	if(sprite_index == spr_pacman_stand_right){
		sprite_index = spr_pacman_walk_right;
	} if (sprite_index == spr_pacman_stand_left) {
		sprite_index = spr_pacman_walk_left;
	}
}