local S = worldnode.translator

local function register_fluid(name, args)
    minetest.register_node(("worldnode:%s_source"):format(name),
        args
    )
end
local function register_water()  end


minetest.register_node("worldnode:water_source", {
    description = S("Water Source"),
    drawtype = "liquid",
    waving = 3,
    tiles = {
        {
            name = "worldnode_water_source_animated.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0,
            },
        }, {
            name = "worldnode_water_source_animated.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0,
            },
        },
    },
    use_texture_alpha = "blend",
    paramtype = "light",
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    drop = "",
    drowning = 1,
    liquidtype = "source",
    liquid_alternative_flowing = "worldnode:water_flowing",
    liquid_alternative_source = "worldnode:water_source",
    liquid_viscosity = 1,
    post_effect_color = { a = 103, r = 30, g = 60, b = 90 },
    groups = { water = 3, liquid = 3, cools_lava = 1 },
    sounds = nil, -- TODO
})

minetest.register_node("worldnode:water_flowing", {
    description = S("Flowing Water"),
    drawtype = "flowingliquid",
    waving = 3,
    tiles = { "worldnode_water.png" },
    special_tiles = {
        {
            name = "worldnode_water_flowing_animated.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 0.5,
            },
        },
        {
            name = "worldnode_water_flowing_animated.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 0.5,
            },
        },
    },
    use_texture_alpha = "blend",
    paramtype = "light",
    paramtype2 = "flowingliquid",
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    drop = "",
    drowning = 1,
    liquidtype = "flowing",
    liquid_alternative_flowing = "worldnode:water_flowing",
    liquid_alternative_source = "worldnode:water_source",
    liquid_viscosity = 1,
    post_effect_color = { a = 103, r = 30, g = 60, b = 90 },
    groups = { water = 3, liquid = 3, not_in_creative_inventory = 1,
               cools_lava = 1 },
    sounds = nil, -- TODO
})

minetest.register_node("worldnode:river_water_source", {
    description = S("River Water Source"),
    drawtype = "liquid",
    tiles = {
        {
            name = "worldnode_river_water_source_animated.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0,
            },
        },
        {
            name = "worldnode_river_water_source_animated.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 2.0,
            },
        },
    },
    use_texture_alpha = "blend",
    paramtype = "light",
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    drop = "",
    drowning = 1,
    liquidtype = "source",
    liquid_alternative_flowing = "worldnode:river_water_flowing",
    liquid_alternative_source = "worldnode:river_water_source",
    liquid_viscosity = 1,
    -- Not renewable to avoid horizontal spread of water sources in sloping
    -- rivers that can cause water to overflow riverbanks and cause floods.
    -- River water source is instead made renewable by the 'force renew'
    -- option used in the 'bucket' mod by the river water bucket.
    liquid_renewable = false,
    liquid_range = 2,
    post_effect_color = { a = 103, r = 30, g = 76, b = 90 },
    groups = { water = 3, liquid = 3, cools_lava = 1 },
    sounds = nil, -- TODO
})

minetest.register_node("worldnode:river_water_flowing", {
    description = S("Flowing River Water"),
    drawtype = "flowingliquid",
    tiles = { "worldnode_river_water.png" },
    special_tiles = {
        {
            name = "worldnode_river_water_flowing_animated.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 0.5,
            },
        },
        {
            name = "worldnode_river_water_flowing_animated.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 0.5,
            },
        },
    },
    use_texture_alpha = "blend",
    paramtype = "light",
    paramtype2 = "flowingliquid",
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    drop = "",
    drowning = 1,
    liquidtype = "flowing",
    liquid_alternative_flowing = "worldnode:river_water_flowing",
    liquid_alternative_source = "worldnode:river_water_source",
    liquid_viscosity = 1,
    liquid_renewable = false,
    liquid_range = 2,
    post_effect_color = { a = 103, r = 30, g = 76, b = 90 },
    groups = { water = 3, liquid = 3, not_in_creative_inventory = 1,
               cools_lava = 1 },
    sounds = nil, -- TODO
})

minetest.register_node("worldnode:lava_source", {
    description = S("Lava Source"),
    drawtype = "liquid",
    tiles = {
        {
            name = "worldnode_lava_source_animated.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        },
        {
            name = "worldnode_lava_source_animated.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        },
    },
    paramtype = "light",
    light_source = minetest.LIGHT_MAX - 1,
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    drop = "",
    drowning = 1,
    liquidtype = "source",
    liquid_alternative_flowing = "worldnode:lava_flowing",
    liquid_alternative_source = "worldnode:lava_source",
    liquid_viscosity = 7,
    liquid_renewable = false,
    damage_per_second = 4 * 2,
    post_effect_color = { a = 191, r = 255, g = 64, b = 0 },
    groups = { lava = 3, liquid = 2, igniter = 1 },

})

minetest.register_node("worldnode:lava_flowing", {
    description = S("Flowing Lava"),
    drawtype = "flowingliquid",
    tiles = { "worldnode_lava.png" },
    special_tiles = {
        {
            name = "worldnode_lava_flowing_animated.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 3.3,
            },
        },
        {
            name = "worldnode_lava_flowing_animated.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 3.3,
            },
        },
    },
    paramtype = "light",
    paramtype2 = "flowingliquid",
    light_source = minetest.LIGHT_MAX - 1,
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
    drop = "",
    drowning = 1,
    liquidtype = "flowing",
    liquid_alternative_flowing = "worldnode:lava_flowing",
    liquid_alternative_source = "worldnode:lava_source",
    liquid_viscosity = 7,
    liquid_renewable = false,
    damage_per_second = 4 * 2,
    post_effect_color = { a = 191, r = 255, g = 64, b = 0 },
    groups = { lava = 3, liquid = 2, igniter = 1,
               not_in_creative_inventory = 1 },
})
