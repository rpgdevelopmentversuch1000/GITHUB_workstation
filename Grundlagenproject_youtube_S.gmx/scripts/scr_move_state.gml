///scr_move_state()
scr_get_input() ; // tastenbelegungs script callen

if (dash_key and len != 0 ) {
    state = scr_dash_state ;
    alarm[0] = room_speed / 6 ;
} 

if (attack_key) {
    state = scr_attack_state ;
    image_index = 0 ;
}

/// achsenbelegung + vektoren


    /// AUSRICHTUNG/direction des vektors herausfinden
    dir = point_direction(0, 0, xaxis, yaxis) ;
    
    /// LÄNGE des vektors herausfinden
    if (xaxis == 0 and yaxis == 0) {       /// wenn hero steht, keine länge des vektors
        len = 0 ;
    } else {
        len = spd ;                    /// wenn doch, dann ist der vektor -+1 * spd
        scr_get_face() ;
           }

/// bewegungsgeschwindigkeit durch Vektor bestimmen
hspd = lengthdir_x(len, dir) ;
vspd = lengthdir_y(len, dir) ;

/// Movement
phy_position_x += hspd ;
phy_position_y += vspd ;



/// sprite control
    // sprite bewegen
    image_speed = sign(len)* 0.2 ;      // wenn man sich bewegt = sprite bewegt sich
    
    if (len == 0) {                 // wenn keine bewegung = sprite bleibt stehen
        image_index = 0 ;
    }


switch (face) {
    case RIGHT:
    sprite_index = spr_hero_right;
    break;
    
    case LEFT:
    sprite_index = spr_hero_left;
    break;
    
    case UP:
    sprite_index = spr_hero_up;
    break;
    
    case DOWN:
    sprite_index = spr_hero_down;
    break;
}








