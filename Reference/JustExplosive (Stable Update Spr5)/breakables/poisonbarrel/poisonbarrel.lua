function die()
  
  world.spawnProjectile("poisonbarrelproj", entity.toAbsolutePosition({ 0, 0 }), entity.id(), { 8, -8 }, true, {})
 entity.smash()
end