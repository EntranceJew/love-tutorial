local enemy = {}

function enemy:init(x,y)
	-- init vars
	self.x = x
	self.y = y
	
	-- graphics
	self.image = love.graphics.newImage("image/enemy.png")
	self.width = self.image:getWidth()
	self.height = self.image:getHeight()
	
	-- audio
	self.sound = love.audio.newSource("sound/ding.wav")
	
	-- graphics / location
	self.r = math.rad(90)
	self.sx = 1
	self.sy = 1
	self.ox = self.width / 2
	self.oy = self.height / 2
	
	-- character variables
	self.movespeed = 5
end

function enemy:draw()
	love.graphics.draw(
		self.image,
		self.x, self.y,
		self.r,
		self.sx, self.sy,
		self.ox, self.oy
	)
end

return enemy