function init(args)
  entity.setAllOutboundNodes(false)
end

function onInboundNodeChange(args)
	 world.spawnProjectile("wiredproj", entity.toAbsolutePosition({ 1, 1}), entity.id(), { 0, 0 }, false, {})
	entity.smash()
end
