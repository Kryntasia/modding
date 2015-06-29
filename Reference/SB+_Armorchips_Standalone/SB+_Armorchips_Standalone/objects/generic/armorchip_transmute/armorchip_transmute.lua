local recipes =
{
--  inputs = {{item = "lolitem",amount = 3}, {item = "lolitem2", amount = 4}}   go like that if you want multiples

-- Tier 1 Flat
{inputs = {"armor_t1", "energy_t1", "health_t1" }, outputs = { "full_tier1" }, time = 1},
-- Tier 1 Up
{inputs = {"armor_t1", "energy_t1", "health_t2" }, outputs = { "full_tier1" }, time = 1},
{inputs = {"armor_t1", "energy_t2", "health_t1" }, outputs = { "full_tier1" }, time = 1},
{inputs = {"armor_t2", "energy_t1", "health_t1" }, outputs = { "full_tier1" }, time = 1},
-- Tier 2 Down
{inputs = {"armor_t2", "energy_t2", "health_t1" }, outputs = { "full_tier2" }, time = 1},
{inputs = {"armor_t2", "energy_t1", "health_t2" }, outputs = { "full_tier2" }, time = 1},
{inputs = {"armor_t1", "energy_t2", "health_t2" }, outputs = { "full_tier2" }, time = 1},
-- Tier 2 Flat
{inputs = {"armor_t2", "energy_t2", "health_t2" }, outputs = { "full_tier2" }, time = 1},
-- Tier 2 Up
{inputs = {"armor_t3", "energy_t2", "health_t2" }, outputs = { "full_tier2" }, time = 1},
{inputs = {"armor_t2", "energy_t3", "health_t2" }, outputs = { "full_tier2" }, time = 1},
{inputs = {"armor_t2", "energy_t2", "health_t3" }, outputs = { "full_tier2" }, time = 1},
-- Tier 3 Down
{inputs = {"armor_t3", "energy_t3", "health_t2" }, outputs = { "full_tier3" }, time = 1},
{inputs = {"armor_t3", "energy_t2", "health_t3" }, outputs = { "full_tier3" }, time = 1},
{inputs = {"armor_t2", "energy_t3", "health_t3" }, outputs = { "full_tier3" }, time = 1},
-- Tier 3 Flat
{inputs = {"armor_t3", "energy_t3", "health_t3" }, outputs = { "full_tier3" }, time = 1},
-- Tier 3 Up
{inputs = {"armor_t3", "energy_t3", "health_t4" }, outputs = { "full_tier3" }, time = 1},
{inputs = {"armor_t3", "energy_t4", "health_t3" }, outputs = { "full_tier3" }, time = 1},
{inputs = {"armor_t4", "energy_t3", "health_t3" }, outputs = { "full_tier3" }, time = 1},
-- Tier 4 Down
{inputs = {"armor_t4", "energy_t4", "health_t3" }, outputs = { "full_tier4" }, time = 1},
{inputs = {"armor_t4", "energy_t3", "health_t4" }, outputs = { "full_tier4" }, time = 1},
{inputs = {"armor_t3", "energy_t4", "health_t4" }, outputs = { "full_tier4" }, time = 1},
-- Tier 4 Flat
{inputs = {"armor_t4", "energy_t4", "health_t4" }, outputs = { "full_tier4" }, time = 1},
-- Tier 4 Up
{inputs = {"armor_t4", "energy_t4", "health_t5" }, outputs = { "full_tier4" }, time = 1},
{inputs = {"armor_t4", "energy_t5", "health_t4" }, outputs = { "full_tier4" }, time = 1},
{inputs = {"armor_t5", "energy_t4", "health_t4" }, outputs = { "full_tier4" }, time = 1},
-- Tier 5 Down
{inputs = {"armor_t5", "energy_t5", "health_t4" }, outputs = { "full_tier5" }, time = 1},
{inputs = {"armor_t5", "energy_t4", "health_t5" }, outputs = { "full_tier5" }, time = 1},
{inputs = {"armor_t4", "energy_t5", "health_t5" }, outputs = { "full_tier5" }, time = 1},
-- Tier 5 Flat
{inputs = {"armor_t5", "energy_t5", "health_t5" }, outputs = { "full_tier5" }, time = 1},
-- Tier 5 Up
{inputs = {"armor_t5", "energy_t5", "health_t6" }, outputs = { "full_tier5" }, time = 1},
{inputs = {"armor_t5", "energy_t6", "health_t5" }, outputs = { "full_tier5" }, time = 1},
{inputs = {"armor_t6", "energy_t5", "health_t5" }, outputs = { "full_tier5" }, time = 1},
-- Tier 6 Down
{inputs = {"armor_t6", "energy_t6", "health_t5" }, outputs = { "full_tier6" }, time = 1},
{inputs = {"armor_t6", "energy_t5", "health_t6" }, outputs = { "full_tier6" }, time = 1},
{inputs = {"armor_t5", "energy_t6", "health_t6" }, outputs = { "full_tier6" }, time = 1},
-- Tier 6 Flat
{inputs = {"armor_t6", "energy_t6", "health_t6" }, outputs = { "full_tier6" }, time = 1},
-- Tier 6 Up
{inputs = {"armor_t6", "energy_t6", "health_t7" }, outputs = { "full_tier6" }, time = 1},
{inputs = {"armor_t6", "energy_t7", "health_t6" }, outputs = { "full_tier6" }, time = 1},
{inputs = {"armor_t7", "energy_t6", "health_t6" }, outputs = { "full_tier6" }, time = 1},
-- Tier 7 Down
{inputs = {"armor_t7", "energy_t7", "health_t6" }, outputs = { "full_tier7" }, time = 1},
{inputs = {"armor_t7", "energy_t6", "health_t7" }, outputs = { "full_tier7" }, time = 1},
{inputs = {"armor_t6", "energy_t7", "health_t7" }, outputs = { "full_tier7" }, time = 1},
-- Tier 7 Flat
{inputs = {"armor_t7", "energy_t7", "health_t7" }, outputs = { "full_tier7" }, time = 1},
-- Tier 7 Up
{inputs = {"armor_t7", "energy_t7", "health_t8" }, outputs = { "full_tier7" }, time = 1},
{inputs = {"armor_t7", "energy_t8", "health_t7" }, outputs = { "full_tier7" }, time = 1},
{inputs = {"armor_t8", "energy_t7", "health_t7" }, outputs = { "full_tier7" }, time = 1},
-- Tier 8 Down
{inputs = {"armor_t8", "energy_t8", "health_t7" }, outputs = { "full_tier8" }, time = 1},
{inputs = {"armor_t8", "energy_t7", "health_t8" }, outputs = { "full_tier8" }, time = 1},
{inputs = {"armor_t7", "energy_t8", "health_t8" }, outputs = { "full_tier8" }, time = 1},
-- Tier 8 Flat
{inputs = {"armor_t8", "energy_t8", "health_t8" }, outputs = { "full_tier8" }, time = 1},
-- Tier 8 Up
{inputs = {"armor_t8", "energy_t8", "health_t9" }, outputs = { "full_tier8" }, time = 1},
{inputs = {"armor_t8", "energy_t9", "health_t8" }, outputs = { "full_tier8" }, time = 1},
{inputs = {"armor_t9", "energy_t8", "health_t8" }, outputs = { "full_tier8" }, time = 1},
-- Tier 9 Down
{inputs = {"armor_t9", "energy_t9", "health_t8" }, outputs = { "full_tier9" }, time = 1},
{inputs = {"armor_t9", "energy_t8", "health_t9" }, outputs = { "full_tier9" }, time = 1},
{inputs = {"armor_t8", "energy_t9", "health_t9" }, outputs = { "full_tier9" }, time = 1},
-- Tier 9 Flat
{inputs = {"armor_t9", "energy_t9", "health_t9" }, outputs = { "full_tier9" }, time = 1},
-- Tier 9 Up
{inputs = {"armor_t9", "energy_t9", "health_t10" }, outputs = { "full_tier9" }, time = 1},
{inputs = {"armor_t9", "energy_t10", "health_t9" }, outputs = { "full_tier9" }, time = 1},
{inputs = {"armor_t10", "energy_t9", "health_t9" }, outputs = { "full_tier9" }, time = 1},
-- Tier 10 Down
{inputs = {"armor_t10", "energy_t10", "health_t9" }, outputs = { "full_tier10" }, time = 1},
{inputs = {"armor_t10", "energy_t9", "health_t10" }, outputs = { "full_tier10" }, time = 1},
{inputs = {"armor_t9", "energy_t10", "health_t10" }, outputs = { "full_tier10" }, time = 1},
-- Tier 10 Flat
{inputs = {"armor_t10", "energy_t10", "health_t10" }, outputs = { "full_tier10" }, time = 1}

}

