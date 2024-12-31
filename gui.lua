local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "legendxlv", HidePremium = false, SaveConfig = true, IntroEnabled = false, ConfigFolder = "OrionTest"})

--values

_G.autoTap = true

--functions

function autoTap()
    while _G.autoTap == true do
    	game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
     end
    end

--tabs

local AutoTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--toggles

AutoTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.autoTap = Value
		autoTap()
	end 	   
})



end
OrionLib:Init()
