function die()
  
  world.spawnProjectile("waterbarrelproj", entity.toAbsolutePosition({ 0, 0 }), entity.id(), { 8, -8 }, true, {})
 entity.smash()
end