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
	
if distance_to_object(obj_Interactive) <= 10{
	interaction = true;
	if instance_number(obj_interactionTop) <= 0{
		instance_create_depth(x, y-66, 1, obj_interactionTop);
	}/*End of instance count*/
	
	}
else{interaction = false;}