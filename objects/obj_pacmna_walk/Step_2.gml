
if (keyboard_check_released(vk_right)) {
    direction = 0;
	speed = 0;
	sprite_index = spr_pacman_stand_right;
} 

if (keyboard_check_released(vk_left)) {
    direction = 180;
	speed = 0;
	sprite_index = spr_pacman_stand_left;
}

if (keyboard_check_released(vk_up)) {
    direction = 90;
	speed = 0;
	
	if (sprite_index == spr_pacman_walk_right) {
	   sprite_index = spr_pacman_stand_right;
	}
	if (sprite_index == spr_pacman_walk_left) {
	    sprite_index = spr_pacman_stand_left;
	}	
} 

if (keyboard_check_released(vk_down)) {
    direction = 270;
	speed = 0;
	
	if (sprite_index == spr_pacman_walk_right) {
	   sprite_index = spr_pacman_stand_right;
	}
	if (sprite_index == spr_pacman_walk_left) {
	    sprite_index = spr_pacman_stand_left;
	}	
}