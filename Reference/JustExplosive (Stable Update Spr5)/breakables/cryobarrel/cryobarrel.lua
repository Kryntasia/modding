function die()
  
 -- world.spawnProjectile("boomerproj", entity.toAbsolutePosition({ 0.0, 5.0 }), entity.id(), { 0, 0}, false, {})
  world.spawnProjectile("cryobarrelproj", entity.toAbsolutePosition({ 0, 1 }), entity.id(), { 0, 5 }, true, {})  
  world.spawnProjectile("cryobarrelproj2", entity.toAbsolutePosition({ 0, 1 }), entity.id(), { 0, 5 }, true, {})
  world.spawnProjectile("cryobarrelproj2", entity.toAbsolutePosition({ 5, 1 }), entity.id(), { 0, 5 }, true, {})
  world.spawnProjectile("cryobarrelproj2", entity.toAbsolutePosition({ 7, 1 }), entity.id(), { 0, 5 }, true, {})
  world.spawnProjectile("cryobarrelproj2", entity.toAbsolutePosition({ -7, 1 }), entity.id(), { 0, 5 }, true, {})
  world.spawnProjectile("cryobarrelproj2", entity.toAbsolutePosition({ -5, 1 }), entity.id(), { 0, 5 }, true, {})
  entity.smash()
 
end