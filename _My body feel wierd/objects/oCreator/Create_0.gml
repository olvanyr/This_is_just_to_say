
instance_create_layer(x,y,"Player", global.player);


repeat(irandom_range(5,12))
{
	var _x = random_range(60,600);
	var _layer = choose("PNJ1","PNJ2");
	instance_create_layer(_x, 431, _layer, oPNJ);
}