
--[[
{
    name = "Legs",
    ...
}
]]--
function armor.register_type(def)

end


--[[
{
    name = "Iron",
    crafting_material = "ore:iron_ingot",
    set_include = {
        "Head", "Chest", "Legs", "Feet", "Shield",
    }
    durability = 100,  -- number of hits it can survive
    protection = 50,  -- percent of damage blocked
    ...
}

RETURNS:
    a table of armor item names -> defs, so additional stuff can be modified
]]--
function armor.register_set(def)

end


--[[
{
    name = "Magic Ring",
    type = "Ring",
    ...
}
]]--
function armor.register_piece(def)

end
