rint("starting install...")

--gotta remove update file if its there
local isUpdate = fs.exists("update", "w")
if isUpdate then
    fs.delete("update")
end
local agUrl = "https://raw.githubusercontent.com/AgediSmagedi/cc-ag/main/ag.lua"
local startUrl = "https://raw.githubusercontent.com/AgediSmagedi/cc-ag/main/startup.lua"
local updateUrl = "https://raw.githubusercontent.com/AgediSmagedi/cc-ag/main/update.lua"

agedi = fs.makeDir("agedi")

print("downloading ag.lua...")
local ag = fs.open("agedi/ag", "w")
local text = http.get(agUrl).readAll()
ag.write(text)
ag.close()

print("downloading update.lua...")
local update = fs.open("agedi/update", "w")
text = http.get(updateUrl).readAll()
update.write(text)
update.close()

print("downloading startup.lua")
local startup = fs.open("startup", "w")
text = http.get(startUrl).readAll()
startup.write(text)
startup.close()

local isconfig = fs.exists("agediconfig", "r")
if not isconfig then
local config = fs.open("agediconfig", "r")
print("enter password/")
config.writeLine(read())
end
print("Done!")
