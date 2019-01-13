//clear path
path_clear_points(movementPath);

state = "idle";

if (actions > 0) {
    oCursor.selectedActor = id;
	movement_range(map[gridX, gridY], move, actions);
}else{
	oGame.currentActor = noone;
}