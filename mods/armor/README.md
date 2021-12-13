API for adding armor

If the relevant mods from the game are detected, and the setting is enabled (default),
will automatically register generic armor.

TODO:
    * armor types should be able to absorb specific kinds of damage (e.g. boots w.r.t. falling)
    * sets should be able to absorb specific kinds of damage
    * register_set should basically call register_piece for each item in the set
    * armor should be able to protect a % of incoming damage
    * armor should be able to protect from *any* damage, a given % of the time
    * armor should be able to protect against all damage below a given threshold
