function bounding_the_player()
	if (person.y+person.radius) > WINDOW_HEIGHT then
		person.y = WINDOW_HEIGHT-person.radius
	end
	if (person.y-person.radius) < 0 then
		person.y = person.radius
	end
	if (person.x+person.radius) > WINDOW_WIDTH then
		person.x = WINDOW_WIDTH-person.radius
	end
	if (person.x-person.radius) < 0 then
		person.x = person.radius
	end
end