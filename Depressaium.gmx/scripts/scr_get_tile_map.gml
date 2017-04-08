///scr_get_tile_map()
var tile_solids,tile_width,tile_height;



tiles_quant_x = room_width div global.tile_width;
tiles_quant_y = room_height div global.tile_height;
show_debug_message("Tile_quant_y="+string(tiles_quant_y));

for(Y = 0; Y < tiles_quant_y; Y++)
{
    for(X = 0; X < tiles_quant_x; X++)
    {
       show_debug_message("Y="+string(Y));
       tile = tile_layer_find(global.TILE_DEPTH, X * global.tile_width, Y * global.tile_height);
       if tile_exists(tile)
       {
           pos_x = tile_get_left(tile);
           pos_y = tile_get_top(tile);
           var index = scr_coord_to_index(pos_x, pos_y);
           tile_solids[X,Y] = global.solid_tiles[? index];
       }
       else
       {
            tile_solids[X,Y] = false;
       }

       
       show_debug_message("TileSolids X="+string(X)+" Y="+string(Y)+" "+string(tile_solids[X,Y]));
    }
}

return tile_solids;
