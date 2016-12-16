///scr_enemy_wander_state()
scr_check_player_state() ;

phy_position_x += sign(targetx -x)*spd ; //movement des enemys -> targetx/y ist die x-ykoordinate des spielers aus gecallten state
phy_position_y += sign(targety -y)*spd ;

