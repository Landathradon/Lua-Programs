os.pullEvent = os.pullEventRaw
-- text and paints
function getfile()
if fs.exists(".ins/si") then
term.clear()
start()
else
shell.run("pastebin","get","KMbzzBXn",".ins/si")
term.clear()
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
print("arma L0AD3R")
term.setCursorPos(4,11)
print("Press")
term.setCursorPos(4,13)
print(" the ")
term.setCursorPos(4,15)
print("  X  ")
term.setCursorPos(18,3)
print("X Hardpass")
term.setCursorPos(18,5)
print("X StartupP")
term.setCursorPos(18,7)
print("X NaTok OS | Best :D")
term.setCursorPos(18,9)
print("X S3CUR0S")
-- click functions and etc
while true do
event, side,xPos,yPos = os.pullEvent("mouse_click")
  if (yPos) == 3 and (xPos) == 18 then
   term.setCursorPos(16,1)
   print("Installing Hardpass on this computer")
   c = "z8s2J3mf"
   c1 = "hardpass"
   st()
  elseif (yPos) == 5 and (xPos) == 4 then
   term.setBackgroundColor(colors.green)
   term.clear()
   term.setCursorPos(2,2)
   term.setTextColor(colors.red)
   print("Exiting the installer..")
   sleep(2)
   term.clear()
   term.setCursorPos(1,1)
   print("Now you can do what ever you want :)")
   sleep(1.5)
   os.reboot()
  elseif (yPos) == 5 and (xPos) == 18 then
   term.setCursorPos(16,1)
   print("Installing StartupP on this computer")
   c = "XW4FVF7Y"
   c1 = "startupP"
   st()
  elseif (yPos) == 7 and (xPos) == 18 then
   term.setCursorPos(16,1)
   print("Installing NaTok OS on this computer")
   c = "5Srw01xM"
   c1 = "natok"
   natok()
  elseif (yPos) == 9 and (xPos) == 18 then
   term.setCursorPos(16,1)
   print("Installing S3CUR0S on this computer")
   c = "Ja2fY9um"
   c1 = "S3CUR0S/start"
   if fs.isDir("S3CUR0S") then
    st()
   print("Please write *"..c1.."* to install it")
   else 
    fs.makeDir("S3CUR0S")
    st()
    print("Please write *"..c1.."* to install it")   
   end  
  end
end
end
-- some useful functions
function st()
term.setCursorPos(18,2)
write("Do you want it as startup?: ")
term.setCursorPos(18,19)
str = read()
if str == "yes" then
shell.run("pastebin", "get", c,"startup")
sleep(3)
rb()
else 
shell.run("pastebin", "get", c, c1)
sleep(3)
rb()
end
end

function rb()
term.clear()
term.setCursorPos(1,1)
start()
end

function natok()
 menuf="z1eaCUVr"
 si="KMbzzBXn"
 doorsf=""
 emailf="uhW2DgiQ"
 v="Xea4jPkq"
 cr="fjTtcqR3"
 but="BMaDHBUc"
 
 	shell.run("pastebin","get",menuf,"frames/menuf")
	shell.run("pastebin","get",si,"frames/si")
	--shell.run("pastebin","get",doorsf,"frames/doorsf")
	shell.run("pastebin","get",emailf,"frames/emailf")
	shell.run("pastebin","get",c,"startup")
	shell.run("pastebin","get",v,"/.version")
	shell.run("pastebin","get",cr,"rec")
	shell.run("pastebin","get",but,".but/button")
	shell.run("pastebin","get",but,".but/button2")
	rb()
end
-- starting it .. :P
getfile()