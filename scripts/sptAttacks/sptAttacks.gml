function RangedAttack(dir, BulletObject, ShotSpeed, ShotDamage, offset = 22, targetsToHit = objParentEnemies) 
{
	var shotBullet = instance_create_layer(x + offset * dcos(-dir), y + offset * dsin(-dir), "Projectiles", BulletObject)
	
	with (shotBullet)
	{
		image_angle = dir
		hspd = ShotSpeed * dcos(-dir)
		vspd = ShotSpeed * dsin(-dir)
		damage = ShotDamage
		shotBy = other.CarriedBy
		targets = targetsToHit
	}
	
	return shotBullet
}

function MeleeAttack(dir, AttackObject, HitDamage, targetsToHit, lifetime = -1, swingSpeed = 0, offset = 30, scaleFactor = 1)
{
	var newAttack = instance_create_layer(x + offset * dcos(-dir) * sqrt(attackScale),  y + offset * dsin(-dir) * (sqrt(attackScale)), "Projectiles", AttackObject)
	
	with (newAttack)
	{
		orient = dir - 90
		damage = HitDamage
		scale = scaleFactor
		
		if (lifetime != -1)
		{
			// temp // swinging weapons
		}
		
		if (swingSpeed != 0)
		{
			// temp
		}
	}
}