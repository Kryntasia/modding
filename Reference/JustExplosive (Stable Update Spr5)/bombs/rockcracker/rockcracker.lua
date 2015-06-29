function init(args)
  entity.setInteractive(true)
  entity.setAllOutboundNodes(entity.animationState("switchState") == "on")
  
  self.timeractive = false
  self.countdown = 10
end

function onInboundNodeChange(args)
    entity.setAnimationState("switchState", "on")
end


function onInteraction(args)	
    entity.setAnimationState("switchState", "on")
end

function update(dt)
  if entity.animationState("switchState") == "on" then
	self.timeractive = true     
    end
	
	if self.timeractive == false then
    return false
  end

  if self.countdown > 0 then
    self.countdown = self.countdown - 1
  else
     world.spawnProjectile("rockcrackerproj", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), { 0, 5 }, false, {})
	 world.spawnProjectile("rockcrackerproj", entity.toAbsolutePosition({ 0.2, -3 }), entity.id(), { 0, 5 }, false, {})
	 world.spawnProjectile("rockcrackerproj", entity.toAbsolutePosition({ 0.2, -6 }), entity.id(), { 0, 5 }, false, {})
	 world.spawnProjectile("rockcrackerproj", entity.toAbsolutePosition({ 0.2, -9 }), entity.id(), { 0, 5 }, false, {})
	 world.spawnProjectile("rockcrackerproj", entity.toAbsolutePosition({ 0.2, -12 }), entity.id(), { 0, 5 }, false, {})
	   entity.setAnimationState("switchState", "off")
	  entity.smash()
  end
end