function init()
	entity.setInteractive(true)
end

function onNodeConnectionChange(args)
  if entity.isInboundNodeConnected(0) then
    onInboundNodeChange({ level = entity.getInboundNodeLevel(0) })
  end
end

function onInboundNodeChange(args)
  if args.level then
  	isActive = true
  else
  	isActive = false
  end
end

function update(dt)
	local liquid = world.containerItemAt(entity.id(), 0)
	local meow = entity.position()
 	if isActive and liquid == liquidwater then
 	--world.spawnLiquid(meow, liquid[1], 1)
 	--world.logInfo(tostring(liquid[1]))
 	--world.logInfo(tostring(entity.position()))
 	world.logInfo(tostring(1))
 	elseif isActive and liquid == liquidpoison then
 		world.logInfo("2")
	end
end