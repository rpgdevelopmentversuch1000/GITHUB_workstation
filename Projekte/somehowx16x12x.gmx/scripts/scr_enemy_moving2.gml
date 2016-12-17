///Move towards the player

event_inherited();
if (instance_exists(obj_player)) {                       ///prüfen ob player existiert
    phy_position_x += sign(obj_player.x - x)*spd;
    phy_position_y += sign(obj_player.y - y)*spd;
}
