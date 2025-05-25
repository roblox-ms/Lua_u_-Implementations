-- OOP in Luau (simple)

local __class_meta__ = {
    __call = function(t, ...)
        local l_cloned = table.clone(t);
        if (not l_cloned.__constructor) then
            return l_cloned;
        end;
        if (select('#', ...) ~= 0) then
	    l_cloned:__constructor(...);
	end;
        return l_cloned;
    end,
};

function class(t)
    return setmetatable(t, __class_meta__);
end;

--[[
    Usage:
    local Class = class{size=nil,__constructor=function(self,size)self.size=size;end,__class_name="Example"};
    local newObject = Class(1);
]]
