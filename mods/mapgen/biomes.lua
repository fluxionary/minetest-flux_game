minetest.clear_registered_biomes()

minetest.register_biome({
    name = "mapgen:default",
    node_top = "groundnode:dunite",
    depth_top = 1,
    node_filler = "groundnode:peridotite",
    depth_filler = 1,
    node_riverbed = "groundnode:kimberlite",
    depth_riverbed = 2,
    node_dungeon = "groundnode:obsidian",
    y_max = 31000,
    y_min = -31000,
    heat_point = 50,
    humidity_point = 50,
})
