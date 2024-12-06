
var incrx = hspd / updates
var incry = vspd / updates

for (var i = 1; i <= updates; i++)
{
    var enemyHit = instance_place(x + i*incrx, y + i*incry, objParentEnemies)
    
    if (enemyHit != noone)
    {
        RangedHit( shotBy, , enemyHit)
        
        instance_destroy()
    }
    if (place_meeting(x + i*incrx, y + i*incry, objParentImpassibles))
    {
        
        
        instance_destroy()
    }
}

x += hspd
y += vspd