function gameScreen()
	love.mouse.setVisible(false)

	love.graphics.setColor(0, 255, 255, 255)
	love.graphics.circle("fill", person.x, person.y, person.radius)

	love.graphics.setColor(255, 255, 0, 255)
	for i,v in ipairs(badies) do 
		love.graphics.circle("fill", v.x, v.y, v.radius)
	end

	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.print(time, 25, 25, 0, .3)
end