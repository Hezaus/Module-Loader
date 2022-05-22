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

--[[

local a = HttpService:GetAsync("https://raw.githubusercontent.com/Hezaus/Testing/main/requrie.lua")
local b = HttpService:JSONDecode(a)
--print(a)
a:print("a")
]]
local HttpService = game:GetService("HttpService")
while wait(0.2) do
	local data  = game.HttpService:GetAsync("https://www.reddit.com/r/memes/.json")
	print(game.HttpService:JSONDecode(data).data.children[1].data.title)
end
