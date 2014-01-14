function endScreen()
	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.rectangle("fill", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)
	
	if highscoreScene == true then 
		love.graphics.setColor(255, 0, 0, 255)
		love.graphics.print("NEW HIGH SCORE!", WINDOW_WIDTH/2, WINDOW_HEIGHT/2-250, 0, 3)
	end
	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.print("You survived for "..time.." seconds!", WINDOW_WIDTH/2-600, WINDOW_HEIGHT/2-220, 0, 1)
	love.graphics.print("There were "..#badies.." balls!", WINDOW_WIDTH/2-200, WINDOW_HEIGHT/2-80, 0, .8)
	love.graphics.print("Game Over", WINDOW_WIDTH/2-25, WINDOW_HEIGHT/2, 0, 0.4)
	love.graphics.print("Press Space to restart...", WINDOW_WIDTH/2-75, WINDOW_HEIGHT/2+50, 0, 0.4)
	love.graphics.print("Press Esc to go to title.", WINDOW_WIDTH/2-75, WINDOW_HEIGHT/2+100, 0, 0.4)
end

function endState()
	if compareHighScore(time) then 
		highscoreScene = true
	end

	if love.keyboard.isDown(" ") then
		reset_game("good")
	end
	if love.keyboard.isDown("escape") then 
		reset_game("title")
	end
end