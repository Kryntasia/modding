function init(args)
  entity.setInteractive(true)
  entity.setAllOutboundNodes(entity.animationState("switchState") == "on")
  
end

function die()  
 if entity.animationState("switchState") == "on" then
	   world.spawnProjectile("adhesiveproj", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), { 0, 5 }, false, {})
	    entity.smash()
    end 
end

function onInteraction(args)

if entity.animationState("switchState") == "off" then
    entity.setAnimationState("switchState", "on")
  else
    entity.setAnimationState("switchState", "off")
end
end

function update(dt)	
	--local npcIds = world.npcQuery(entity.position(), 6);
	local pcIds = world.playerQuery(entity.position(), 30);
	--local monsterIds = world.monsterQuery(entity.position(), 6);

  if entity.animationState("switchState") == "on" then
	if (#pcIds) > 0 then
     
    else
		entity.setAllOutboundNodes(true)
		world.spawnProjectile("adhesiveproj", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), { 0, 5 }, false, {})
		entity.smash()
    end
    end
end
