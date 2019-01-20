if(hoverNode != noone){
	draw_sprite(sSelected, -1, gridX * GRID_SIZE, gridY * GRID_SIZE);
}

draw_self();

if(hoverNode != noone){
	tempText = string(gridX) + " / " + string(gridY) + " = ";
	
	if(hoverNode.occupant != noone){
		tempText += hoverNode.occupant.name;
	}else{
		tempText += "noone";
	}
	
	draw_rectangle_color(0, 0, string_width(tempText), string_height(tempText), c_black, c_black, c_black, c_black, false );
	draw_text_color(0, 0, tempText, c_white, c_white, c_white, c_white, 1);
	
	tempText = hoverNode.type;
	
	if(hoverNode.passable){
		tempText += " passable = true, cost = " + string(hoverNode.cost);
	}
	
	draw_rectangle_color(0, 20, string_width(tempText), 20 + string_height(tempText), c_black, c_black, c_black, c_black, false );
	draw_text_color(0, 20, tempText, c_white, c_white, c_white, c_white, 1);
	
}

if(selectedActor != noone){
	tempText = selectedActor.name + " the " + selectedActor.race + " " + selectedActor.class;
	tempHitPoints = "HP: " + string(selectedActor.hitPoints) + " / " + string(selectedActor.maxHitPoints);
	tempHitBonus = "Hit Bonus: " + string(selectedActor.hitBonus);
	
	draw_rectangle_color(0, room_height, string_width(tempText), room_height - string_height(tempText), c_black, c_black, c_black, c_black, false );
	draw_text_color(0, room_height - string_height(tempText), tempText, c_white, c_white, c_white, c_white, 1);
	
	draw_rectangle_color(0, room_height - 16, string_width(tempHitPoints), room_height - 16 - string_height(tempHitPoints), c_black, c_black, c_black, c_black, false );
	draw_text_color(0, room_height - 16 - string_height(tempHitPoints), tempHitPoints, c_white, c_white, c_white, c_white, 1);
	
	draw_rectangle_color(0, room_height - 32, string_width(tempHitBonus), room_height - 32 - string_height(tempHitBonus), c_black, c_black, c_black, c_black, false );
	draw_text_color(0, room_height - 32 - string_height(tempHitBonus), tempHitBonus, c_white, c_white, c_white, c_white, 1);
	
}


