function init(args)
    self.timer = 0
    self.recipe = nil
    self.crafting = false
end

function hasValidRecipe()
    local id = entity.id()
    local contents = world.containerItems(entity.id())

    for _, recipe in pairs(recipes) do
        local hasRecipe = true
        for id, item in pairs(recipe.inputs) do
            local found = false
            for i, inv in pairs(contents) do
                if item == inv.name then
                    found = true
                    break -- Break the item search loop
                end
            end
           
            if not found then
                hasRecipe = false
                break -- Break loop for current recipe
            end
        end
       
        -- Do we have the match?
        if hasRecipe then
            return true, recipe
        end
    end
   
    return false, nil
end

-- Adds in/Removes the items. If you added the amount param to tables, be sure to update it here.
function generateRecipe()
    local recipe = self.recipe
    local entID = entity.id()
   
    -- Add the output items
    for k, item in pairs(recipe.outputs) do
        local itemsRemaining = world.containerAddItems(entID, { name= item, count = 1, data={}})

        if itemsRemaining then
            world.spawnItem(itemsRemaining.item, entity.position(), itemsRemaining.amount)
        end
    end
	
	   -- Remove the input items
    for k, v in pairs(recipe.inputs) do
        if not world.containerConsume(entID, {item = v , count = 1}) then
            return 
        end
    end
end

function update(dt)
    -- Are we already crafting?
    if not self.crafting then
        -- No? Check recipes.
        local hasRecipe, recipe = hasValidRecipe()
        if hasRecipe then
            self.recipe = recipe
             self.crafting = true
        end
    else
        -- Yes? Run timer.
        self.timer = self.timer + dt -- Make it work with actual SECONDS
        if self.timer >= self.recipe.time then
            generateRecipe() -- Take the recipe requirements and Generate the results
            self.crafting = false
            self.timer = 1
        end
    end
end
