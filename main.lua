function love.load()
	hamster = require("actors.hamster")
	hamster:init(100,100)
	
	enemy = require("actors.enemy")
	enemy:init(300, 300)
end

function love.update(dt)
	enemy:update(dt)
end

function love.keypressed(key, scancode, isrepeat)
	hamster:keypressed(key, scancode, isrepeat)
end

function love.keyreleased(key, scancode)
	hamster:keyreleased(key, scancode)
end

function love.draw()
	hamster:draw()
	enemy:draw()
end