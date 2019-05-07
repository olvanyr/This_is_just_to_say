/// @description Insert description here
// You can write your code in this editor
if timer_left > 0 timer_left --;
if timer_right > 0 timer_right --;

var text_option_w = string_width(text_option)
var text_option_h = string_height(text_option)
var c_text = make_color_rgb(225, 242, 254);
var c_overlap = make_color_rgb(37, 137, 189);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw Background
var c = make_color_rgb(72, 71, 102);
draw_rectangle_color(0,0,room_width, room_height,c,c,c,c,0);

// Draw "< >"


draw_set_font(fChoice);
draw_set_color(c_text);
if (mouse_detection(half_width - marge - 20, half_height - 10, half_width - marge + 20,half_height + 10))
{
	if (device_mouse_check_button_pressed(0,mb_left))
	{
		selection -= 1;
		if (selection < 1) selection = selection_number;
	}
	draw_set_color(c_overlap);
}

if oInput.menu_left
{
	timer_left = 10;
}
if timer_left > 0
{
	draw_set_color(c_overlap);
}

draw_text(half_width - marge,half_height,"<");

draw_set_color(c_text);
if (mouse_detection(half_width + marge - 20, half_height - 10,half_width + marge + 20, half_height + 10))
{
	if (device_mouse_check_button_pressed(0,mb_left))
	{
		selection += 1;
		if (selection > selection_number) selection = 1;
	}
	draw_set_color(c_overlap);
}

if oInput.menu_right
{
	timer_right = 10;
}
if timer_right > 0
{
	draw_set_color(c_overlap);
}


draw_text(half_width + marge,half_height,">");

// Draw Title
draw_set_color(c_text)
draw_set_font(fTitle);
draw_text(half_width, gui_height/9,text_title);
draw_set_font(fMenu);
draw_text(half_width, gui_height/5,text_subtitle);

// Draw Menu Options

draw_set_color(c_text)

if (mouse_detection(half_width - text_option_w, gui_height - gui_height/5 - text_option_h, half_width + text_option_w,gui_height - gui_height/5 + text_option_h))
{
	if (device_mouse_check_button_pressed(0,mb_left))
	{
		room_goto(room0);
	}
	draw_set_color(c_overlap);
}

if oInput.enter room_goto(room0);

draw_set_font(fMenu);
draw_text(half_width, gui_height - gui_height/5, text_option);

// Draw characters
draw_sprite_ext(sprite,0,half_width, half_height + sprite_get_height(sprite) * 5, 10, 10,0,c_white,1);
