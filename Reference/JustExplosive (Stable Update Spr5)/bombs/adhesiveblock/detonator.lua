function init(args)
  entity.setInteractive(true)
  entity.setAllOutboundNodes(entity.animationState("switchState") == "on")
  
  self.countdown = 20
  self.setter = false
  
end

function update(dt)
if self.setter == false then
  if self.countdown >= 0 then
    self.countdown = self.countdown - 1
  else
     entity.setAnimationState("switchState", "on")
	 self.setter=true
  end
end
end


function die()
if entity.animationState("switchState") == "on" then
  world.spawnProjectile("adhesiveblockproj", entity.toAbsolutePosition({ 0, 1 }), entity.id(), { 0, 5 }, true, {})  
  entity.smash()
 end
end

function onInboundNodeChange(args)   
   if entity.animationState("switchState") == "off" then
    entity.setAnimationState("switchState", "on")
	else
    entity.setAnimationState("switchState", "off")
  end	
   
end

function onInteraction(args)

if entity.animationState("switchState") == "off" then
    entity.setAnimationState("switchState", "on")
  else
    entity.setAnimationState("switchState", "off")
end
end