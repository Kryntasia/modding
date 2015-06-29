function die()
  
  world.spawnProjectile("lavabarrelproj", entity.toAbsolutePosition({ 0, 0 }), entity.id(), { 8, -8 }, true, {})
 entity.smash()
end