function init()

	shieldHealth = 0
	shieldMax = 100
	cdCheck = 0
	maxCheck = 10
end

function update()
	if shieldHealth <= 0 then
		cooldown()
	end
	if cooldown >= 0 or regen == false then
	return
	if shieldHealth ~= shieldMax then
		cooldownCheck()
	end

end

function cooldown()
	if cooldown >= 0 then
		cooldown = cooldown - dt
	else
		regeneration()
	end
end

function regeneration()
	if not regen then
		regen = true
	end
	if cooldown >= 0 then
		cooldown()
	elseif shieldHealth ~= shieldMax then
		while shieldHealth ~= shieldMax do
			shieldHealth = shieldHealth + shieldRegen
		end
	end
	regen = false
end

function cooldownCheck()
	while shieldHealth ~= shieldMax do
		cdCheck = cdCheck + 1
	end
	if cdCheck == maxCheck then
		cooldown()
	end
end
	

--[[
* Set init shield health to 0
* Check for shielhealth in update loop
* If shieldhealth 0 then apply cooldown
* Check for cooldown in update loop
* If cooldown over skip to regeneration
* Check for regeneration finish in the update loop
* If regeneration finish (aka shield 100%) and no cooldown, execute update loop
* In update loop, check if shield has been depleted (a bit)
* If shield scratched, check for cooldown and apply regeneration
* If shield fully depleted, immediately apply  cooldown-penalty and apply regeneration
]]--