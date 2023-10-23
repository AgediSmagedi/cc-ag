config = fs.open("agediconfig", "r")
config.seek(0)
password = config.readLine()
config.close()
signedin = false

ag = require("agedi/ag")
ag.clear("-- welcome --")


local function pass()
    
    write("enter password/ ")


    while signedin == false do
    if read("*") == password then
        print("welcome")
        signedin = true
    else
        write("try again!/ ")
    end
    end
ag.clear("------------- Welcome Back --------------")
end

local function offlock()
    while true do
        local event = os.pullEventRaw("terminate")
        if event == "terminate" then
            os.shutdown()
        end
    end
end

parallel.waitForAny(offlock, pass)
