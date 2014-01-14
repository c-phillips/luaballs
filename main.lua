require 'lua/generateBadness'
require 'lua/input'
require 'lua/playerBounding'
require 'lua/calculateBadies'
require 'lua/generalFunctions'
require 'lua/whoKnowsScreen'
require 'lua/initialization'
require 'lua/screens'

function love.load()
	init()
end

function love.update(dt)
	if game_state == "title" then 
		titleState()
	end

	if game_state == "menu" then 
		menuState()
	end

	if game_state == "good" then
		time = timer(round_start_time)

		checkForInput(dt)

		bounding_the_player()

		calculate_badies(dt)

		add_badies(time)
	end

	if game_state == "over" then
		endState()
	end

end

function love.draw()
	if game_state == "title" then 
		titleScreen()
	end
	if game_state == "menu" then 
		menuScreen()
	end
	if game_state == "good" then 
		gameScreen()
	end
	if game_state == "over" then
		endScreen()
 	end
	if not(game_state == "over" or "good" or "title" or "menu") then 
		whoKnowsScreen()
	end
end
