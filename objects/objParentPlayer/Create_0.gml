 /// @description Insert description here
// You can write your code in this editor

WeaponSlot1 = noone
WeaponSlot2 = noone

#macro BASESPD 5

ActiveCam = view_camera[0]

camera_set_view_border(ActiveCam, camera_get_view_width(ActiveCam)/2 ,camera_get_view_height(ActiveCam)/2)

CamTarg = instance_create_layer(x, y, "Instances", objCamTarget)
CamTarg.TargPlayer = id