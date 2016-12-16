///scr_attack_state()
image_speed = 0.5 ;

switch (sprite_index) {
    case spr_hero_right:
        sprite_index = spr_hero_attack_right ;
    break ;
    
    case spr_hero_left:
        sprite_index = spr_hero_attack_left ;
    break;
    
    case spr_hero_down:
        sprite_index = spr_hero_attack_down ;
    break;  
     
    case spr_hero_up:
        sprite_index = spr_hero_attack_up ;
    break;
}
if (image_index >= 3 and attacked = false ){
    var xx = 0;
    var yy = 0;
    switch (sprite_index) {
        case spr_hero_attack_right:
            xx = x+12;
            yy = y+2 ;
        break ;
    
        case spr_hero_attack_left:
            xx = x-12;
            yy = y+2 ; 
        break;
    
        case spr_hero_attack_down:
            xx = x ;
            yy = y+14 ;
        break;  
     
        case spr_hero_attack_up:
            xx = x ;
            yy = y-8 ;
        break;
}
    var damage = instance_create(xx,yy,obj_damage) ;
    damage.creator = id ;
    attacked = true ;
}
