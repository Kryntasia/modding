function die()
  world.spawnProjectile("placedexplosiveproj", entity.toAbsolutePosition({ 0, 1 }), entity.id(), { 0, 5 }, true, {})  
  entity.smash()
end