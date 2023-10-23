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

local function split(string, delimiter)
    t = {}
    for str in string.gmatch(string, "([^" ..delimiter.."]+)") do
        table.insert(t,str)
    end
    return t
end

return{
    clear = clear,
    InTable = InTable,
    split = split
}
