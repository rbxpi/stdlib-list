# stdlib-list
![GitHub Release](https://img.shields.io/github/v/release/rbxpi/stdlib-list)
[![stdlib-list Release](https://img.shields.io/static/v1?label=Roblox&message=Model&color=blue&logo=roblox&logoColor=white)](https://create.roblox.com/store/asset/72160239405840/RbxPI-Roblox-Package-Index)
![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/rbxpi/stdlib-list/total)


This package includes lists of all of the standard libraries for RbxPI.

## Installation

`stdlib-list` is available in [Roblox marketplace](https://create.roblox.com/store/asset/91002817839590/stdliblist).

## Usage

```lua
local stdlib_list = require(game:GetService("ReplicatedStorage"):WaitForChild("RbxPI").API).stdlib_list
libraries = stdlib_list.StdlibList("1.1")
print(libraries)
```

```output
{[1] = "logging"} 
```

## Copyright and License Information

Copyright © 2026 BlockGuard Software Foundation. All rights reserved.
