local time = os.time()
local w,h = term.getSize()
local msg = "This computer will activate the lava gens\nduring daylight so we dont lose alot of energy"
local warning = "*** It is recommended to have this computer running\n    to reduce power consumption by 20k RF ***"

while true do

	local timer = textutils.formatTime(time, true)
	local timeLenght = string.len(timer)
	local newW = math.floor(w/2 - timeLenght/2)
	local newH = h/2

	term.setCursorPos(1,1)
	term.setTextColor(colors.green)
	print(msg)
	local curX,curY = term.getCursorPos()
	curY = curY + 1
	term.setCursorPos(1, curY)
	term.setTextColor(colors.red)
	print(warning)
	term.setCursorPos(newW,newH)
	term.setTextColor(colors.orange)
	print(timer)

	if time < 6 and time > 18 then -- if it's daylight then send a redstone output
		rs.setOutput("back", true)
	else
		rs.setOutput("back", false)
	end
	
	sleep(0.1)
	term.clear()

end
