
text = "";
walk_spd = 4;
gravity_spd = 4;
jump_spd = -30
move = 0;
vsp = 0;
hsp = 0;
grounded = false;

switch (room) 
{
	case room1 : text = text1; break;
	case room0 : text = text0; break;
	case room2 : text = text2; break;
	case room3 : text = text3; break;
}
	
with instance_create_layer(xstart,ystart,"text", oText)
{
	text = other.text;
}
