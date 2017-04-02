var sp_num = argument0;
if (enemy_counter % 3 && enemy_counter > 5)
{
    iii = instance_create(x, y - 100, obj_nyasha)
}
else if (enemy_counter % 2 )
{
    iii = instance_create(x, y - 100, obj_ponyasha)
}
else
{
    iii = instance_create(x, y -100, obj_zhdun);
}

with iii do
{
    path_set_closed(global.path[sp_num], false);
    path_start(global.path[sp_num], spd, path_action_reverse, 1)
}
alarm[0] = room_speed * cooldown;
enemy_counter+=1;
