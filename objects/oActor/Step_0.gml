switch (state) {
    case "begin path":
        //begin moving along path
		path_start(movementPath, moveSpeed, 0, true)
		
		state = "moving";
        break;

}