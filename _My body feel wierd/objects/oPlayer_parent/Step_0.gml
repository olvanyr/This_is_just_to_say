
// Mouvment
move = oInput.right - oInput.left;


hsp = move * walk_spd;

vsp += gravity_spd;

if(grounded && oInput.up)
{
	vsp = jump_spd;
}

// Colision
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

if(place_meeting(x, y + vsp, oWall))
{
	while(!place_meeting(x , y + sign(vsp), oWall))
	{
		y += sign(vsp)
	}
	vsp = 0;
}

y += vsp;

// Jump
if (!place_meeting(x,y + 1, oWall))
{
	grounded = false;
}else grounded =true;

// Next Room

if oInput.next 
{
	instance_create_layer(0,0,"Transition",oTransition);
}

//Reset
if keyboard_check_pressed(ord("R")) room_goto(rMenu);