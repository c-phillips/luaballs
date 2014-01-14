function calculate_badies(dt)
	for i, v in ipairs(badies) do
		if (v.direction == 1) then
			v.y = v.y + v.speed*dt
		elseif (v.direction == 2) then
			v.y = v.y - v.speed*dt 
		elseif (v.direction == 3) then
			v.x = v.x + v.speed*dt
		elseif (v.direction == 4) then
			v.x = v.x - v.speed *dt
		end
		
		if (v.x+v.radius) < 0 then 
			v.x = WINDOW_WIDTH - v.radius
		end
		if(v.x-v.radius) > WINDOW_WIDTH then
			v.x = 0-v.radius
		end
		if(v.y+v.radius) < 0 then
			v.y = WINDOW_HEIGHT - v.radius
		end
		if(v.y-v.radius) > WINDOW_HEIGHT then
			v.y = 0-v.radius
		end

		if radialCollision(v, person) then
			game_state = "over"
		end
	end
end