turtle.select(16)
turtle.refuel(1)

function place()
	turtle.select(1)
	turtle.place()
end

local i = 0
repeat
	place()
	sleep(6)
	i=i+1
until i == 64