local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Crayon = require(ReplicatedStorage.Crayon)

local GothamSSm = Crayon.face("Gotham SSm")

print(Crayon.color.blue("Hello, world!"))
print(Crayon.weight.bold("Hello, world!"))
print(GothamSSm("Hello, world!"))
