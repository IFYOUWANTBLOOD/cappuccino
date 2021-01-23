local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/boop71/cappuccino/main/ui%20libraries/other/twinklib/module.lua"))()

local MainUI = UILibrary.Load("ChibuHub")
local FirstPage = MainUI.AddPage("Home")

local FirstLabel = FirstPage.AddLabel("Section 1")
local FirstButton = FirstPage.AddButton("Hello", function()
print("Hello")
end)
local FirstToggle = FirstPage.AddToggle("Hello", false, function(Value)
print(Value)
end)
local FirstSlider = FirstPage.AddSlider("Hello", {Min = 0, Max = 255, Def = 50}, function(Value)
print(Value)
end)
local FirstPicker = FirstPage.AddColourPicker("Hello", "white", function(Value)
print(Value)
end)
local FirstDropdown = FirstPage.AddDropdown("Hello", {
"Hello",
"Goodbye"
}, function(Value)
print(Value)
end)
