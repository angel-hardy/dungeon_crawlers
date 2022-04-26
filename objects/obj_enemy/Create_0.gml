/// @description Insert description here
//enemycanmove = irandom_range(0,1);
enemycanmove = 1;
enemymoving = false;
timesmoved = 8;
if !place_meeting(x,y,obj_pathtile) {
	if !place_meeting(x,y,obj_roomtile) {
instance_destroy();	
}
}