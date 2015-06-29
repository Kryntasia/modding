function init()
	entity.setInteractive(true)
end

function onInteraction()
	world.logInfo("Meow")
	local nyaa = 5
	local players = world.entityQuery({0,0}, 10000, { includedTypes = { "player" } })

	if nyaa >= math.abs(1) then
		world.logInfo("Bigger")
	elseif nyaa == math.abs(1) then
		world.logInfo("Equal")
		else world.logInfo("Smaller")
	end

	for _, id in pairs(players) do
  	world.logInfo(tostring(world.entityUuid(id)))
	end
end
function unInit()
end