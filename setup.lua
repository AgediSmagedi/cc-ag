print("starting install...")
local update = fs.open("update", "w")
if update ~= nil then
    fs.delete("update")
end
local agUrl = "https://raw.githubusercontent.com/AgediSmagedi/cc-ag/main/ag.lua"
local startUrl = "https://raw.githubusercontent.com/AgediSmagedi/cc-ag/main/startup.lua"

agedi = fs.makeDir("agedi")
print("downloading ag.lua...")
local ag = fs.open("agedi/ag", "w")
local text = http.get(agUrl).readAll()
ag.write(text)
ag.close()

print("downloading startup.lua...")
local startup = fs.open("startup", "w")
text = http.get(startUrl).readAll()
startup.write(text)
startup.close()

print("Done!")
