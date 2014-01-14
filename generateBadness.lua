function generateBadness(x)
	for i = x,0,-1 do 
		bad = {}
		bad.x = math.random(0, WINDOW_WIDTH) -- WINDOW_WIDTH
		bad.y = math.random(0, WINDOW_HEIGHT) -- WINDOW_HEIGHT
		bad.speed = math.random(100, 200)
		bad.radius = 15
		bad.direction = math.random(1,4)
		if bad.direction == 1 then 
			bad.y = WINDOW_HEIGHT+bad.radius
		end
		if bad.direction == 2 then
			bad.y = 0-bad.radius
		end
		if bad.direction == 3 then 
			bad.x = WINDOW_WIDTH+bad.radius
		end
		if bad.direction == 4 then 
			bad.x = 0-bad.radius
		end
		table.insert(badies, bad)
	end
end