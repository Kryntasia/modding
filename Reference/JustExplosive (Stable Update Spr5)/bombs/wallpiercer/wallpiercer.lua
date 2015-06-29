function init(args)
  entity.setInteractive(true)
  entity.setAllOutboundNodes(false)
  
  self.timeractive = false
   self.sparks = false
  self.countdown = 20
end

function onInboundNodeChange(args)
	self.timeractive = true    
end

function onInteraction(args)
	self.timeractive = true     
	
end

function die()
  if self.timeractive == true then
     world.spawnProjectile("adhesiveproj", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), { 0, 5 }, false, {})
	  entity.smash()
  end
end

function update(dt)
	if self.timeractive == false then
    return false
  end
  
  
  if self.countdown > 0 then
    self.countdown = self.countdown - 1
	if self.sparks == false then
	entity.setAllOutboundNodes(true)
	 world.spawnProjectile("adhesivespark", entity.toAbsolutePosition({ 1, 1}), entity.id(), { 0, 0 }, false, {})
	self.sparks = true
	end
  else
	 if not self.initialized and not args then
  self.anchor = entity.configParameter("anchors")[1]
   if self.anchor == "bottom" then
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, -1 }), entity.id(), { 0, 1 }, false, {})
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, -2 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, -4 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, -6}), entity.id(), { 0, 1 }, false, {})
    entity.smash()
    elseif self.anchor == "top" then
	world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, 1 }), entity.id(), { 0, 1 }, false, {})	
	world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, 2 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, 4 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 0, 6}), entity.id(), { 0, 1 }, false, {})
    entity.smash()
     elseif self.anchor == "right" then
	 world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 1, 0 }), entity.id(), { 0, 1 }, false, {})	
	  world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 2, 0 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 4, 0 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ 6, 0}), entity.id(), { 0, 1 }, false, {})
    entity.smash()
    elseif self.anchor == "left" then	 
	  world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ -1, 0 }), entity.id(), { 0, 1 }, false, {})	
	  world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ -2, 0 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ -4, 0 }), entity.id(), { 0, 1 }, false, {})	
    world.spawnProjectile("wallpiercerproj", entity.toAbsolutePosition({ -6, 0}), entity.id(), { 0, 1 }, false, {})
    entity.smash()
   end
  end
	--  entity.smash()
	self.timeractive = false
	self.countdown = 20
  end
end
