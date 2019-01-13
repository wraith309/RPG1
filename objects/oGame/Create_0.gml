
randomize();

globalvar map;

//create node!
for(xx = 0; xx < mapWidth; xx++){
	for(yy = 0; yy < mapHeight; yy++){
		map[xx, yy] = instance_create_layer(xx * GRID_SIZE, yy * GRID_SIZE, "node_layer", oNode);
		map[xx, yy].gridX = xx;
		map[xx, yy].gridY = yy;
	}
}

//populate neigbor lists!
for(xx = 0; xx < mapWidth; xx++){
	for(yy = 0; yy < mapHeight; yy++){
		
		node = map[xx, yy];
		
		//add left neighbor
		if(xx > 0){
			ds_list_add(node.neighbors, map[xx - 1, yy]);
		}
		
		//add right neighbor
		if(xx < mapWidth - 1){
			ds_list_add(node.neighbors, map[xx + 1, yy]);
		}
		
		//add top neighbor
		if(yy > 0){
			ds_list_add(node.neighbors, map[xx, yy - 1]);
		}
		
		//add bottom neighbor
		if(yy < mapHeight - 1){
			ds_list_add(node.neighbors, map[xx, yy + 1]);
		}
		
		//add top left neighbor
		if(xx > 0 && yy > 0){
			ds_list_add(node.neighbors, map[xx - 1, yy - 1]);
		}
		
		//add top right neighbor
		if(xx < mapWidth - 1 && yy > 0){
			ds_list_add(node.neighbors, map[xx + 1, yy - 1]);
		}
		
		//add bottom left neighbor
		if(xx > 0 && yy < mapHeight - 1){
			ds_list_add(node.neighbors, map[xx - 1, yy + 1]);
		}
		
		//add bottom right neighbor
		if(xx < mapWidth - 1 && yy < mapHeight - 1){
			ds_list_add(node.neighbors, map[xx + 1, yy + 1]);
		}
		
	}
	
}

//create cursor
instance_create_layer(x, y, "cursor_layer", oCursor);
