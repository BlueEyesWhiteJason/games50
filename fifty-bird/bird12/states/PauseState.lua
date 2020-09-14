PauseState = Class{__includes = BaseState}

function PauseState:init()
    -- nothing
    --local symbol = love.graphics.newImage('pause-xxl.png')




end

function PauseState:enter(params)
    
    self.params = params

end

function PauseState:render()
    love.graphics.draw(love.graphics.newImage('pause-xxl.png'))

end

function PauseState:update(dt)

     if love.keyboard.wasPressed('p') or love.keyboard.wasPressed('space') then
        gStateMachine:change('play', self.params) 
    end
    

end
