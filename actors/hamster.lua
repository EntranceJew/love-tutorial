local hamster = {}

function hamster:init(x,y)
	-- init vars
	self.x = x
	self.y = y
	
	-- graphics
	self.image = love.graphics.newImage("image/hamster.png")
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

function hamster:keypressed(key, scancode, isrepeat)
	if key == "w" then
		self.y = self.y - self.movespeed
	elseif key == "s" then 
		self.y = self.y + self.movespeed
	end
	
	if key == "a" then
		self.x = self.x - self.movespeed
	elseif key == "d" then 
		self.x = self.x + self.movespeed
	end
	
	if key == "space" then
		self.sound:play()
		self.r = self.r - math.rad(10)
	end
end

function hamster:keyreleased(key, scancode)
	-- don't care
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