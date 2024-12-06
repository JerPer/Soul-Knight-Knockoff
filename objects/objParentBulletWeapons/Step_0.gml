 /// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if mouse_check_button(mb_left) && (ReloadTimer = 0)
{
	var dir = point_direction(x, y, mouse_x, mouse_y)
	var shotBullet = instance_create_layer(x + 22 * dcos(-dir), y + 22 * dsin(-dir), "Projectiles", Bullet)
	shotBullet.image_angle = dir
	shotBullet.hspd = BulletSpeed * dcos(-dir)
	shotBullet.vspd = BulletSpeed * dsin(-dir)
	shotBullet.damage = BulletDamage
	shotBullet.shotBy = CarriedBy
	
	ReloadTimer = ReloadTime
}

if (ReloadTimer > 0)
	//ReloadTimer--)
	//hello daar
	//asdasdwa