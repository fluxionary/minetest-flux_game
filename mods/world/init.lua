local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

world = {
    modname = modname,
    modpath = modpath,
    translator = minetest.get_translator(modname    ),
    log = function(level, message, ...)
        minetest.log(level, "[" .. modname .. "] " .. message:format(...))
    end
}

dofile(modpath .. "/rocks.lua")
dofile(modpath .. "/fluids.lua")
