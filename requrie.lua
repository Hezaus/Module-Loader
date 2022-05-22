local TextService = game:GetService("TextService")
local b = {}

function b:print(Text:string)
    return print(Text)
end

function b:plus(number1,number2)
    return print(number1 + number2)
end

function b:value(value:number)
    return value
end

print("B")

return b