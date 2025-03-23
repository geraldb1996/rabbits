switch (state){
	case "IDLE":
		image_speed = 0;
		image_index = 0;
		break;
		
	case "ONLOAD":
		image_speed = 0.2;
		image_xscale = objPlayer.image_xscale;
		break;
}

if instance_exists(objPlayer) && (state == "ONLOAD"){
	x = objPlayer.x
	y = objPlayer.y
	image_index += 1;
	if (image_index >= 7){image_index = 0;}
}

if objPlayer.interaction == true{
	if keyboard_check_pressed(vk_space) && interaction == true{
	if state == "ONLOAD"{
		state = "IDLE";
	}
	else{state = "ONLOAD"}
}
}

show_debug_message(state)