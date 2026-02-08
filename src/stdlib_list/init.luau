--[[
stdlib-list package for Luau. Based on Lua syntax version 5.1 and its comments.
Copyright (C) 2026 BlockGuard Software Foundation. All Rights Reserved.
Licensed under the MIT License. See LICENSE file in the project root for license information.
]]

local LICENSE = require(script.LICENSE)

return {
    Name = "stdlib_list",
    Version = {1, 0, 0, 'final', 0},
    Description = "List of standard library functions",
    Main = "out/index.luau",
    Author = "BlockGuard Software Foundation (https://github.com/blockguard-sf)",
    License = {LICENSE[1], LICENSE[2]},
    Repository = "https://github.com/rbxpi/stdlib-list",
    Dependencies = {},
}
