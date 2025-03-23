if instance_exists(objPlayer){
	if (objPlayer.interaction) == true{
		x = objPlayer.x;
		y = objPlayer.y-66;	
	}
	else{instance_destroy()}

}
