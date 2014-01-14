function checkForInput(dt)
	---- ARROWS ----
	if game_options.movement == "arrows" then
		if love.keyboard.isDown("left") then
			person.x = person.x - person.speed*dt 
		end
		if love.keyboard.isDown("right") then 
			person.x = person.x + person.speed*dt
		end
		if love.keyboard.isDown("up") then 
			person.y = person.y - person.speed*dt
		end
		if love.keyboard.isDown("down") then 
			person.y = person.y + person.speed*dt
		end
	end
	---- WASD ----
	if game_options.movement == "wasd" then
		if love.keyboard.isDown("a") then
			person.x = person.x - person.speed*dt 
		end
		if love.keyboard.isDown("d") then 
			person.x = person.x + person.speed*dt
		end
		if love.keyboard.isDown("w") then 
			person.y = person.y - person.speed*dt
		end
		if love.keyboard.isDown("s") then 
			person.y = person.y + person.speed*dt
		end
	end
	---- MOUSE ----
	if game_options.movement == "mouse" then 
		person.x = love.mouse.getX()
		person.y = love.mouse.getY()
	end
end