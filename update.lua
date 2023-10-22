print("data will be erased! continue?(y/n)/")
if read() == "y" then

print("starting update...")
fs.delete("agedi")
fs.delete("setup")
fs.delete("startup")
print("downloading setup.lua...")
local setup = fs.open("setup", "w")
local text = http.get("https://raw.githubusercontent.com/AgediSmagedi/cc-ag/main/setup.lua").readAll()
setup.write(text)
setup.close()
print("now run setup")
else print("aight") end
