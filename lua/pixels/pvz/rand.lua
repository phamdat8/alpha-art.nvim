-- Execute shell command to list Lua files in the current directory
local handle = io.popen("ls | grep -v '^rand.lua$'")
local result = handle:read("*a")
handle:close()
local files = {}
for file in string.gmatch(result, "[%w_]+%.lua") do
	local module_name = file:gsub("%.lua$", "")
	table.insert(files, module_name)
end
local file = files[math.random(#files)]

return require(file)
