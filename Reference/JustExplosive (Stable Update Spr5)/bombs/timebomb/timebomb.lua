function init(args)
  entity.setInteractive(true)
  entity.setAllOutboundNodes(entity.animationState("switchState") == "on")
  
  self.timeractive = false
  self.countdown = 100
end

function onInboundNodeChange(args)
	if entity.animationState("switchState") == "off" then
    entity.setAnimationState("switchState", "on")
  else
    entity.setAnimationState("switchState", "off")
	self.timeractive = false
	self.countdown = 100
  end	
end


function onInteraction(args)	
if entity.animationState("switchState") == "off" then
    entity.setAnimationState("switchState", "on")
  else
    entity.setAnimationState("switchState", "off")
	self.timeractive = false
	self.countdown = 100
  end	
end

function update(dt)
  if entity.animationState("switchState") == "on" then
	self.timeractive = true     
    end
	
	if self.timeractive == false then
    return false
  end
  
   if self.countdown < 2 then
	entity.setAllOutboundNodes(true)
   end

  if self.countdown > 0 then
    self.countdown = self.countdown - 1
  else
     world.spawnProjectile("timebombproj", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), { 0, 5 }, false, {})
	   entity.setAnimationState("switchState", "off")
	  entity.smash()
  end
end

function die()  
 if entity.animationState("switchState") == "on" then
	   world.spawnProjectile("timebombproj", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), { 0, 5 }, false, {})
	    entity.smash()
    end 
end