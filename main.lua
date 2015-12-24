function love.load()
	hamster = love.graphics.newImage("image/hamster.png")
	width = hamster:getWidth()
	height = hamster:getHeight()
end

function love.draw()
	love.graphics.draw(
		hamster,
		100, 100,
		math.rad(90),
		1, 1,
		width / 2, height / 2
	)
end