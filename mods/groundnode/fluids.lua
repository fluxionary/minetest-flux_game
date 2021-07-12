local WATER_ALPHA = "^[opacity:" .. 160
local WATER_VISC = 1
local LAVA_VISC = 7

minetest.register_node("groundnode:water_source", {
        description = "Water Source".."\n"..
                "Drowning damage: 1",
        drawtype = "liquid",
        waving = 3,
        tiles = {"groundnode_water.png"..WATER_ALPHA},
        special_tiles = {
                {name = "groundnode_water.png"..WATER_ALPHA, backface_culling = false},
                {name = "groundnode_water.png"..WATER_ALPHA, backface_culling = true},
        },
        use_texture_alpha = "blend",
        paramtype = "light",
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        is_ground_content = false,
        drowning = 1,
        liquidtype = "source",
        liquid_alternative_flowing = "groundnode:water_flowing",
        liquid_alternative_source = "groundnode:water_source",
        liquid_viscosity = WATER_VISC,
        post_effect_color = {a = 64, r = 100, g = 100, b = 200},
        groups = {water = 3, liquid = 3},
})

minetest.register_node("groundnode:water_flowing", {
        description = "Flowing Water".."\n"..
                "Drowning damage: 1",
        drawtype = "flowingliquid",
        waving = 3,
        tiles = {"groundnode_water_flowing.png"},
        special_tiles = {
                {name = "groundnode_water_flowing.png"..WATER_ALPHA,
                        backface_culling = false},
                {name = "groundnode_water_flowing.png"..WATER_ALPHA,
                        backface_culling = false},
        },
        use_texture_alpha = "blend",
        paramtype = "light",
        paramtype2 = "flowingliquid",
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        is_ground_content = false,
        drowning = 1,
        liquidtype = "flowing",
        liquid_alternative_flowing = "groundnode:water_flowing",
        liquid_alternative_source = "groundnode:water_source",
        liquid_viscosity = WATER_VISC,
        post_effect_color = {a = 64, r = 100, g = 100, b = 200},
        groups = {water = 3, liquid = 3},
})

minetest.register_node("groundnode:river_water_source", {
        description = "River Water Source".."\n"..
                "Drowning damage: 1",
        drawtype = "liquid",
        waving = 3,
        tiles = { "groundnode_river_water.png"..WATER_ALPHA },
        special_tiles = {
                {name = "groundnode_river_water.png"..WATER_ALPHA, backface_culling = false},
                {name = "groundnode_river_water.png"..WATER_ALPHA, backface_culling = true},
        },
        use_texture_alpha = "blend",
        paramtype = "light",
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        is_ground_content = false,
        drowning = 1,
        liquidtype = "source",
        liquid_alternative_flowing = "groundnode:river_water_flowing",
        liquid_alternative_source = "groundnode:river_water_source",
        liquid_viscosity = 1,
        liquid_renewable = false,
        liquid_range = 2,
        post_effect_color = {a = 103, r = 30, g = 76, b = 90},
        groups = {water = 3, liquid = 3, },
})

minetest.register_node("groundnode:river_water_flowing", {
        description = "Flowing River Water".."\n"..
                "Drowning damage: 1",
        drawtype = "flowingliquid",
        waving = 3,
        tiles = {"groundnode_river_water_flowing.png"..WATER_ALPHA},
        special_tiles = {
                {name = "groundnode_river_water_flowing.png"..WATER_ALPHA,
                        backface_culling = false},
                {name = "groundnode_river_water_flowing.png"..WATER_ALPHA,
                        backface_culling = false},
        },
        use_texture_alpha = "blend",
        paramtype = "light",
        paramtype2 = "flowingliquid",
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        is_ground_content = false,
        drowning = 1,
        liquidtype = "flowing",
        liquid_alternative_flowing = "groundnode:river_water_flowing",
        liquid_alternative_source = "groundnode:river_water_source",
        liquid_viscosity = 1,
        liquid_renewable = false,
        liquid_range = 2,
        post_effect_color = {a = 103, r = 30, g = 76, b = 90},
        groups = {water = 3, liquid = 3, },
})

minetest.register_node("groundnode:lava_flowing", {
        description = "Flowing Lava".."\n"..
                "4 damage per second".."\n"..
                "Drowning damage: 1",
        drawtype = "flowingliquid",
        tiles = {"groundnode_lava_flowing.png"},
        special_tiles = {
                {name="groundnode_lava_flowing.png", backface_culling = false},
                {name="groundnode_lava_flowing.png", backface_culling = false},
        },
        paramtype = "light",
        light_source = minetest.LIGHT_MAX,
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        is_ground_content = false,
        drowning = 1,
        damage_per_second = 4,
        liquidtype = "flowing",
        liquid_alternative_flowing = "groundnode:lava_flowing",
        liquid_alternative_source = "groundnode:lava_source",
        liquid_viscosity = LAVA_VISC,
        post_effect_color = {a=192, r=255, g=64, b=0},
        groups = {lava=3, liquid=1},
})

minetest.register_node("groundnode:lava_source", {
        description = "Lava Source".."\n"..
                "4 damage per second".."\n"..
                "Drowning damage: 1",
        drawtype = "liquid",
        tiles = { "groundnode_lava.png" },
        special_tiles = {
                {name = "groundnode_lava.png", backface_culling = false},
                {name = "groundnode_lava.png", backface_culling = true},
        },
        paramtype = "light",
        light_source = minetest.LIGHT_MAX,
        walkable = false,
        pointable = false,
        diggable = false,
        buildable_to = true,
        is_ground_content = false,
        drowning = 1,
        damage_per_second = 4,
        liquidtype = "source",
        liquid_alternative_flowing = "groundnode:lava_flowing",
        liquid_alternative_source = "groundnode:lava_source",
        liquid_viscosity = LAVA_VISC,
        post_effect_color = {a=192, r=255, g=64, b=0},
        groups = {lava=3, liquid=1},
})
