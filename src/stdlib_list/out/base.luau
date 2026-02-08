--[[
Additional base for the stdlib-list package for Luau. The core package is based on Lua syntax
version 5.1 and its comments.

Copyright (C) 2026 BlockGuard Software Foundation. All Rights Reserved.
--]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RbxPI = ReplicatedStorage:WaitForChild("RbxPI")

local Include = RbxPI:WaitForChild("Include")
local Internal = Include:WaitForChild("Internal")

local IntenalAPI = require(Internal.InternalAPI)

local Versions = {
    "1.0",
    "1.1"
}

local Base = {}
Base.__index = Base

--- Retrieves the canonical version string for a given version.
--- @param version string The version string to be canonicalized.
--- @return string The canonical version string if found, otherwise an error is raised.
function Base.GetCanonicalVersion(version: string): string
    if table.find(Versions, version) then
        local parts = string.split(version, ".")
        version = parts[1] .. "." .. parts[2]
    else 
        error("Version not found: " .. version)
    end
    return version
end

--- Given a ``version``, return a ``list`` of names of the RbxPI Standard Libraries for that version.
--- @param version string | nil The version (as a string) whose list of libraries you want (formatted as ``X.Y``, e.g. ``"2.7"`` or ``"3.10"``).
--- If not specified, the current version of RbxPI will be used.
--- @return {string} A list of standard libraries from the specified version of RbxPI.
function Base.StdlibList(version: string | nil) : {string}

    version = (
        if version ~= nil then 
            Base.GetCanonicalVersion(version) 
        else 
            IntenalAPI.version:sub(1,3)
    )

    local module_list_file = script.Parent.lists:FindFirstChild(version)

    local data = module_list_file and require(module_list_file) or error("Version not found: " .. version)

    return data
end

--- Checks if a given package name is included in the list of standard libraries for a specified version.
--- @param packageName string The name of the package to check for.
--- @param version string | nil The version (as a string) whose list of libraries you want to check against 
--- (formatted as ``X.Y``, e.g. ``"2.7"`` or ``"3.10"``). If not specified, the current version of RbxPI will be used.
--- @return boolean True if the package is included in the list of standard libraries for the specified version.
function Base.InStdlib(packageName: string, version: string | nil) : boolean
    local list = Base.StdlibList(version)
    return table.find(list, packageName) ~= nil
end

return Base