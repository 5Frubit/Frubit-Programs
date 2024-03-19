io = require("io")
r = require("robot")
t = require("term")
blocks = 0

function printMineStats(id,iw,il)
	t.clear()
	
	G = d*w*l
	per = (blocks / G)*100
	print()
end

function nextLine()
	r.turnRight()
	r.swing()
	r.forward()
	r.turnRight()
	blocks = blocks + 1
end

function nextLayer()
	
end

--Input Info
print("Width:")
w = tonumber(io.read())
print("Depth:")
d = tonumber(io.read())
print("Length:")
l = tonumber(io.read())

print("Starting Programm")
--Main Loop
id = 0
iw = 0
il=0
while d > id do
	
	while w > iw do
		
		while l > il do
			r.swing()
			r.forward()
			blocks = blocks +1
			il = il + 1
		end
		iw = iw + 1
		nextLine()
	end
	id = id + 1
	nextLayer()
end
print("ENDE!")