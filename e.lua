-- Gui to Lua
-- Version: 3.2

-- Instances:

local Bob = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local Hi = Instance.new("TextBox")
local Check = Instance.new("ImageButton")
local checked = Instance.new("BoolValue", Check)
checked.Value = false

--Properties:

Bob.Name = "Bob"
Bob.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ImageButton.Parent = Bob
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Position = UDim2.new(0.0626888201, 0, 0.174935162, 0)
ImageButton.Size = UDim2.new(0, 100, 0, 100)
ImageButton.Image = "http://www.roblox.com/asset/?id=6403436054"

Hi.Name = "Hi"
Hi.Parent = Bob
Hi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hi.Position = UDim2.new(0.053625375, 0, 0.357784808, 0)
Hi.Size = UDim2.new(0, 123, 0, 50)
Hi.Font = Enum.Font.SourceSans
Hi.Text = ""
Hi.TextColor3 = Color3.fromRGB(0, 0, 0)
Hi.TextSize = 14.000

Check.Name = "Check"
Check.Parent = Bob
Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Check.Position = UDim2.new(0.0709969774, 0, 0.455046386, 0)
Check.Size = UDim2.new(0, 58, 0, 53)
Check.Image = "http://www.roblox.com/asset/?id=4787912146"

-- Scripts:

local function IIPB_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	wait(1)
	local player = game.Players.LocalPlayer
	script.Parent.MouseButton1Click:Connect(function()
		local times = tonumber(script.Parent.Parent.Hi.Text)
		for i = 0, times do
			local anchored = true
			if checked.Value == true then
				anchored = false
				
			elseif checked.Value == false then
				anchored = true
			
			end 
			player.Character.HumanoidRootPart.Anchored = anchored
			
			player.Character:MoveTo(Vector3.new(player.Character.HumanoidRootPart.Position.X, player.Character.HumanoidRootPart.Position.Y + 1, player.Character.HumanoidRootPart.Position.Z))
			wait(0.1)
		end
		player.Character.HumanoidRootPart.Anchored = false
		
	end)
end
coroutine.wrap(IIPB_fake_script)()
local function NPRCBNZ_fake_script() -- Check.LocalScript 
	local script = Instance.new('LocalScript', Check)

	wait(1)
	local clicked = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if clicked == false then
			clicked = true
			script.Parent.Image = "http://www.roblox.com/asset/?id=10722835155"
			checked.Value = true
			
		elseif clicked == true then
			clicked = false
			script.Parent.Image = "http://www.roblox.com/asset/?id=4787912146"
			checked.Value = false
		
		end
		
	end)
end
coroutine.wrap(NPRCBNZ_fake_script)()
