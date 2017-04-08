var index = argument0;

var coords;
coords[0] = index div global.index_multiplier;
coords[1] = index mod global.index_multiplier;

return coords;
