switch (state){
	case "IDLE":
		sprite_index = sprPlayerIDLE;
		image_speed = 1;
		break;
	case "WALK":
		sprite_index = sprPlayerWALK;
		image_speed = 1;
		break;
	case "LOAD":
		sprite_index = sprPlayerLOAD;
		image_speed = 1;
		break;
	case "LOADIDLE":
		image_speed = 0;
		break;
}

// Get input
var moveRight = keyboard_check(vk_right)
var moveLeft = keyboard_check(vk_left);
var moveRelease = keyboard_check_released(vk_right) or keyboard_check_released(vk_left);

if (moveRight){ 
	x += mySpeed;
	if (state == "WALK")or(state == "IDLE"){state = "WALK";}
	if (state == "LOAD") or (state == "LOADIDLE"){state = "LOAD";}
	image_xscale = 1;
	}
if (moveLeft){
	x -= mySpeed;
	if (state == "WALK")or(state == "IDLE"){state = "WALK";}
	if (state == "LOAD")or(state == "LOADIDLE"){state = "LOAD";}
	image_xscale = -1;
	}
if (moveRelease){
	if (state == "LOAD"){state = "LOADIDLE"}
	if (state == "WALK"){state = "IDLE"}
	speed = 0;
	}
	
if distance_to_object(obj_Interactive) <= 10{
	interaction = true;
	if instance_number(obj_interactionTop) <= 0{
		instance_create_depth(x, y-66, 1, obj_interactionTop);
	}/*End of instance count*/
	
	}
else{interaction = false;}

if keyboard_check_pressed(vk_space) && interaction == true{
	state = "LOAD";
	mySpeed = 2.5;
}
if keyboard_check_pressed(vk_space) && (interaction == false){
	if (state == "LOAD") or (state == "LOADIDLE"){
		state = "IDLE";
	}
}