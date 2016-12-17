///scr_move_state 
scr_get_input(); 

//dash
if (dash_key) {
    state = scr_dash_state;
    alarm[0] = room_speed/8;
    }
//Attack
if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}

//get direction
dir = point_direction(0, 0, xaxis, yaxis);

//get the lenght
if (xaxis == 0 and yaxis = 0) {
    len = 0;
} else{
    len = spd;
    scr_get_face();
}

//get the hspd and vspd
hspd = lengthdir_x (len, dir);
vspd = lengthdir_y (len, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;


//Control the sprite
image_speed = sign(len)*.2;
if (len == 0) image_index = 0;


switch (face) {

    case RIGHT:
        sprite_index = spr_player_right
        break;
    case DOWN:
        sprite_index = spr_player_down
        break;
    case LEFT:
        sprite_index = spr_player_left
        break;
    case UP:
        sprite_index = spr_player_up
        break;
    }
