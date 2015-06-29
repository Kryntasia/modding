function init()
	entity.setInteractive(true)
	t = {
	"liquidwater", 
	"liquidlava", 
	"liquidpoison",
	"liquidalienjuice",
	"liquidoil",
	"liquidhealing",
	"liquidmilk",
	"liquidlava",
	"liquidcoffee",
	"liquidwater",
	"liquidfuel",
	"swampwater",
	"liquidoil"}
	isActive = nil
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
	local liquid = t
	local sample = world.liquidAt(entity.position())

	if entity.isInboundNodeConnected(0) and isActive and sample[1] == 1 then
 	 	world.containerAddItems(entity.id(), liquid[1])
 	 	world.destroyLiquid(entity.position())
 	 elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 2 then
 	  	world.containerAddItems(entity.id(), liquid[2])
 	  	world.destroyLiquid(entity.position())	  	
 	elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 3 then
 	  	world.containerAddItems(entity.id(), liquid[3])
 	  	world.destroyLiquid(entity.position())
 	elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 4 then
 	  	world.containerAddItems(entity.id(), liquid[4])
 	  	world.destroyLiquid(entity.position())
 	elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 5 then
 	  	world.containerAddItems(entity.id(), liquid[5])
 	  	world.destroyLiquid(entity.position())
	elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 6 then
 	  	world.containerAddItems(entity.id(), liquid[6])
 	  	world.destroyLiquid(entity.position())
 	 elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 7 then
 	  	world.containerAddItems(entity.id(), liquid[7])
 	  	world.destroyLiquid(entity.position())
 	  elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 8 then
 	  	world.containerAddItems(entity.id(), liquid[8])
 	  	world.destroyLiquid(entity.position())
 	  elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 9 then
 	  	world.containerAddItems(entity.id(), liquid[9])
 	  	world.destroyLiquid(entity.position())
 	  elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 10 then
 	  	world.containerAddItems(entity.id(), liquid[10])
 	  	world.destroyLiquid(entity.position())
 	  elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 11 then
 	  	world.containerAddItems(entity.id(), liquid[11])
 	  	world.destroyLiquid(entity.position())
 	  elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 12 then
 	  	world.containerAddItems(entity.id(), liquid[12])
 	  	world.destroyLiquid(entity.position())
 	  elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == 13 then
 	  	world.containerAddItems(entity.id(), liquid[13])
 	  	world.destroyLiquid(entity.position())
 	  elseif entity.isInboundNodeConnected(0) and isActive and sample[1] == nil then
 	  	world.containerAddItems(entity.id(), "perfectlygenericitem")
 	  	world.destroyLiquid(entity.position())
 	  end

end