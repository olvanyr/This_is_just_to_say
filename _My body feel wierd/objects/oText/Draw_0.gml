draw_set_font(fText);
var halfw = w *0.5;

//draw the box

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border, y-h-(border*2) + buffer, x+halfw+border, y + buffer, 15, 15, false);
draw_set_alpha(1);


//Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
//draw_text_ext(x-halfw,y-h-border,current_text,sep,box_w);
draw_text_ext(x,y-h/2-border + buffer,current_text,sep,box_w);