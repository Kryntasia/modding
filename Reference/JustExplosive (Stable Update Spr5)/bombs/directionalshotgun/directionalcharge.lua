
function update(dt)
	if self.timeractive == false then
    return false
  end
  
   if not self.initialized and not args then
  self.anchor = entity.configParameter("anchors")[1]
   if self.anchor == "bottom" then
        self.aimA= {1,0}
		self.aimB= {-0.707,0.707}
		self.aimC= {0,1}
		self.aimD= {0.707,0.707}
		self.aimE= {-1,0}
    elseif self.anchor == "top" then
        self.aimA= {1,0}
		self.aimB= {-0.707,0.707}
		self.aimC= {0,-1}
		self.aimD= {0.707,0.707}
		self.aimE= {-1,0} 
     elseif self.anchor == "right" then
        self.aimA= {0,1}
		self.aimB= {0.707,0.707}
		self.aimC= {-1,0}
		self.aimD= {0.707,-0.707}  
		self.aimE= {0,-1}       
    elseif self.anchor == "left" then
        self.aimA= {0,1}
		self.aimB= {-0.707,0.707}
		self.aimC= {1,0}
		self.aimD= {-0.707,-0.707}
		self.aimE= {0,-1}   		
   end
  end
  
  self.aim = {self.cos,self.sin}
 

     world.spawnProjectile("firework1a", entity.toAbsolutePosition({ 0.2, 1 }), entity.id(), self.aim, false, {})
	  entity.smash()
	self.timeractive = false
	self.countdown = 20
  end
end
