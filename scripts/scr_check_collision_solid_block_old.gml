/// scr_player_collision()

// Moving down
if(vspeed > 0)
{
    if(place_meeting(x, y+vspeed, obj_floor))
    {
        while(!place_meeting(x, y+1, obj_floor)){y++};
        vspeed = 0;        
    }    
}

// Moving up
if(vspeed < 0)
{
    if(place_meeting(x, y+vspeed, obj_floor))
    {
        while(!place_meeting(x, y-1, obj_floor)){y--};
        vspeed = 0;
        can_move_up = false
    }
}

// Moving right
if(hspeed > 0)
{
    if(place_meeting(x+hspeed, y, obj_floor))
    {
        while(!place_meeting(x+1, y, obj_floor)){x++};
        hspeed = 0;
        can_move_right = false
    }
}

// Moving left
if(hspeed < 0)
{
    if(place_meeting(x+hspeed, y, obj_floor))
    {
        while(!place_meeting(x-1, y, obj_floor)){x--};
        hspeed = 0;
        can_move_left = false
    }
}
