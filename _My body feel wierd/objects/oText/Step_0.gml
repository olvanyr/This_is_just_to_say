
letters +=spd;
current_text = string_copy(text,1,floor(letters));

if (h == 0) h = string_height_ext(text,sep,box_w);
w = string_width_ext(current_text,sep,box_w);