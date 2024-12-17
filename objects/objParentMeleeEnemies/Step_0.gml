
event_inherited()

if currentCD > 0
    currentCD--

var target = instance_nearest(x, y, objParentPlayer)
var targDist = point_distance(x, y, target.x, target.y)

if (targDist <= attackRange) && (currentCD == 0)
{
    attacking = true
    alarm_set(1, attackWinddown)
    
    var dir = point_direction(x, y, target.x, target.y)
    
    MeleeAttack(dir, attackObject, 10, objParentPlayer, , , , attackScale)
    audio_play_sound(sndAttackSwish, 3, false, global.MasterVolume)
    
    currentCD = attackCD
}

if (knockedBack == 0) && (!attacking) && (targDist <= detectionRange) && (targDist >= attackRange)
{
    var dir = point_direction(x, y, target.x, target.y)
    MoveCollide(movSpeed * dcos(-dir), movSpeed * dsin(-dir), objParentImpassibles)
}
else if knockedBack > 0
{

    var dir = point_direction(hitFrom[0], hitFrom[1], x, y)
    MoveCollide(knockedBack * dcos(-dir), knockedBack * dsin(-dir), objParentImpassibles)
}