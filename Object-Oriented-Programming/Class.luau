-- OOP in Luau (simple)

local __class_meta__ = {
    __call = function(t, ...)
        local l_cloned = table.clone(t);
        if (not l_cloned.constructor) then
            return l_cloned;
        end;
        l_cloned:constructor(...);
        return l_cloned;
    end,
};

function class(t)
    return setmetatable(t, __class_meta__);
end;

--[[
    Usage:
    local Class = class{size=nil,constructor=function(self,size)self.size=size;end};
    local newObject = Class(1);
]]
