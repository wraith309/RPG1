/// @arg node Node to colour
/// @arg move SelectedActor's move
/// @arg actions SelectedActor's actions

var node, move, actions;

node = argument0;
move = argument1;
actions = argument2;

if(actions > 1){
	if(node.G > move){
		node.colour = c_yellow;
	}else{
		node.colour = c_aqua;
	}
}else{
	node.colour = c_yellow;
}
