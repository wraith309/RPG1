
switch(state){
	
	case "initializing":
		with(oNode){
			if(instance_position(x + 16, y + 16, oTerrain)){
				tempTerrain = instance_position(x + 16, y + 16, oTerrain);
				
				switch(tempTerrain.type){
					case "wall":
						type = "wall";
						sprite_index = sWall;
						passable = false;
						
						break;
				
					case "rubble":
						type = "rubble";
						sprite_index = sRubble;
						cost = 2;
						
						break;
				}
				
				with(tempTerrain){
					instance_destroy();
				}
				
			}
			
			if(instance_position(x + 16, y + 16, oActor)){
				occupant = instance_position(x + 16, y + 16, oActor);
				occupant.gridX = gridX;
				occupant.gridY = gridY;
			}
			
		}
		state = "ready";
		break;
}
















