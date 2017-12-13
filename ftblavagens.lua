local msg = "This computer will activate the lava gens\nduring daylight so we dont lose alot of energy"
local warning = "*** It is recommended to have this computer running\n    to reduce power consumption by 20k RF ***"
local w,h = term.getSize()

while true do

	time = os.time()
	timer = textutils.formatTime(time, true)
	local timeLenght = string.len(timer)
	local newW = math.floor(w/2 - timeLenght/2)
	local newH = (h/2)
	term.setTextColor(colors.green)
	print(msg)
	local curX,curY = term.getCursorPos()
	curY = curY + 1
	term.setCursorPos(1, curY)
	term.setTextColor(colors.red)
	print(warning)
	term.setTextColor(colors.orange)
	term.setCursorPos(newW,newH)
	print(timer)
	
	if time < 6 or time > 18 then
	  rs.setOutput("back", true)
	else
	  rs.setOutput("back", false)
	end
	
	sleep(0.1)
	term.clear()
	term.setCursorPos(1,1)
	
end
