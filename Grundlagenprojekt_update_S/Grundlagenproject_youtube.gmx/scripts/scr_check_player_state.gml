///scr_check_player_state()

if (instance_exists(obj_hero)){     
    var dis = point_distance(x,y,obj_hero.x, obj_hero.y)
    if (dis < sight){
    state = scr_enemy_chase_state ; 
    targetx = obj_hero.x ;
    targety = obj_hero.y ;   
    } else {
    scr_enemy_choose_state() ;
    }
} else {
    scr_enemy_choose_state();

}




