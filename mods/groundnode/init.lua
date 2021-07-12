local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

local mt_log = minetest.log
groundnode = {
    modname = modname,
    modpath = modpath,
    log = function(level, message, ...)
        mt_log(level, "[" .. modname .. "] " .. message:format(...))
    end
}

dofile(modpath .. "/register_nodes.lua")
