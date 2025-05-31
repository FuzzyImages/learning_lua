-- this is a comment

--[[
    This is a block comment
    it covers multiple lines
    Very convienent....
    RIGHT PYTHON!
]]

-- SIMPLE VARIABLE --

local number = 5 -- Simple int variable

local string = "Hello" -- double quotes automatically recognized as a string
local single = 'world' -- Same with single quotes
local crazy = [[ this
    is multi line and literal ]] -- double brackets allow things to carry ove into other lines.

local truth, lies = true, false -- can fill multiple variebles much the same way as python

local nothing = nil -- Luas version of null or undefined


-- VARIABLES : FUNCTIONS --

    -- Basic function is made much pything but with local instead of def (technically it is a variable)
local function hello(name)
    print('Hello', name)
end -- Lua uses end to donote scope instead of {} like Javascript, or white space like Python.

    -- Functions can also be stored like a variable or object
local great = function(name)
    -- .. is string cncatination
    print("Greetings, " .. name .. "!")
end


-- VARIABLES : HIGHER ORDER FUNCTION --
    -- Example of a high order function (A function that returns a function as a value)
local higher_order = function(value)
    return function(another)
        return value + another
    end
end

local add_one = higher_order(1)
print("add_one(2) ->", add_one(2))


-- VARIABLES : TABLES --
    -- Tables are effectivly luas only form of data structure, pretty much similar structure as maps and lists

    -- This is using tables as a list
local list = {"first", 2, false, function() print("Fourth") end}
print('Yup, 1-index:', list[1]) -- Unlike pretty much all other languages, indexes in lua start at 1 instead of 0.
print("Fourth is 4...:", list[4]()) -- the () are needed for the function call within the table


    -- Tables as maps
local t = {
    literal_key = "a string",
    ["an expression"] = "also works",
    [function() end] = true
}

print("literal_key   : ", t.literal_key)
print("an expression : ", t["an expression"])
print("function() end: ", t[function() end])


-- CONTROL FLOW : for