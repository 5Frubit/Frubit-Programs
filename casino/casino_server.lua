local io = require("io")
local key = require("keyboard")
local wr = require("component").os_cardwriter
local os = require("os")
local run = true
print("Server Started!")
print("Hold C to enter the new card mode")

function cardSetup()
	print("New card setup")
	print("Insert card and enter name:")
	name = io.read()
	wr.write(name,0)
end

while run do
	if key.isKeyDown("c") then
		cardSetup()
	end
	os.sleep(0.1)
end