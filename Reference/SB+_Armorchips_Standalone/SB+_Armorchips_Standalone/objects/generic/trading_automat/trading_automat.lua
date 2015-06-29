local recipes =
{
--  inputs = {{item = "lolitem",amount = 3}, {item = "lolitem2", amount = 4}}   go like that if you want multiples

-- Tier 1 Flat
{inputs = {"full_tier1" }, outputs = { "t1_head", "t1_chest", "t1_pants" }, time = 1},
{inputs = {"full_tier2" }, outputs = { "t2_head", "t2_chest", "t2_pants" }, time = 1},
{inputs = {"full_tier3" }, outputs = { "t3_head", "t3_chest", "t3_pants" }, time = 1},
{inputs = {"full_tier4" }, outputs = { "t4_head", "t4_chest", "t4_pants" }, time = 1},
{inputs = {"full_tier5" }, outputs = { "t5_head", "t5_chest", "t5_pants" }, time = 1},
{inputs = {"full_tier6" }, outputs = { "t6_head", "t6_chest", "t6_pants" }, time = 1},
{inputs = {"full_tier7" }, outputs = { "t7_head", "t7_chest", "t7_pants" }, time = 1},
{inputs = {"full_tier8" }, outputs = { "t8_head", "t8_chest", "t8_pants" }, time = 1},
{inputs = {"full_tier9" }, outputs = { "t9_head", "t9_chest", "t9_pants" }, time = 1},
{inputs = {"full_tier10" }, outputs = { "t10_head", "t10_chest", "t10_pants" }, time = 1}

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
