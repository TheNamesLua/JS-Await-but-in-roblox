local module = {}
module.__index = module


module.__call = function(t, parent, obj)
	if typeof(parent) == "Instance" then
		print("Awaiting", obj, "in", parent);
		parent:WaitForChild(obj, 5);
		
		return parent:FindFirstChild(obj);
	else if typeof(parent) == "function" then
			local returnedItems = {};
			
			for i,v in pairs(parent()) do
				table.insert(returnedItems, v);
			end
			
			return table.unpack(returnedItems);
		end
	end
	task.wait(parent);
	local self = {}

	function self:thenDo(func)
		func()
	end

	return self	
end

return setmetatable(module, module)
