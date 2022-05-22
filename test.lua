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

local url = "https://api.coindesk.com/v1/bpi/currentprice.json" -- free api that has bitcoin prices

local web = game:GetService("HttpService")

local result = web:GetAsync(url) -- grabs the data from the url

print(result) -- would be JSON which is unusable for lua

local LUA_RESULT = web:JSONDecode(result) -- turns JSON into a dictionary

print(LUA_RESULT)