function compareHighScore(time)
	local f = assert(io.open("lua/highscore.txt"))
	local highscore = f:read("*n")
	f:close()
	if time > highscore then 
		local f = assert(io.open("lua/highscore.txt", "w"))
		local highscore = f:write(time)
		f:close()
		return true
	else return false end
end

function radialCollision(v, person)
	local d = math.sqrt((v.x - person.x)^2 + (v.y - person.y)^2)
	return d <= v.radius + person.radius
end

function timer(start_time)
	now = os.time()
	timeSinceStart = os.difftime(now - start_time)
	return timeSinceStart
end

function add_badies(time)
	if (time - interval) >= 1 then
		interval = time
		local number = math.random(1,10) % math.random(1,3)
		generateBadness(number)
	end	
end

function clear_badness()
	badies = {}
end

function reset_game(state)
	love.graphics.clear()
	game_state = state
	clear_badness()
	generateBadness(default_badies)
	round_start_time = os.time()
	interval = 0
	time = 0
	person.x = WINDOW_WIDTH/2-person.radius
	person.y = WINDOW_HEIGHT/2-person.radius
	highscoreScene = false
	love.mouse.setPosition(WINDOW_WIDTH/2, WINDOW_HEIGHT/2)
end

function isClicking(button)
	if love.mouse.getX() > button.x and love.mouse.getX() < (button.x+button.w) then 
		if love.mouse.getY() > button.y and love.mouse.getY() < (button.y+button.h) then 
			if love.mouse.isDown("l") then 
				return true
			end
		end
	end
end
function isHovering(button)
	if love.mouse.getX() > button.x and love.mouse.getX() < (button.x+button.w) then 
		if love.mouse.getY() > button.y and love.mouse.getY() < (button.y+button.h) then 
			return true
		end
	end
end
