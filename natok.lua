--[[
        -* MADE BY ARMADYL010 *-
        -* FOR {SELF}*-
        -* PLEASE ENJOY IT    *-
]]
--
  if not fs.exists('.emailc') then
    local create = fs.open('.emailc','w')
		create.write(0)
		create.close()
	end
	
	local receivedc = fs.open('.emailc', 'r')
	local newmsgc = receivedc.readLine()
	receivedc.close()
		
	local receivedemail = fs.open('.email','r')
	local received = textutils.unserialize(receivedemail.readAll())
	receivedemail.close()
		
--
	os.loadAPI(".but/button")
	os.loadAPI(".but/button2")

 imgM = paintutils.loadImage("frames/menuf")
 image1 = paintutils.loadImage("frames/si")
 --imgD = paintutils.loadImage("frames/doorsf")
 imgE = paintutils.loadImage("frames/emailf")
 local numberid = 1
 local ver = fs.open("/.version", "r")
 local version = ver.readLine()
 ver.close()
  
  
function fillTables()
	button.setTable("Email",reademail,no,4,9,5,5)
	button.setTable("Console",console,no,4,10,6,6)
	button.setTable("Door", notA,no,4,14,7,7)
	button.setTable("Installer", inst,no,4,12,8,8)
	button.setTable("Updater", update,no,13,20,8,8)
	button.setTable("Exit",exit,no,24,28,12,12)

	button2.setTable("Exit",menu,no,24,28,16,16)
	button2.setTable("UpNum",numberup,no,16,16,4,4)
	button2.setTable("DownNum",numberdown,no,42,42,4,4)
	--button2.setTable("SendE",sendE,no,-,-,-,-) //send email button

checkPassEntered()
end
  
  
--Protection
disk.eject("bottom")
os.pullEvent = os.pullEventRaw
--mon = peripheral.wrap("left")
--term.redirect(mon)
-- text and paints

function checkPassEntered()
  if not fs.exists('.iddatab') then
    local entry = fs.open('.iddatab','w')
	print("Welcome, since it's your first time you need to enter your Credentials.")
	write("Username: ")
	input1 = read()
	write("Pass: ")
	input2 = read("*")
	local value = {
		["account"]= {
			user=input1;
			pass=input2;
			}
					   }	
	entry.write(textutils.serialize(value))
	entry.close()
	start()
  else
start()
end
end

function start()
	image1 = paintutils.loadImage(".ins/si")
	paintutils.drawImage(image1, 1, 1)
	term.setBackgroundColor(colors.gray)
	term.setTextColor(colors.green)
	term.setCursorPos(4,5)
	print("X Exit")
	term.setCursorPos(2,2)
	term.setTextColor(colors.blue)
	print("arma  STP4SS")
	term.setCursorPos(4,11)
	print("arma ")
	term.setCursorPos(4,13)
	print("Startup")
	term.setCursorPos(4,15)
	print("Script")
	term.setCursorPos(18,3)
	print("X Login Access")
	term.setCursorPos(18,5)
	print("")
	term.setCursorPos(18,7)
	print("")
	term.setCursorPos(18,9)
	print("")
	term.setCursorPos(18,11)
	print("")
	-- click functions and etc
	while true do
	event, side,xPos,yPos = os.pullEvent("mouse_click")
	  if (yPos) == 3 and (xPos) == 18 then
	  local iddatabase = fs.open('.iddatab','r')
	  local iddata = textutils.unserialize(iddatabase.readAll())
	  iddatabase.close()
	   term.setCursorPos(18,4)
	   write("Username: ")
	   user = read()
	   if user == iddata["account"].user then
	   term.setCursorPos(18,5)
	   write("Password: ")
	   pass = read("*")
	   else
	    term.setCursorPos(23,11)
		print("Wrong Username !")
		sleep(2)
		rb1()
	   end
		if pass == iddata["account"].pass then
		 rb()
		else
		term.setCursorPos(23,11)
		print("Wrong Password !")
		 sleep(2)
		 rb1()
	end
	
	
	
	elseif (yPos) == 5 and (xPos) == 4 then
		term.setBackgroundColor(colors.green)
		term.clear()
		term.setCursorPos(2,2)
		term.setTextColor(colors.red)
		print("Exiting the startup..")
		sleep(2)
		term.clear()
		term.setCursorPos(1,1)
		print("Now Exiting the Launcher :)")
		sleep(1.5)
		os.shutdown()
	elseif (yPos) == 5 and (xPos) == 18 then
		term.setCursorPos(16,1)
	   
	elseif (yPos) == 7 and (xPos) == 18 then

	elseif (yPos) == 9 and (xPos) == 18 then

	elseif (yPos) == 11 and (xPos) == 18 then
	end
	end
end

function rb()
	term.clear()
	term.setBackgroundColor(colors.black)
	term.setCursorPos(1,1)
	start2()
	sleep(1)
end
function rb1()
	term.clear()
	term.setCursorPos(1,1)
	start()
end

function start2()
	term.setTextColor(colors.blue)
	menu()
end

function getClick()
	while true do
        event,side,x,y = os.pullEvent("mouse_click")
        button.checkxy(x,y)
