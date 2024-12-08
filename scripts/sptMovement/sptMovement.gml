function MoveCollide(HDist, VDist, Collidables)
{
	HDist = round(HDist)
	VDist = round(VDist)
	
    if (place_meeting(x + HDist, y,Collidables)) == false // horizontal check and move
    {
	    x += HDist
    }
    else
    {
    	while ((place_meeting(x + sign(HDist), y,Collidables)) == false)
	    {
		    x += sign(HDist)
	    }
    } // end hor

    if (place_meeting(x, y + VDist,Collidables)) == false //vertical check and move
    {
    	y += VDist
    }
    else
    {
	    while ((place_meeting(x, y + sign(VDist),Collidables)) == false)
	    {
		    y += sign(VDist)
	    }
    } // end vert
}