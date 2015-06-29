function init(args)
  if not args then
    self.activationTime = entity.configParameter("activationTime") or 600

    if storage.active == nil then activate() end
  end
end

function onInteraction(args)
  if storage.active then
      use(args)
  end
end

function update(dt)
  if isTimeToActivate() and not world.isVisibleToPlayer(entity.boundBox()) then
    activate()
  end
end

function isTimeToActivate()
  return storage.lastActive and world.time() - storage.lastActive > self.activationTime
end

function use(args)
  if storage.active then
    entity.playSound("use")

    deactivate()
    
    local projectile = entity.randomizeParameter("projectileOptions")
    
    world.spawnProjectile(projectile.projectileType, entity.position(), entity.id(), args.source, false, projectile.projectileParams)
  end
end

function activate()
  storage.active = true
  storage.lastActive = false
  entity.setInteractive(true)
end

function deactivate()
  storage.active = false
  storage.lastActive = world.time()
  entity.setInteractive(false)
end
