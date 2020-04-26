/// scr_player_keyboard_controls()

// Get key input
key_w = keyboard_check(ord('W')); 
key_a = keyboard_check(ord('A'));
key_s = keyboard_check(ord('S'));
key_d = keyboard_check(ord('D'));
key_e = keyboard_check_pressed(ord('E')); // Interaction

// Move with input
if(key_w){ vspeed -= move_speed move_side = 1};
if(key_d){ hspeed += move_speed move_side = 2};
if(key_s){ vspeed += move_speed move_side = 3};
if(key_a){ hspeed -= move_speed move_side = 4};
if(key_a and key_d){ hspeed = 0 };
if(key_w and key_s){ vspeed = 0 };
if(!key_a and !key_d){ hspeed = 0 };
if(!key_w and !key_s){ vspeed = 0 };
// Limit speed
if(hspeed > max_speed){ hspeed = max_speed };
if(hspeed < -max_speed){ hspeed = -max_speed };
if(vspeed > max_speed){ vspeed = max_speed };
if(vspeed < -max_speed){ vspeed = -max_speed };
