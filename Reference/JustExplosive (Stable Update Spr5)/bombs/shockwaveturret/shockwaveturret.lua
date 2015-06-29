function init(args)
  entity.setInteractive(true)
  entity.setAllOutboundNodes(false)
  self.timeractive = false
  self.countdown = 10
  self.sparks = false  
self.switch= false
self.active= false
   

		if entity.animationState("switchState") == "l" then
			entity.setAnimationState("switchState", "l")
			self.aim = {-1,0}
		elseif entity.animationState("switchState") == "ul" then
			entity.setAnimationState("switchState", "ul")
			self.aim = {-0.707,0.707}
		elseif entity.animationState("switchState") == "u" then
			entity.setAnimationState("switchState", "u")
			self.aim = {0,1}
		elseif entity.animationState("switchState") == "ur" then
			entity.setAnimationState("switchState", "ur")
			self.aim = {0.707,0.707}
		elseif entity.animationState("switchState") == "r" then
			entity.setAnimationState("switchState", "r")
			self.aim = {1,0}
		elseif entity.animationState("switchState") == "dr" then
			entity.setAnimationState("switchState", "dr")
			self.aim = {0.707,-0.707}
		elseif entity.animationState("switchState") == "d" then
			entity.setAnimationState("switchState", "d")
			self.aim = {0,-1}	
		elseif entity.animationState("switchState") == "dl" then
			entity.setAnimationState("switchState", "dl")	
			self.aim = {-0.707,-0.707}
		elseif entity.animationState("switchState") == "off" then
			entity.setAnimationState("switchState", "off")	
			self.aim = {0,1}
		end  
 
end

function onInboundNodeChange(args)
if self.active == true then
	self.active = false
else
	self.active = true
end

 if entity.animationState("switchState") == "off" then
 else   
  self.timeractive = true
end
end

function onInteraction(args)	 
		if entity.animationState("switchState") == "off" then
			entity.setAnimationState("switchState", "l")
			self.aim = {-1,0}
		elseif entity.animationState("switchState") == "l" then
			entity.setAnimationState("switchState", "ul")
			self.aim = {-0.707,0.707}
		elseif entity.animationState("switchState") == "ul" then
			entity.setAnimationState("switchState", "u")
			self.aim = {0,1}
		elseif entity.animationState("switchState") == "u" then
			entity.setAnimationState("switchState", "ur")
			self.aim = {0.707,0.707}
		elseif entity.animationState("switchState") == "ur" then
			entity.setAnimationState("switchState", "r")
			self.aim = {1,0}
		elseif entity.animationState("switchState") == "r" then
			entity.setAnimationState("switchState", "dr")
			self.aim = {0.707,-0.707}
		elseif entity.animationState("switchState") == "dr" then
			entity.setAnimationState("switchState", "d")
			self.aim = {0,-1}	
		elseif entity.animationState("switchState") == "d" then
			entity.setAnimationState("switchState", "dl")	
			self.aim = {-0.707,-0.707}
		elseif entity.animationState("switchState") == "dl" then
			entity.setAnimationState("switchState", "off")	
			self.aim = {0,1}
		end
end


function update(dt)
if self.active == true then
	if self.timeractive == true then  
	  if self.countdown > 0 then
		self.countdown = self.countdown - 1	
		if entity.animationState("switchState") == "off" then
		else   
		  if self.switch ==false then
			  world.spawnProjectile("directionalbombsonicproj", entity.toAbsolutePosition({ 1, 1 }), entity.id(), self.aim, true, {})
			  self.switch = true
		  end
		 end
	  else
		  self.switch = false  
		  self.countdown = 10
		  end
	  end
	end
end