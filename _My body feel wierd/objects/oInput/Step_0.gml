left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

next = keyboard_check(ord("N"));
if keyboard_check(vk_enter) next = 1;

up = keyboard_check_pressed(vk_up);
if keyboard_check_pressed(vk_space) up = 1;

enter = keyboard_check(vk_enter);
if keyboard_check(vk_space) enter = 1;





menu_left = keyboard_check_pressed(vk_left);
menu_right = keyboard_check_pressed(vk_right);


//gamepad
if (abs(gamepad_axis_value(0,gp_axislv)) > 0.5)
{
	if (max(gamepad_axis_value(0,gp_axislv),0) > 0.7) down = 1;
		
	else down = max(gamepad_axis_value(0, gp_axislv),0);
	
	if (abs(min(gamepad_axis_value(0,gp_axislv),0)) > 0.7)	up = 1;
		
	else up = abs(min(gamepad_axis_value(0,gp_axislv),0));
}
if (abs(gamepad_axis_value(0,gp_axislh)) > 0.1)
{
	if (abs(min(gamepad_axis_value(0,gp_axislh),0)) > 0.7)	left = 1;
		
	else left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	
	if (max(gamepad_axis_value(0,gp_axislh),0) > 0.7) right = 1;
		
	else right = max(gamepad_axis_value(0, gp_axislh),0);
}




//jump
if gamepad_button_check_pressed(0,gp_face1) up = 1;

// next
if gamepad_button_check_pressed(0,gp_start) next = 1;
//menu
if gamepad_button_check_pressed(0,gp_face1) enter = 1;
if gamepad_button_check_pressed(0,gp_face2) enter = 1;
if gamepad_button_check_pressed(0,gp_face3) enter = 1;
if gamepad_button_check_pressed(0,gp_face4) enter = 1;
if gamepad_button_check_pressed(0,gp_start) enter = 1;



if (abs(gamepad_axis_value(0,gp_axislh)) > 0.1)
{
	if (abs(min(gamepad_axis_value(0,gp_axislh),0)) > 0.7) && !toggle
	{
		menu_left = 1;
		toggle = true;
	}
	if (max(gamepad_axis_value(0,gp_axislh),0) > 0.7)&& !toggle
	{
		menu_right = 1;
		toggle = true;
	}
}else toggle = false;
