

hsp = direction * walk_spd;

if (place_meeting(x + hsp , y, oWall))
{
	if !place_meeting(x + sign(hsp), y, oWall)
	{
		for (var i = 2*sign(hsp); !place_meeting(x + i,y,oWall); i += sign(hsp))
			x += i;
	}
	hsp = 0;
}

x += hsp;

if place_meeting(x + sign(hsp), y, oWall)
{
	direction *= -1;
}

if irandom(60) = 1
{
   direction *= -1;
}
if irandom(180) = 1
{
   direction = 0;
   alarm[0] = 60;
}