/// @func movement_range(origin_node, move, actions)
/// @desc Calculate which nodes may be moved to given the origin node, the movement range and the remaining number of actions
/// @arg {instance_id} origin_node Node to pathfind from
/// @arg {real} movement Unit's movement range
/// @arg {real} actions Unit's remaining actions

//reset all nodes
wipe_nodes();

var open, closed;				//lists of nodes
var tempG, range, costMod;

//declare relevant variables from arguments
var start = argument0;
range = argument1 * argument2;

//create data structures
open = ds_priority_create();	//unvisited Nodes
closed = ds_list_create();		//visited nodes

//add starting node to the open list
ds_priority_add(open, start, start.G)

//while open queue is NOT empty..
// repeat the following untill ALL nodes have been looked at
while (ds_priority_size(open) > 0) {
    //remove node with the lowest G score from open
	var current = ds_priority_delete_min(open);
	
	//add that node to the closed list
	ds_list_add(closed, current);
	
	//step through all of current's neighbors
	for (ii = 0; ii < ds_list_size(current.neighbors); ii++) {
	    //store current neighbor in neighbor variable
		var neighbor = ds_list_find_value(current.neighbors, ii);
		
		//add neighbor to open list if it qualifies
		//what qualifies?!
		//neighbor isn't already on the closed list
		//neighbor is passable
		//neighbor has no occupant
		//neighbor's projected G score is less than movement range
		
		if(ds_list_find_index(closed, neighbor) < 0 && neighbor.passable && neighbor.occupant == noone && neighbor.cost + current.G <= range){
			//only calculate a new G score for neighbor
			//if it hasn't already been calculated
			
			if(ds_priority_find_priority(open, neighbor) == 0 || ds_priority_find_priority(open, neighbor) == undefined){
				costMod = 1;
				
				//give neighbor the appropriate parent
				neighbor.parent = current;
				
				//if node is diagonal, create appropriate costMod
				if (neighbor.gridX != current.gridX && neighbor.gridY != current.gridY) {
				    costMod = 1.5
				}
				
				//calculate G score of neighbor, with costMod in place
				
				neighbor.G = current.G + (neighbor.cost * costMod);
				
				//add neighbor to the open list so it can be checked out too!
				ds_priority_add(open, neighbor, neighbor.G);
				
				//else!
				//if neighbor score has ALREADY been calculated for the open list!
			}else{
				//figure out if the neighbor's score would be LOWER if found from current node!
				costMod = 1;
				
				//if node is diagonal, create appropriate costMod
				if (neighbor.gridX != current.gridX && neighbor.gridY != current.gridY) {
				    costMod = 1.5
				}
				tempG = current.G + (neighbor.cost * costMod);
				
				//check if G score would be lower
				if (tempG < neighbor.G){
				    neighbor.parent = current;
					neighbor.G = tempG;
					ds_priority_change_priority(open, neighbor, neighbor.G);
				}
				
			}
			
		}
		
	}
	
}

//round down all G scores for movement calculations!
with(oNode){
	G = floor(G);
}

//destroy open! SUPER IMPORTANT! No Leaks!!!
ds_priority_destroy(open);

//lets colour all those move nodes then DESTROY the closed list as well.
for (ii = 0; ii < ds_list_size(closed); ii += 1) {
    var current = ds_list_find_value(closed, ii);
	current.moveNode = true;
	colour_move_node(current, argument1, argument2);
}

start.moveNode = false;

//DESTROY closed list!!!!!!
ds_list_destroy(closed);
















