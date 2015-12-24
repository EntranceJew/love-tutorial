function love.load()
	hamster = require("hamster")
	hamster:init(100,100)
end

function love.draw()
	hamster:draw()
end