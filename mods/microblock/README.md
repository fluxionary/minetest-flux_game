unified API for registering "microblocks", i.e. partial nodes that represent a cut-out of a basic node.
think stairs, pkarcs, circular saw (moreblocks)

1. register variant types (w/ appropriate nodebox/mesh)
2. register variant groups (e.g. "things you can get w/ a circular saw")
3. register machines/tools for transforming nodes to/from variants (possibly constrained to groups)
4. register variants of a node
   * whitelist (or blacklist?) of allowed variant types, to reduce combinatorial explosion


so like

```lua
microblock.register_type({
    name = "stairs",
    description = S("Stairs"),
    model = "stairs.obj",
})

microblock.register_type({
    name = "plank",
    description = S("Plank"),
    model = "plank.obj",
})

microblock.register_group({
   name = "sawable",
})

microblock.add_to_group("stairs", "sawable")
microblock.add_to_group("stairs", "plank")

microblock.register_crafter({
   name = "circular_saw",
   description = S("Circular Saw"),
   variants = {"sawable"},
})

microblock.register_variants({
   node = "tree:oak_wood",
   variants = {"sawable"},
})
```
