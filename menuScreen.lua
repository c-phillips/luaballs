function menuState()
	local center_image = WINDOW_HEIGHT/2-300
	love.mouse.setVisible(true)

	menu_buttons = {}
	menu_buttons.mouse_button = {x = WINDOW_WIDTH/2-(314/2), y = center_image+243, w = 314, h = 73, selected = false, key = "mouse"}
	menu_buttons.arrows_button = {x = WINDOW_WIDTH/2-(314/2), y = center_image+325, w = 314, h = 73, selected = false, key = "arrows"}
	menu_buttons.wasd_button = {x = WINDOW_WIDTH/2-(314/2), y = center_image+408, w = 314, h = 73, selected = false, key = "wasd"}
	menu_buttons.back_button = {x = WINDOW_WIDTH/2-(314/2), y = center_image+499, w = 314, h = 73, selected = false, key = "back"}

	if isClicking(menu_buttons.mouse_button) then 
		game_options.movement = "mouse"
	end
	if isClicking(menu_buttons.arrows_button) then 
		game_options.movement = "arrows"
	end
	if isClicking(menu_buttons.wasd_button) then 
		game_options.movement = "wasd"
	end
	if isClicking(menu_buttons.back_button) then 
		game_state = "title"
	end

	if isHovering(menu_buttons.mouse_button) then 
		love.mouse.setCursor(cursors.hand)
	elseif isHovering(menu_buttons.arrows_button) then 
		love.mouse.setCursor(cursors.hand)
	elseif isHovering(menu_buttons.wasd_button) then 
		love.mouse.setCursor(cursors.hand)	
	elseif isHovering(menu_buttons.back_button) then 
		love.mouse.setCursor(cursors.hand)
	else
		love.mouse.setCursor(cursors.arrow)
	end

	--[[
	if love.keyboard.isDown("escape") then 
		game_state = "title"
	end

	if love.keyboard.isDown("1") then 
		game_options.movement = "mouse"
	elseif love.keyboard.isDown("2") then 
		game_options.movement = "arrows"
	elseif love.keyboard.isDown("3") then
		game_options.movement = "wasd"
	end
	--]]

end

function menuScreen()
	love.graphics.setColor(255, 255, 255, 255)
	love.graphics.rectangle("fill", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT)
	love.graphics.draw(menu_background, WINDOW_WIDTH/2-250, WINDOW_HEIGHT/2-300)
	love.graphics.setColor(0, 0, 0, 255)

	--------------
	if game_options.movement == menu_buttons.mouse_button.key then 
		menu_position = menu_buttons.mouse_button.y
	elseif game_options.movement == menu_buttons.arrows_button.key then 
		menu_position = menu_buttons.arrows_button.y
	elseif game_options.movement == menu_buttons.wasd_button.key then 
		menu_position = menu_buttons.wasd_button.y
	else 
		menu_position = menu_buttons.arrows_button.y
	end

	love.graphics.setColor(0, 0, 0, 50)
	love.graphics.rectangle("fill", WINDOW_WIDTH/2-(314/2), menu_position+5, 314, 73)
	love.graphics.setColor(103, 229, 142, 255)
	love.graphics.rectangle("fill", WINDOW_WIDTH/2-(314/2), menu_position, 314, 73)

	--------------
	if game_options.movement == menu_buttons.mouse_button.key then 
		love.graphics.setColor(255, 255, 255, 255)
	else 
		love.graphics.setColor(0, 0, 0, 255)
	end
	love.graphics.print("Mouse", menu_buttons.mouse_button.x+140/2, menu_buttons.mouse_button.y, 0, .6)
------------------------
	if game_options.movement == menu_buttons.arrows_button.key then 
		love.graphics.setColor(255, 255, 255, 255)
	else 
		love.graphics.setColor(0, 0, 0, 255)
	end
	love.graphics.print("Arrows", menu_buttons.arrows_button.x+140/2, menu_buttons.arrows_button.y, 0, .6)
-------------------------
	if game_options.movement == menu_buttons.wasd_button.key then 
		love.graphics.setColor(255, 255, 255, 255)
	else 
		love.graphics.setColor(0, 0, 0, 255)
	end
	love.graphics.print("WASD", menu_buttons.wasd_button.x+140/2, menu_buttons.wasd_button.y, 0, .6)	

	--[[
	love.graphics.print("This is a menu lol", 100, 100, 0, 5)
	love.graphics.print("Controls:", 100, 150, 0, 4)
	love.graphics.print("Mouse:     1", 100, 200, 0, 3)
	love.graphics.print("Arrows:    2", 100, 250, 0, 3)
	love.graphics.print("WASD:      3", 100, 310, 0, 3)
	love.graphics.print("Back:  esc", 100, 350, 0, 2)
	--]]

end

