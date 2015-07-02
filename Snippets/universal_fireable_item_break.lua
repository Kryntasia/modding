function init()
    maxDurability = item.instanceValue("durability")
end

function uninit()
    if maxDurability then
        local durabilityHit = item.descriptor().parameters.durabilityHit or 0
        if durabilityHit >= maxDurability then
            world.spawnItem(item.instanceValue("dropItem") or "money", item.ownerPosition(), item.instanceValue("dropAmount") or 1, item.instanceValue("dropParameters"))
            --world.logInfo("Broken! with %s hits", durabilityHit)
        end
    end
end

-- Credit for this one goes to Wellbot.
