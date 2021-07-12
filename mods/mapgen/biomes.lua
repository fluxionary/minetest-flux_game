minetest.clear_registered_biomes()

minetest.register_biome({
    name = "mapgen:grassland",
    node_top = "basenodes:dirt_with_grass",
    depth_top = 1,
    node_filler = "basenodes:dirt",
    depth_filler = 1,
    node_riverbed = "basenodes:sand",
    depth_riverbed = 2,
    node_dungeon = "basenodes:cobble",
    node_dungeon_alt = "basenodes:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 4,
    heat_point = 50,
    humidity_point = 50,
})

minetest.register_biome({
    name = "mapgen:grassland_ocean",
    node_top = "basenodes:sand",
    depth_top = 1,
    node_filler = "basenodes:sand",
    depth_filler = 3,
    node_riverbed = "basenodes:sand",
    depth_riverbed = 2,
    node_cave_liquid = "basenodes:water_source",
    node_dungeon = "basenodes:cobble",
    node_dungeon_alt = "basenodes:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = 3,
    y_min = -255,
    heat_point = 50,
    humidity_point = 50,
})

minetest.register_biome({
    name = "mapgen:grassland_under",
    node_cave_liquid = {"basenodes:water_source", "basenodes:lava_source"},
    node_dungeon = "basenodes:cobble",
    node_dungeon_alt = "basenodes:mossycobble",
    node_dungeon_stair = "stairs:stair_cobble",
    y_max = -256,
    y_min = -31000,
    heat_point = 50,
    humidity_point = 50,
})
