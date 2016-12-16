///scr_slide_state()

//impuls 
    with (self){
    physics_apply_impulse(x,y,lasthspd,lastvspd) ; //wird durch timer ausgelöscht
    } 

// Angriff auf eis
    if (attack_key) {   
    state = scr_attack_state ;
    image_index = 0 ;
    }   




