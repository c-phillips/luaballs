function whoKnowsScreen()
	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.rectangle("fill", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.print("Hmmm... Not really sure...", WINDOW_WIDTH/2, WINDOW_HEIGHT/2)
end