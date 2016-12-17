event_inherited();
if (instance_exists(obj_player)) {                       ///prüfen ob player existiert
     phy_position_x += sign(obj_player.x - x)*spd;       
    
}
            
if (x+5 >= obj_player.x and x-5 <= obj_player.x){
phy_position_y += sign(obj_player.y - y)*spd;
}
