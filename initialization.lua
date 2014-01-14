require 'lua/load_resources'

function init()
	load_images()
	load_fonts()
	cursors = {}
	cursors.hand = love.mouse.getSystemCursor("hand")
	cursors.arrow = love.mouse.getSystemCursor("arrow")
	love.window.setTitle("EPIC BALLS!")
	love.window.setMode(0, 0)
	WINDOW_HEIGHT = love.window.getHeight()
	WINDOW_WIDTH = love.window.getWidth()
	default_badies = 3
	
	---------------------
	game_options = {}
	game_options.movement = "arrows"

	---------------------

	round_start_time = os.time()
	interval = 0
	game_state = "title"

	require 'lua/person'

	badies = {}
	

	generateBadness(default_badies)

	reset_game("title")
end