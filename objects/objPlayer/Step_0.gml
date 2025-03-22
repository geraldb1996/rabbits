switch (state){
	case "IDLE":
		sprite_index = sprPlayerIDLE;
		break;
	case "WALK":
		sprite_index = sprPlayerWALK;
		break;
}

// Get input
var moveRight = keyboard_check(vk_right)
var moveLeft = keyboard_check(vk_left);
var moveRelease = keyboard_check_released(vk_right) or keyboard_check_released(vk_left);

if (moveRight){ 
	x += mySpeed;
	state = "WALK";
	image_xscale = 1;
	}

if (moveLeft){
	x -= mySpeed;
	state = "WALK";
	image_xscale = -1;
	}
	
if (moveRelease){
	state = "IDLE"
	speed = 0;
	}