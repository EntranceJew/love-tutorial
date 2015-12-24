function love.load()
	hamster = require("hamster")
	hamster:init(100,100)
end

function love.draw()
	hamster:draw()
end

function love.keypressed(key, scancode, isrepeat)
	hamster:keypressed(key, scancode, isrepeat)
end

function love.keyreleased(key, scancode)
	hamster:keyreleased(key, scancode)
end