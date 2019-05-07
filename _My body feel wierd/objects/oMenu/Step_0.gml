/// @description Insert description here
// You can write your code in this editor
switch (selection)
{
	case 1 : 
		character = oPlayer1; 
		sprite = sPlayer1;
	break;
	
	case 2 : 
		character = oPlayer2; 
		sprite = sPlayer2;
	break;
	
	case 3 : 
		character = oPlayer3; 
		sprite = sPlayer3;
	break;
	
	case 4 : 
		character = oPlayer4; 
		sprite = sPNJ;
	break;
	
	case 5 : 
		character = oPlayer5; 
		sprite = sPlayer5;
	break;

}


global.player = character;

if oInput.menu_left
{
	selection -= 1;
	if (selection < 1) selection = selection_number;
}

if oInput.menu_right
{
	selection += 1;
	if (selection > selection_number) selection = 1;
}