end
end
function getClick2()
while true do
        event,side,x,y = os.pullEvent("mouse_click")
        button2.checkxy(x,y)
end
end


-- Menu

function menu()
	term.clear()
	term.setCursorPos(1,1)
	paintutils.drawImage(imgM, 1, 1)
	term.setTextColor(colors.blue)
	term.setBackgroundColor(colors.cyan)

		term.setCursorPos(2,3)
		print("Receiver: ON")
		term.setCursorPos(15,6)
		print("Received messages: "..newmsgc)
		term.setCursorPos(4,7)
		print("Email")
		term.setCursorPos(4,8)
		print("Console")
		term.setCursorPos(4,9)
		print("Door Opener")
		term.setCursorPos(4,10)
		print("Installer/Updater")
		term.setCursorPos(4,11)
		print("Following features will come in next version")
		term.setCursorPos(4,12)
		print("Change your password")
		term.setCursorPos(4,13)
		print("Working Email")
		term.setCursorPos(24,14)
		print("Exit")
		term.setCursorPos(2,18)
		term.setBackgroundColor(colors.yellow)
		term.setTextColor(colors.green)
		print("Welcome: "..user)
		term.setCursorPos(38,18)
		print("Version: "..version)
		term.setTextColor(colors.blue)
		term.setBackgroundColor(colors.cyan)

		getClick()

end

function exit()
	term.setBackgroundColor(colors.green)
	term.clear()
	term.setCursorPos(2,2)
	term.setTextColor(colors.red)
	print("Exiting the startup..")
	sleep(2)
	term.clear()
	term.setCursorPos(1,1)
	print("Now closing the computer :(")
	sleep(1.5)
	os.shutdown()
end

-- Menu functions

function reademail()
 
	term.clear()
	term.setCursorPos(1,1)
	paintutils.drawImage(imgE, 1, 1)
	term.setBackgroundColor(colors.black)
	term.setTextColor(colors.blue)
  
  
  --Write the email received
	term.setCursorPos(16,4)
	print("-")
	term.setCursorPos(42,4)
	print("+")	
	term.setCursorPos(16,4)
	print("#: "..numberid)
	term.setCursorPos(16,5)
	print("ID: "..received[numberid].ID)
	term.setCursorPos(16,6)
	print("Time: "..received[numberid].Time)
	term.setCursorPos(16,7)
	print("MSG: "..received[numberid].Msg)
	term.setCursorPos(24,16)
	print("Exit")
	
	
	getClick2()

end


function numberup()

	numberid = numberid + 1
	reademail()

end

function numberdown()

	numberid = numberid - 1
	reademail()

end


function console()
	sleep(2)
	term.setBackgroundColor(colors.black)
	term.clear()
	term.setCursorPos(1,1)
	print("Console:      [Write reboot to Comeback]")
	error()
end

function Doors()
notA()
--paintutils.drawImage(imgD, 1, 1)
--term.setCursorPos(3,1)
--print(doordata.)
--  term.setCursorPos(3,15)
--  print("Which door you want to open?")
--   sleep(1)
--  term.setCursorPos(3,16)
--  write("Please enter the door name")
--   input = read()
   
end

function inst()
	if fs.exists(".ins/installer") and fs.exists(".ins/si") then
		shell.run(".ins/installer")
	else
		fs.makeDir(".ins")
			shell.run("pastebin","get","kTH54fdW",".ins/installer")
			shell.run("pastebin","get","KMbzzBXn",".ins/si")
			sleep(1)
			shell.run(".ins/installer")
			menu()
	end
end

function notA()
	term.setCursorPos(10,3)
	term.setTextColor(colors.red)
	print("This feature is not yet available.")
	sleep(3)
	term.setCursorPos(10,3)
	term.clearLine()
	term.setTextColor(colors.blue)
	menu()
end
--Updater
function update()
	local upd = "yMwtpzun"
	local vch = "Xea4jPkq"
	print "Checking For Updates..."
	shell.run("pastebin", "get", vch, "/.verCheck")
	 
	f = fs.open("/.verCheck", "r")
			verCode = f.readLine()
	f.close()
	 
	if(fs.exists("/.version"))then
			f = fs.open("/.version", "r")
					olVer = f.readLine()
			f.close()
		   
			if(olVer == verCode)then
					print "No Update Available"
					fs.delete("/.verCheck")
									sleep(2)
									os.reboot()
			else
					print("Update Ver "..verCode.." Available Downloading...")
					shell.run("pastebin", "get", upd, "newUpdate")
					fs.delete("/.verCheck")
					f = fs.open("/.version", "w")
							f.writeLine(verCode)
					f.close()
					print "Update Downloaded!"
					print "Running Installer"
					shell.run("newUpdate")
					fs.delete("newUpdate")
					sleep(2)
					os.reboot()
			end
	else
        f = fs.open("/.version", "w")
                f.writeLine("UpdateRequired")
        f.close()
                sleep(2)
        os.reboot()
	end
end

-- starting it .. :P
multishell.setTitle(multishell.launch({},"rec"), "Receiver")
multishell.setTitle(multishell.getCurrent(), "Natok 0S")
--
fillTables()
term.clear()
term.setCursorPos(1,1)