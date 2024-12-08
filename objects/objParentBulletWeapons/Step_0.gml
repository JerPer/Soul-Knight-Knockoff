 /// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if mouse_check_button(mb_left) && (ReloadTimer <= 0)
{
	RangedAttack(point_direction(x, y, mouse_x, mouse_y), Bullet, BulletSpeed, BulletDamage)
	
	audio_play_sound(sndGunShoot, 10, false, global.MasterVolume)
	
	ReloadTimer = ReloadTime
}

if (ReloadTimer > 0)
	ReloadTimer--