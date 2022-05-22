--[[
function Load()
	local url = "https://github.com/Roblox/roact/tree/master/src"
	local entry = EntryUtils.create("Folder", "Roact", "")
	ParseUtils.fillFoldersAsync(url, entry)
	ParseUtils.fillScriptSourcesAsync(ParseUtils.githubContentFromUrl(url), entry)
	EntryUtils.mount(Parent, entry)
end
]]

--Testing script
--[[
local h = game:GetService("HttpService") 
h:GetAsync("https://raw.githubusercontent.com/Hezaus/Testing/main/require.lua")
]]

--[[
local b = require(a)
c = b:print("Hello")
d = b:plus(1,1)
e = b:value(5)
print(e)
print(d)
print(c)
]]

local http = game:GetService("HttpService")
local url = "https://catalog.roproxy.com/v1/search/items/details?Category=11&Subcategory=9"

local finished = false
local RunTimes = 0
local MAX_RUN = 2
	
repeat
	local response = http:GetAsync(url)
	local data = http:JSONDecode(response)
	local nextPageCursor = data.nextPageCursor
	local realdata = data["data"]
    print(realdata)
	if nextPageCursor then
		url = "https://catalog.roproxy.com/v1/search/items/details?Category=11&Subcategory=9&Cursor="..nextPageCursor
		RunTimes += 1
	else
		finished = true
		print("true")
	end
until finished == true or RunTimes == MAX_RUN