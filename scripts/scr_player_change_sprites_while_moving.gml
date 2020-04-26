///scr_player_change_sprites_while_moving
if move_side = 1
    {
        sprite_index = spr_player_up
    }
if move_side = 2
    {
        sprite_index = spr_player_right
    }
if move_side = 3
    {
        sprite_index = spr_player_down
    }
if move_side = 4
    {
        sprite_index = spr_player_left
    }
if hspeed = 0 and vspeed = 0
    {
        if move_side = 1
            {
                sprite_index = spr_player_idle_1
            }
        if move_side = 2
            {
                sprite_index = spr_player_idle_2
            }
        if move_side = 3
            {
                sprite_index = spr_player_idle_3
            }
        if move_side = 4
            {
                sprite_index = spr_player_idle_4
            }
    }
