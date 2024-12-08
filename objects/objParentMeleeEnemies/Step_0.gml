
event_inherited()

var target = instance_nearest(x, y, objParentPlayer)
var targDist = distance_to_object(target)

if targDist < movSpeed -4 //temp // replace with actual attack
{
    x = target.x
    y = target.y
}

if (knockedBack == 0) && (targDist <= detectionRange)
{
    var dir = point_direction(x, y, target.x, target.y)
    MoveCollide(movSpeed * dcos(-dir), movSpeed * dsin(-dir), objParentImpassibles)
}
else if knockedBack > 0
{
    var dir = point_direction(hitFrom[0], hitFrom[1], x, y)
    MoveCollide(knockedBack * dcos(-dir), knockedBack * dsin(-dir), objParentImpassibles)
}