local hamster = {}

function hamster:init(x,y)
	self.x = x
	self.y = y
	
	self.image = love.graphics.newImage("image/hamster.png")
	self.width = self.image:getWidth()
	self.height = self.image:getHeight()
	
	self.r = math.rad(90)
	self.sx = 1
	self.sy = 1
	self.ox = self.width / 2
	self.oy = self.height / 2
end

function hamster:draw()
	love.graphics.draw(
		self.image,
		self.x, self.y,
		self.r,
		self.sx, self.sy,
		self.ox, self.oy
	)
end

return hamster