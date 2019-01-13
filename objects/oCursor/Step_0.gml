x = mouse_x;
y = mouse_y;

gridX = floor(x/GRID_SIZE);
gridY = floor(y/GRID_SIZE);

if(gridX < 0 || gridY < 0 || gridX >= room_width/GRID_SIZE || gridY >= room_height/GRID_SIZE){
	hoverNode = noone;
}else{
	hoverNode = map[gridX, gridY];
}

if(mouse_check_button_pressed(mb_right)){
	if(selectedActor != noone && hoverNode.moveNode){
		current = hoverNode;
		
		//create priority queue
		path = ds_priority_create();
		
		//add current node to queue
		ds_priority_add(path, current, current.G);
		
		//step through each node parent to parent untill done
		while (current.parent != noone) {
		    //add parent node to queue. Priority equal to parent's G score
			ds_priority_add(path, current.parent, current.parent.G);
			
			//set current equal to current's parent, ready to go again!
			current = current.parent;
			
		}
		
		do {
		    //delete lowest priority node (closest to actor's) store id in current
			current = ds_priority_delete_min(path);
			
			//add current node's sprite coordinates to selectedActor's path
			path_add_point(selectedActor.movementPath, current.x, current.y, 100);
			
		} until (ds_priority_empty(path));
		
		//clean up priority queue
		ds_priority_destroy(path);
		
		//first clear the node of selectedActor
		map[selectedActor.gridX, selectedActor.gridY].occupant = noone;
		
		//update selectedActor's appropriate grid coords
		selectedActor.gridX = gridX;
		selectedActor.gridY = gridY;
		
		//update selectedActor's future node
		hoverNode.occupant = selectedActor;
		
		//send selectedActor on it's way!
		selectedActor.state = "begin path";
		
		//reduce selectedActor's actions and wipe nodes!
		if (hoverNode.G > selectedActor.move) {
		    selectedActor.actions -= 2;
			selectedActor = noone;
			wipe_nodes();
		}else{
			selectedActor.actions -= 1;
			wipe_nodes();
		}
		
	}
	
}













