local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

groundnode = {
    modname = modname,
    modpath = modpath,
    log = function(level, message, ...)
        minetest.log(level, "[" .. modname .. "] " .. message:format(...))
    end
}

dofile(modpath .. "/rocks.lua")
dofile(modpath .. "/fluids.lua")
