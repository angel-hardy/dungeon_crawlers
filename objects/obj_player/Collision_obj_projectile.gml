/// @description Insert description here
if canbehurt = 1 {
	audio_play_sound(sfx_damage,5,false);
	canbehurt = 0
	global.playerhp -=1
	if global.playerhp < 1 {
		image_index = 8;
		canbecontrolled=0;
		global.killed = true; //determines the endscreen image
		global.floorscleared = floorsCleared; //stores this away before the ladybug destroys itself
		global.bugmoney = bugmoney;
		alarm_set(1,60);
	}
	alarm_set(0,60);
}