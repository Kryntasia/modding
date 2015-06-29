function init(args)
  entity.setAllOutboundNodes(entity.animationState("switchState") == "on")
  entity.setAnimationState("switchState", "on")
  self.countdown = 10
  self.setter = false
  
end

function update(dt)

	--local npcIds = world.npcQuery(entity.position(), 6);
		local pcIds = world.playerQuery(entity.position(), 10);
		local monsterIds = world.monsterQuery(entity.position(), 6);		

		if (#pcIds) > 0 then
		entity.setAnimationState("switchState", "off")
		else
		entity.setAnimationState("switchState", "on")		
		end

	  if entity.animationState("switchState") == "on" then
		if (#monsterIds) > 0 then
			entity.setAllOutboundNodes(true)
			world.spawnProjectile("proximitybombsafeproj", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), { 0, 5 }, false, {})
			entity.smash()
		end
	   end

	if self.setter == false then
	  if self.countdown >= 0 then
		self.countdown = self.countdown - 1
	  else
		 entity.setAnimationState("switchState", "on")
		 self.setter=true
	  end
	end
	end
	