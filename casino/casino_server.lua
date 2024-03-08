local io = require("io")
local key = require("component").keyboard
local wr = require("component").os_cardwriter
local run = true
print("Server Started!")
print("Hold C to enter the new card mode")
while run do
	if key.isKeyDown("c") then
		cardSetup()
	end
end

function cardSetup()
	print("New card setup")
	print("Insert card and enter name:")
	name = io.read()
	wr.write(name,0)
end