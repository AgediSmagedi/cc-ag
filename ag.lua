--a library i guess?

local function clear(head)
    term.clear()
    term.setCursorPos(1,1)
    if head ~= nil then
        local width, height = term.getSize()
        
        local target = width - string.len(head)
        target = target/2
        -- just tryna ---------- yknow 
        
        term.setCursorPos(target, 1)
        print(head)
    end
    
end

local function InTable(table, item)
    for i, v in pairs(table) do
        if v == item then
        return true, i
    end
    end
end


local test = {[1] = "hi", [2] = "wassup", ["yes"] = "yes"}
local bool, index = InTable(test, "yes")
print(index)
return{
    clear = clear,
    InTable = InTable
}
