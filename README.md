# JS-Await-but-in-roblox
I've been learning JavaScript and I like how the await() function reads, so I re made it in Roblox.

# How to use

# Require the module
```lua
local await = require(game.ReplicatedStorage.await)
```

# use cases

```lua
local basePlate = await(workspace, "Baseplate"); -- same as WaitForChild

await(3); -- waits 3 seconds

await(3):thenDo(function() -- waits 3 seconds, then runs the function
	print("W")
end)

local object, name = await(function() -- will yield the script until this function is completed
	return { -- make sure when returning that you use a table
		Instance.new("Part");
		"CoolPart";
	}
end)

```
