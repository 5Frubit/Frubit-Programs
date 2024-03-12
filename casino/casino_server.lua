local io = require("io")
local key = require("keyboard")
local wr = require("component").os_cardwriter
local os = require("os")
local run = true
print("Server Started!")
print("Hold Q to enter the new card mode")
print("Hold W to enter the getCred mode")
print("Hold E to enter the setCred mode")
print("Hold D to enter the removeCred mode")


--playerCredDB Sync
playerCredDB = {};



function cardSetup()
	print("New card setup")
	print("Insert card and enter name:")
	name = io.read()
	wr.write(name,name)
	playerCredDB[name] = 0
end

function updateCred()
	
end

function setCred(name,amount)
	playerCredDB[name] = amount
end

function getCred(name)
	return playerCredDB[name]
end

function removeCred(name,amount)
	playerCredDB[name] = playerCredDB[name] - amount;
end

while run do
	if key.isKeyDown("q") then
		cardSetup()
	end
	if key.isKeyDown("w")
		print("getCred?:")
		name = io.read()
		print(getCred(name))
	end
	if key.isKeyDown("e")
		print("setCred?:")
		name = io.read()
		print("amount?:")
		amount = io.read()
		setCred(name,amount)
	end
	if key.isKeyDown("d")
		print("removeCred?:")
		name = io.read()
		print("amount?:")
		amount = io.read()
		removeCred(name,amount)
	end
	updateCred()
	os.sleep(0.1)
end