///scr_dash_state()

len = spd*4 ;

/// bewegungsgeschwindigkeit durch Vektor bestimmen
hspd = lengthdir_x(len, dir) ;
vspd = lengthdir_y(len, dir) ;

/// Movement
phy_position_x += hspd ;
phy_position_y += vspd ;

/// fade effekt erzeugen
var dash = instance_create(x, y, obj_dash_effect) ; //die variable dash erzeugt temp. effekt bis zerstörung
                                                    // effekt wird von allein wiederholt
dash.sprite_index = sprite_index ;  // variable dash kopiert derzeitige ausrichtung des sprites/spielers
dash.image_index = image_index ;    // variable kopiert die bewegung des sprites












