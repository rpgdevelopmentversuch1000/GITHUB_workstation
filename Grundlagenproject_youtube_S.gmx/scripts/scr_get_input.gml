///scr_get_input()

right_key = keyboard_check(vk_right) ;
left_key = keyboard_check(vk_left) ;
down_key = keyboard_check(vk_down) ;
up_key = keyboard_check(vk_up) ;
dash_key = keyboard_check_pressed(vk_space) ;
attack_key = keyboard_check_pressed(vk_alt) ;

xaxis = (right_key - left_key) ; 
yaxis = (down_key - up_key) ;

