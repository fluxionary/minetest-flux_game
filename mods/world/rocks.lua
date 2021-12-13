local function register_rock(name, hardness, groups)
    groups.cracky = math.max(3 - hardness, 1)
    groups.stone = 1
    groups.level = hardness

    minetest.register_node(("%s:%s"):format(world.modname, name), {
        description = name:gsub("_", " "):gsub("(%a)(%a*)", function(c, r)
            return c:upper() .. r
        end),
        tiles = { ("%s_%s.png"):format(world.modname, name) },
        groups = groups,
    })
end

-- igneous
register_rock("dunite", 3, { igneous = 1, mafic = 2, intrusive = 1 })
register_rock("peridotite", 3, { igneous = 1, mafic = 2, intrusive = 1 })
register_rock("kimberlite", 3, { igneous = 1, mafic = 2, intrusive = 1 })
register_rock("obsidian", 1, { igneous = 1, mafic = 1, extrusive = 1 })
register_rock("basalt", 1, { igneous = 1, mafic = 1, extrusive = 1 })
register_rock("gabbro", 1, { igneous = 1, mafic = 1, intrusive = 1 })
register_rock("andesite", 1, { igneous = 1, intermediate = 1, extrusive = 1 })
register_rock("diorite", 1, { igneous = 1, intermediate = 1, intrusive = 1 })
register_rock("rhyolite", 2, { igneous = 1, felsic = 1, extrusive = 1 })
register_rock("granite", 2, { igneous = 1, felsic = 1, intrusive = 1 })
register_rock("pumice", 1, { igneous = 1, felsic = 1, extrusive = 1 })
register_rock("scoria", 1, { igneous = 1, felsic = 1, extrusive = 1 })
register_rock("tuff", 1, { igneous = 1, felsic = 2, extrusive = 1 })

register_rock("nepheline_syenite", 2, { igneous = 1, alkali = 1, extrusive = 1 })
register_rock("phonolite", 2, { igneous = 1, alkali = 1, intrusive = 1 })

-- sedimentary
register_rock("claystone", 1, { sedimentary = 1 })
register_rock("shale", 1, { sedimentary = 1 })
register_rock("graywacke", 1, { sedimentary = 1 })

register_rock("white_sandstone", 1, { sedimentary = 1, sandstone = 1, felsic = 2 })
register_rock("pink_sandstone", 1, { sedimentary = 1, sandstone = 1, felsic = 1 })
register_rock("yellow_sandstone", 1, { sedimentary = 1, sandstone = 1, felsic = 1 })
register_rock("red_sandstone", 1, { sedimentary = 1, sandstone = 1, intermediate = 1 })
register_rock("black_sandstone", 1, { sedimentary = 1, sandstone = 1, mafic = 1 })

register_rock("conglomerate", 2, { sedimentary = 1 })

register_rock("limestone", 1, { sedimentary = 1, carbonate = 1 })
register_rock("dolostone", 1, { sedimentary = 1, carbonate = 1 })
register_rock("shelly_limestone", 1, { sedimentary = 1, carbonate = 1, })

register_rock("shale", 1, { sedimentary = 1, })
register_rock("siltstone", 1, { sedimentary = 1, })
register_rock("shale", 1, { sedimentary = 1, })
register_rock("chert", 1, { metamorphic = 1, })

register_rock("caliche", 1, { metamorphic = 1, })

register_rock("gypsum", 1, { metamorphic = 1, })
register_rock("halite", 1, { metamorphic = 1, })


-- metamorphic
register_rock("serpentinite", 1, { metamorphic = 1, mafic = 2, mpressure = 1})

register_rock("eclogite", 2, { metamorphic = 1, mafic = 1, mregional = 1, mtemperature = 2, mpressure = 3})
register_rock("amphibolite", 2, { metamorphic = 1, mafic = 1, mregional = 1, mtemperature = 2, mpressure = 2})
register_rock("blueschist", 2, { metamorphic = 1, mafic = 1, mregional = 1, mtemperature = 1, mpressure = 2})
register_rock("greenschist", 2, { metamorphic = 1, mafic = 1, mregional = 1, mtemperature = 1, mpressure = 1})
register_rock("hornfels", 2, { metamorphic = 1, mafic = 1, mregional = 0, mtemperature = 2, mpressure = 0})

register_rock("gneiss", 3, { metamorphic = 1, felsic = 1, mregional = 1, mpressure = 3, mtemperature = 3})


register_rock("quartzite", 2, { metamorphic = 1, felsic = 2, mregional = 1, mtemperature = 1, mpressure = 1})
register_rock("slate", 1, { metamorphic = 1, })

register_rock("phyllite", 1, { metamorphic = 1, })

register_rock("marble", 1, { metamorphic = 1, carbonate = 1, mregional = 1, mtemperature = 1, mpressure = 1})



--register_sand("white_sand")
--register_sand("pink_sand")
--register_sand("yellow_sand")
--register_sand("red_sand")
--register_sand("black_sand")
--register_sand("gravel")
