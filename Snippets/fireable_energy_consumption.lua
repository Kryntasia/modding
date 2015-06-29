function update(dt)
	if fireableItem.ownerFullEnergy() then
  		return fireableItem.setCooldown(0)
  	end
end


function fireTriggered()
	 if fireableItem.ownerEnergy() == true then
		fireableItem.ownerConsumeEnergy(fireableItem.fireableParam("energyOnUse"))
 	 else
		fireableItem.setCooldown(fireableItem.fireableParam("setCooldown"))
	end
end