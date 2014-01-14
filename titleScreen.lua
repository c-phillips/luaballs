function titleState()
	local center_image = (WINDOW_HEIGHT/2-250)
	local title_buttons = {}
	title_buttons.start_button = {x = WINDOW_WIDTH/2-(314/2), y = center_image+243, w = 314, h = 73}
	title_buttons.settings_button = {x = WINDOW_WIDTH/2-(314/2), y = center_image+325, w = 314, h = 73}
	title_buttons.exit_button = {x = WINDOW_WIDTH/2-(314/2), y = center_image+408, w = 314, h = 73}

	if isClicking(title_buttons.start_button) then 
		reset_game("good")
	end
	if isClicking(title_buttons.settings_button) then 
		reset_game("menu")
	end
	if isClicking(title_buttons.exit_button) then 
		print("ya dingus!")
		love.event.quit()
	end

	if isHovering(title_buttons.start_button) then 
		love.mouse.setCursor(cursors.hand)
	elseif isHovering(title_buttons.settings_button) then 
		love.mouse.setCursor(cursors.hand)
	elseif isHovering(title_buttons.exit_button) then 
		love.mouse.setCursor(cursors.hand)	
	else
		love.mouse.setCursor(cursors.arrow)
	end

	--[[
	if love.keyboard.isDown(" ") then 
		reset_game("good")
	end
	if love.keyboard.isDown("m") then 
		reset_game("menu")
	end
	if love.keyboard.isDown("f1") then 
		love.event.quit()
	end
	--]]

end

function titleScreen()
	love.mouse.setVisible(true)

	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.rectangle("fill", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)

	love.graphics.draw(title_background, WINDOW_WIDTH/2-250, WINDOW_HEIGHT/2-250)
	--love.graphics.rectangle("fill", start_button.x, start_button.y, start_button.w, start_button.h)

	--[[
	love.graphics.print("EPIC BALLZ!", 200, 100, 0, 7)
	love.graphics.print("Press space to play!", 400, 300, 0, 4)
	love.graphics.print("Press 'm' for the menu", 325, 350, 0, 4)
	love.graphics.print("Press 'f1' to exit", 325, 400, 0, 4)
	--]]

end
