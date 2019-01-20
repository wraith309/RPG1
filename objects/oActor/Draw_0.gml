
if(oCursor.selectedActor == id){
	//if cursor is hovering over a different node than actor's
	if (oCursor.hoverNode != noone && oCursor.hoverNode != map[gridX, gridY]) {
	    current = oCursor.hoverNode;
	
		//step through every node in the chain, parent to parent until we reach the actor's node.
		while (current.parent != noone) {
		    draw_line_width_colour(current.x + 16, current.y + 16, current.parent.x + 16, current.parent.y + 16, 4, c_lime, c_lime);
		
			current = current.parent;
		
		}
	
	}
}


draw_self();