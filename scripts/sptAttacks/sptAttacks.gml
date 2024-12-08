function RangedAttack(dir, BulletObject, ShotSpeed, ShotDamage) 
{
	var shotBullet = instance_create_layer(x + 22 * dcos(-dir), y + 22 * dsin(-dir), "Projectiles", BulletObject)
	shotBullet.image_angle = dir
	shotBullet.hspd = ShotSpeed * dcos(-dir)
	shotBullet.vspd = ShotSpeed * dsin(-dir)
	shotBullet.damage = ShotDamage
	shotBullet.shotBy = CarriedBy
	
	return shotBullet
}

function MeleeAttack(dir, swingSpeed, lifetime, HitDamage)
{
	
}