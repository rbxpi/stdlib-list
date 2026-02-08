--[[
stdlib-list package for Luau. Based on Lua syntax version 5.1 and its comments.
Copyright (C) 2026 BlockGuard Software Foundation. All Rights Reserved.
Licensed under the MIT License. See LICENSE file in the project root for license information.
]]

local Base = require(script.Parent.base)

local Module = {}
Module.__index = Module

Module.GetCanonicalVersion = Base.GetCanonicalVersion
Module.StdlibList = Base.StdlibList
Module.InStdlib = Base.InStdlib

return Module
