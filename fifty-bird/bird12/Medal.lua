Medal = Class{}

function Medal:init(score)
    if score < 1 then
        self.image = love.graphics.newImage('bad.jpeg')
    elseif score == 1 then
        self.image = love.graphics.newImage('bronze.jpeg')
    elseif score == 2 then
        self.image = love.graphics.newImage('silver.jpeg')
    elseif score > 2 then
        self.image = love.graphics.newImage('gold.jpeg')

    self.x = VIRTUAL_WIDTH / 2 
    self.y = VIRTUAL_HEIGHT / 2 
    end
end

function Medal:render()
    love.graphics.draw(self.image, self.x, self.y, 0, .25, .25)
end