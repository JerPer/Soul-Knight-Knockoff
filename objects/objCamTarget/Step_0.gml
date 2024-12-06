
MovDist = (distance_to_object(TargPlayer)^2)/7
if (MovDist > distance_to_object(TargPlayer))
    MovDist = distance_to_object(TargPlayer)

move_towards_point(TargPlayer.x, TargPlayer.y, MovDist)