/// @description Insert description here
// You can write your code in this editor

//movement
if PlayerState = 0
{
	//horizontal
	if keyboard_check(ord("A"))
		hspd = -(BASESPD + MvSpdMod)
	else if keyboard_check(ord("D"))
		hspd = BASESPD + MvSpdMod
	else
		hspd = 0
		
	//vertical
	if keyboard_check(ord("S"))
		vspd = BASESPD + MvSpdMod
	else if keyboard_check(ord("W"))
		vspd = -(BASESPD + MvSpdMod)
	else
		vspd = 0
}

if (mouse_x > x)
	image_index = 0
else
	image_index = 1

MoveCollide(hspd,vspd,objParentImpassibles)