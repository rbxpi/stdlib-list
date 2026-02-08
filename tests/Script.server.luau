local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RbxPI = ReplicatedStorage:WaitForChild("RbxPI")

local API = require(RbxPI.API)
local stdlib_list = API.stdlib_list

print(stdlib_list.InStdlib("logging", "1.1"))