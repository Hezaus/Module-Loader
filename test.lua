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

local HttpService = game:GetService("HttpService")
 
local URL = "https://raw.githubusercontent.com/Hezaus/Testing/main/require.lua"
 
-- Make the request to our endpoint URL
local response = HttpService:GetAsync(URL)
 
-- Parse the JSON response
local data = HttpService:JSONDecode(response)

-- Information in the data table is dependent on the response JSON
if data.message == "success" then
	print("data")
end