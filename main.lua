local mod = RegisterMod('mymod', 1);


-- Args for MC_PRE_ENTITY_SPAWN are:
-- EntityType,
-- Variant [int],
-- SubType [int],
-- Position [Vector],
-- Velocity [Vector],
-- Spawner [Entity],
-- Seed [int]
function mod:myMod(entityType, variant, subtype, _, __, ___, seed)
    -- if entityType == EntityType.ENTITY_POKY and variant == 1 then
       -- return { EntityType.ENTITY_FIREPLACE, 0, 0, seed }
    -- end

    return { entityType, variant, subtype, seed }
end

mod:AddCallback(ModCallbacks.MC_PRE_ENTITY_SPAWN, mod.myMod)