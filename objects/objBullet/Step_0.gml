
var incrx = hspd / updates
var incry = vspd / updates

for (var i = 1; i <= updates; i++)
{
    var enemyHit = instance_place(x + i*incrx, y + i*incry, objParentEnemies)
    
    if (enemyHit != noone)
    {
        RangedHit( shotBy, id, enemyHit)
        
        instance_destroy()
        
        audio_play_sound(sndEnemyHit, 3, false, global.MasterVolume)
    }
    else if (place_meeting(x + i*incrx, y + i*incry, objParentImpassibles))
    {
        audio_play_sound(sndWallHit, 8, false, global.MasterVolume)
        
        instance_destroy()
    }
}

x += hspd
y += vspd