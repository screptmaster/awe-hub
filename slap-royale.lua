print("SCR3PT WAS HERE")

print(game.PlaceId)

local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

if queueonteleport then

	queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/screptmaster/awe-hub/refs/heads/main/slap-royale.lua'))()")

end

if game.PlaceId == 9431156611 then

  spawn(function()

    for _, event in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Events"):GetDescendants()) do
    
      if event.Name == "Ban" or event.Name == "AdminGUI" or event.Name == "WS" or event.Name == "WS2" then
        
        event:Remove()

      end

  end

  local Anti_Acid = Instance.new("Part", workspace)

  Anti_Acid.Size = Vector3.new(154, 26, 132)

  Anti_Acid.Position = Vector3.new(-60, -5, -731)

  Anti_Acid.Transparency = 1

  Anti_Acid.Anchored = true

  Anti_Acid.CanCollide = false
  
  Anti_Acid.Name = "AntiAcid"

  bunkerPart = Instance.new("Part")

  bunkerPart.CFrame = CFrame.new(443.018310546875, 29.313093185424805, 316.2210998535156)

  bunkerPart.Name = "bunkerPart"

  bunkerPart.Parent = workspace

  bunkerPart.Size = Vector3.new(1,1,1)

  bunkerPart.Anchored = true

  bunkerPart.CanCollide = false

  bunkerPart.Transparency = 1

  UnderMap = Instance.new("Part")

  UnderMap.Parent = workspace

  UnderMap.Anchored = true

  UnderMap.CFrame = CFrame.new(-323.950043, -84.693367, -2.34617805, 1, -0, 0, 0, 1, -0, 0, 0, 1)

  UnderMap.Name = "MapUnder"

  UnderMap.Size = Vector3.new(2048,1,2048)

  Anti_Lava = Instance.new("Part", game.Workspace)

  Anti_Lava.Position = Vector3.new(-238, -43, 401)

  Anti_Lava.Size = Vector3.new(150,10,150)

  Anti_Lava.Anchored = true

  Anti_Lava.Transparency = 1

  Anti_Lava.CanCollide = false

  Anti_Lava.Name = "AntiLava"

  LavaPart = game:GetService("Workspace"):WaitForChild("Map"):WaitForChild("DragonDepths"):WaitForChild("Lava")
  
  for _, acid in game:GetService("Workspace"):WaitForChild("Map"):WaitForChild("AcidAbnormality"):GetChildren() do
    
    if acid.Name == "Acid" and acid:IsA("Part") then
        
        AcidPart = acid

    end

  end

  started = false

  end)

  local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

  local Window = WindUI:CreateWindow({
    Title = "AWE Hub",
    Icon = "lucide:sparkles", -- lucide icon
    Author = "by screptmaster",
    Folder = "awehubconfigs",

    KeySystem = { 

        Key = {"developerkey0"},
        
        Note = "Please enter your key to continue.",

        SaveKey = true,
    },
})

Window:Tag({
    Title = "Slap Royale",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 13,
})

local Tab = Window:Tab({
    Title = "Main",
    Icon = "lucide:app-window", -- optional
    Locked = false,
})

local CTab = Window:Tab({
    Title = "Combat",
    Icon = "lucide:shield", -- optional
    Locked = false,
})

local STab = Window:Tab({
    Title = "Safety",
    Icon = "lucide:search-check", -- optional
    Locked = false,
})

local ITab = Window:Tab({
    Title = "Items",
    Icon = "lucide:apple", -- optional
    Locked = false,
})

local PTab = Window:Tab({
    Title = "Players",
    Icon = "lucide:user", -- optional
    Locked = false,
})

local ws = Tab:Slider({
    Title = "Walkspeed",
    Step = 1,
    
    Value = {
        Min = 20,
        Max = 100,
        Default = 20,
    },
    Callback = function(value)
        
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = value

    end
})

local hh = Tab:Slider({
    Title = "Floating Height",
    Step = 1,
    
    Value = {
        Min = 0,
        Max = 30,
        Default = 0,
    },
    Callback = function(value)
        
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").HipHeight = value

    end
})

  glove = nil

  glovename = "Pack-A-Punch"

  spawn(function()
    
    while task.wait() do
    
      glovename = game.Players.LocalPlayer:WaitForChild("Glove").Value

      if game.Players.LocalPlayer.Backpack:FindFirstChild(glovename) then
        
        glove = game.Players.LocalPlayer.Backpack[glovename]
    
      elseif game.Players.LocalPlayer.Character:FindFirstChild(glovename) then
    
        glove = game.Players.LocalPlayer.Character[glovename]
    
      end
    
    end

  end)

  _G.glovereach = Vector3.new(2.469702959060669, 2.844676971435547, 0.9234156608581543)
  local defaultReach = Vector3.new(2.469702959060669, 2.844676971435547, 0.9234156608581543)
  _G.glovetransparency = 0

  local Reach = CTab:Slider({
    Title = "Glove Reach",
    Step = 1,
    
    Value = {
        Min = 2,
        Max = 20,
        Default = 2,
    },
    Callback = function(ssize)

        local size = tonumber(ssize)
    
        if size == 2 then

            _G.glovereach = defaultReach
            _G.glovetransparency = 0

        else

            _G.glovereach = Vector3.new(size, size, size)
            _G.glovetransparency = 0.5

        end

    end
})

spawn(function()
    
    while task.wait(.05) do
        
        if started then
            
            glove.Glove.Size = _G.glovereach
            glove.Glove.Transparency = _G.glovetransparency

        end

    end

end)

local AntiAcid = STab:Toggle({
    Title = "Anti Acid",
    Desc = "Puts a part on top of Acid to prevent you from falling in.",
    Icon = "radiation",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        
        workspace:FindFirstChild("AntiAcid").CanCollide = state

    end
})

local AntiLava = STab:Toggle({
    Title = "Anti Lava",
    Desc = "Puts a part on top of Lava to prevent you from falling in.",
    Icon = "droplet-off",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        
        workspace:FindFirstChild("AntiLava").CanCollide = state

    end
})

local Bunker = Tab:Button({
    Title = "Get Bunker Code",
    Desc = "Shows a notification with the bunker code.",
    Locked = false,
    Callback = function()
        
        local codes = {
            ["http://www.roblox.com/asset/?id=9648769161"] = "4",
        
            ["http://www.roblox.com/asset/?id=9648765536"] = "2",
        
            ["http://www.roblox.com/asset/?id=9648762863"] = "3",
        
            ["http://www.roblox.com/asset/?id=9648759883"] = "9",
        
            ["http://www.roblox.com/asset/?id=9648755440"] = "8",
        
            ["http://www.roblox.com/asset/?id=9648752438"] = "2",
        
            ["http://www.roblox.com/asset/?id=9648749145"] = "8",
        
            ["http://www.roblox.com/asset/?id=9648745618"] = "3",
        
            ["http://www.roblox.com/asset/?id=9648742013"] = "7",
        
            ["http://www.roblox.com/asset/?id=9648738553"] = "8",
        
            ["http://www.roblox.com/asset/?id=9648734698"] = "2",
        
            ["http://www.roblox.com/asset/?id=9648730082"] = "6",
        
            ["http://www.roblox.com/asset/?id=9648723237"] = "3",
        
            ["http://www.roblox.com/asset/?id=9648718450"] = "6",
        
            ["http://www.roblox.com/asset/?id=9648715920"] = "6",
        
            ["http://www.roblox.com/asset/?id=9648712563"] = "2"
        }
        
        local code = {}
        
        for _, img in ipairs(game:GetService("Workspace").Map:WaitForChild("CodeBrick"):WaitForChild("SurfaceGui"):GetDescendants()) do
          
          if img.Name == "IMGTemplate" then
            
            local ImageMatch = tostring(img.Image)
            local Digit = codes[ImageMatch]
        
            table.insert(code, Digit)
        
          end
        
        end
        
        local bunkercode = (code[1]..code[2]..code[3]..code[4])
    
        WindUI:Notify({
            Title = "Bunker Code",
            Content = "The code to the bunker is "..bunkercode,
            Duration = 3, -- 3 seconds
            Icon = "info",
        })

    end
})

_G.attackspeed = .55

local SlapSpeed = CTab:Dropdown({
    Title = "Slapping Speed",
    Values = { "Default", "High"},
    Value = "Default",
    Callback = function(speed) 

        if speed == "Default" then
        
            _G.attackspeed = .55
    
        elseif speed == "High" then
    
            _G.attackspeed = 0
    
        end

    end
})

spawn(function()
    
    while task.wait(.1) do
        
        if started then
            
            glove.Config.AttackCD.Value = _G.attackspeed

        end

    end

end)

local function UnderSet()
    
    local CFrameFull = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
    local CX = CFrameFull.X
    local CZ = CFrameFull.Z

    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(CX, -80, CZ)

end

local ItemESP = ITab:Dropdown({
    Title = "Item ESP",
    Values = {"Bull's essence", "True Power", "Potion of Strength", "Boba", "Bomb", "Forcefield Crystal", "Apple", "Bandage", "First Aid Kit", "Cube of Ice", "Frog Potion", "Speed Potion", "Lightning Potion", "Healing Potion"},
    Value = "Select...",
    Callback = function(item) 
        
        if game:GetService("Workspace"):WaitForChild("Items"):FindFirstChild(item) then
        
            for _, fitem in ipairs(game:GetService("Workspace"):WaitForChild("Items"):GetChildren()) do
                
                if fitem.Name == item and not fitem:FindFirstChildOfClass("Highlight") then
                    
                    Instance.new("Highlight").Parent = fitem
    
                end
    
            end
    
        else
    
            WindUI:Notify({
                Title = "Error",
                Content = "Could not find Item.",
                Duration = 3, -- 3 seconds
                Icon = "info",
            })
    
        end

    end
})

local TPdb = true

local function findNearest(name)

    local nearestDistance = 1000000

    local nearestItem

    for _, item in game:GetService("Workspace"):WaitForChild("Items"):GetChildren() do

        if item.Name == name then
            
            local distance = (item.Handle.Position - game:GetService("Players").LocalPlayer.Character.Torso.Position).Magnitude

            local bunkerDistance = (bunkerPart.Position - item.Handle.Position).Magnitude

            if distance < nearestDistance and bunkerDistance >= 110 then
                
                nearestDistance = distance
                nearestItem = item

            end

        end

    end

    return nearestItem
    
end

local function itemsAvailable()

    local ItemsPossible = 0

    for _, item in game:GetService("Workspace"):WaitForChild("Items"):GetChildren() do
        
        local bunkerDistance = (bunkerPart.Position - item.Handle.Position).Magnitude

        if bunkerDistance >= 110 then
            
            ItemsPossible = ItemsPossible + 1

        end

    end

    return ItemsPossible

end

local uncollectableList = {}

local function findNearestItem()

    local nearestDistance = 100000

    local nearestItem

    if itemsAvailable() == 0 then

        return 0

    else

    for _, item in game:GetService("Workspace"):WaitForChild("Items"):GetChildren() do
                
        local distance = (item.Handle.Position - game:GetService("Players").LocalPlayer.Character.Torso.Position).Magnitude

        local bunkerDistance = (bunkerPart.Position - item.Handle.Position).Magnitude

        if distance < nearestDistance and bunkerDistance >= 110 and uncollectableList[item] == false then
                    
            nearestDistance = distance
            nearestItem = item

        end

    end

    return nearestItem

    end
    
end

local function grabItemNoDB()

        local nItem = findNearestItem()

        if nItem == 0 then

            return 0

        end

        local distance = (game.Players.LocalPlayer.Character:WaitForChild("Torso").Position - nItem.Handle.Position).Magnitude

        local bunkerDistance = (bunkerPart.Position - nItem.Handle.Position).Magnitude

        local tweenTime = 3

        if distance >= 700 and distance <= 900 then
            
            tweenTime = 5

        elseif distance >= 900 and distance <= 1500 then

            tweenTime = 7

        elseif distance >= 1500 then

            tweenTime = 9

        end

        if bunkerDistance >= 110 then

        UnderSet()

        local itemCFrame = nItem.Handle.CFrame
        local ItemX = itemCFrame.X
        local ItemZ = itemCFrame.Z

        AcidPart.CanTouch = false
        LavaPart.CanTouch = false

        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {CFrame = CFrame.new(ItemX, -80, ItemZ)}):Play()
        
        task.wait(tweenTime)

        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {CFrame = CFrame.new(ItemX + 2, nItem.Handle.CFrame.Y + 3.5, ItemZ)}):Play()

        task.wait(1)

        local timespent = 0

        spawn(function()
            
            while task.wait(1) do
                
                timespent += 1

            end

        end)

        repeat

        game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)

        game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)

        task.wait(.05)

        until nItem.Parent ~= workspace:FindFirstChild("Items") or timespent == 3

        if timespent >= 3 then
            
            uncollectableList[nItem] = true

        end

        AcidPart.CanTouch = true
        LavaPart.CanTouch = true

        end

end

local ItemTP = ITab:Dropdown({
    Title = "Grab Nearest Item",
    Values = {"Bull's essence", "True Power", "Potion of Strength", "Boba", "Bomb", "Forcefield Crystal", "Apple", "Bandage", "First Aid Kit", "Cube of Ice", "Frog Potion", "Speed Potion", "Lightning Potion", "Healing Potion"},
    Value = "Select...",
    Callback = function(item) 

        if game:GetService("Workspace"):WaitForChild("Items"):FindFirstChild(item) and TPdb and started then
        
            TPdb = false
    
            local oldCFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            local oldX = oldCFrame.X
            local oldZ = oldCFrame.Z
    
            local nItem = findNearest(item)
    
            local distance = (game.Players.LocalPlayer.Character:WaitForChild("Torso").Position - nItem.Handle.Position).Magnitude
    
            local bunkerDistance = (bunkerPart.Position - nItem.Handle.Position).Magnitude
    
            local tweenTime = 4
    
            if distance >= 1500 and distance <= 3000 then
                
                tweenTime = 10
    
            elseif distance >= 3000 then
    
                tweenTime = 16
    
            end
    
            if bunkerDistance >= 110 then
    
            UnderSet()
    
            local itemCFrame = nItem.Handle.CFrame
            local ItemX = itemCFrame.X
            local ItemZ = itemCFrame.Z

            AcidPart.CanTouch = false
            LavaPart.CanTouch = false
    
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {CFrame = CFrame.new(ItemX, -80, ItemZ)}):Play()
            
            task.wait(tweenTime)
    
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {CFrame = CFrame.new(ItemX + 2, nItem.Handle.CFrame.Y + 3.5, ItemZ)}):Play()

            task.wait(1)

            local timespent = 0

            spawn(function()
                
                while task.wait(1) do
                    
                    timespent += 1

                end

            end)

            repeat
    
            task.wait(.1)

            game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)

            task.wait(.1)
    
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
    
            task.wait(.1)
    
            until nItem.Parent ~= workspace:FindFirstChild("Items") or timespent == 5
    
            UnderSet()
    
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(tweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = CFrame.new(oldX, -80, oldZ)}):Play()
    
            task.wait(tweenTime)
    
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldCFrame

            AcidPart.CanTouch = true
            LavaPart.CanTouch = true
    
            TPdb = true
    
            end
    
        else
    
        if started then

            WindUI:Notify({
                Title = "Error",
                Content = "Could not find Item.",
                Duration = 3, -- 3 seconds
                Icon = "info",
            })

        end
    
        end

    end
})

local graballdb = true

local GrabAll = ITab:Button({
    Title = "Grab All Items",
    Desc = "Smoothly teleports under the map and grabs all items.",
    Locked = false,
    Callback = function()

    if graballdb then

        graballdb = false

        local oldCFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
        local oldX = oldCFrame.X
        local oldZ = oldCFrame.Z

        repeat

            grabItemNoDB()

        until grabItemNoDB() == 0

        UnderSet()

        local distance = (game.Players.LocalPlayer.Character:WaitForChild("Torso").Position - oldCFrame.Position).Magnitude

        local tweenTime = 3

        if distance >= 1500 and distance <= 3000 then
            
            tweenTime = 6

        elseif distance >= 3000 then

            tweenTime = 8

        end

        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(tweenTime, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {CFrame = CFrame.new(oldX, -80, oldZ)}):Play()

        task.wait(tweenTime)

        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldCFrame

        graballdb = true

    end

    end
})

local SlapAura = CTab:Toggle({
    Title = "Slap Aura",
    Desc = "Slaps everybody up to 20 studs away from you.",
    Icon = "lucide:shield",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        
        _G.slapaura = state

    end
})

  auradistance = 20

  local AuraDistanceSlider = CTab:Slider({
    Title = "Slap Aura Distance",
    Step = 1,
    
    Value = {
        Min = 1,
        Max = 20,
        Default = 20,
    },
    Callback = function(value)
        auradistance = value
    end
})

local onExecTP = false

local UnderMap = Tab:Toggle({
    Title = "Go Under the Map",
    Desc = "Teleports you beneath the map allowing you to go around without being spotted.",
    Icon = "lucide:arrow-big-down",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        
        if state == true and onExecTP == true and started then
        
            local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    
            local x = hrp.CFrame.X
    
            local z = hrp.CFrame.Z
    
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,-80, z)
    
        elseif state == false and onExecTP == true and game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y < -50 and started then
    
            local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    
            local x = hrp.CFrame.X
    
            local z = hrp.CFrame.Z
    
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, 200, z)

        elseif onExecTP == false and started then
            
            onExecTP = true

        elseif game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y > -50 and state == false and started then

            WindUI:Notify({
                Title = "Error",
                Content = "You are already above ground.",
                Duration = 3, -- 3 seconds
                Icon = "info",
            })

        end

    end
})

local PickedPlayer = nil

local execProof = true

local Plr = PTab:Input({
    Title = "Player",
    Desc = "Usernames & display names allowed, you don't have to enter their full name and this is not case sensitive.",
    Value = "",
    InputIcon = "lucide:user",
    Type = "Input",
    Placeholder = "Enter text...",
    Callback = function(input) 
        
        local matches = {}

        for _, p in game:GetService("Players"):GetPlayers() do

            local inputlower = string.lower(input)
            local name = string.lower(p.Name)
            local dname = string.lower(p.DisplayName)

            if string.sub(name, 1, input:len()) == inputlower or string.sub(dname, 1, input:len()) == inputlower and started then

                table.insert(matches, p.Name)

            end

        end

        if #matches > 1 and execProof == false then
            
            WindUI:Notify({
                Title = "Error",
                Content = "Too many players match input.",
                Duration = 3, -- 3 seconds
                Icon = "info",
            })

        elseif #matches == 0 then

            WindUI:Notify({
                Title = "Error",
                Content = "Could not find any players matching input.",
                Duration = 3, -- 3 seconds
                Icon = "info",
            })

        elseif #matches == 1 then

            WindUI:Notify({
                Title = "Success",
                Content = "Player "..matches[1].." is now chosen.",
                Duration = 3, -- 3 seconds
                Icon = "info",
            })

            PickedPlayer = matches[1]

        elseif execProof == true then

            execProof = false

        end

    end
})

local killing = false

local KillPlayer = PTab:Button({
    Title = "Kill Player",
    Desc = "Kills player and then returns to the location you were at.",
    Locked = false,
    Callback = function()
        
        if game:GetService("Players"):FindFirstChild(PickedPlayer) and game:GetService("Players"):FindFirstChild(PickedPlayer).Character and not game:GetService("Players"):FindFirstChild(PickedPlayer).Character:FindFirstChild("Dead") and started then

        ItemTP:Lock()
        --GrabAll:Lock()
        killing = true

        local oldCFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
        local oldX = oldCFrame.X
        local oldZ = oldCFrame.Z

        local oldUnder = CFrame.new(oldX, -80, oldZ)

        local distance = (game.Players.LocalPlayer.Character:WaitForChild("Torso").Position - workspace:FindFirstChild(PickedPlayer):FindFirstChild("Torso").Position).Magnitude

        local tweenTime = 2

        if distance >= 1500 and distance <= 3000 then
            
            tweenTime = 4

        elseif distance >= 3000 then

            tweenTime = 6

        end

        UnderSet()

        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(tweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = workspace:FindFirstChild(PickedPlayer):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,-10,0)}):Play()

        glove.Parent = game.Players.LocalPlayer.Character

        task.wait(tweenTime)

        repeat
            
            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace:FindFirstChild(PickedPlayer):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,-10,0)

            game:GetService("ReplicatedStorage").Events.Slap:FireServer(game:GetService("Players"):FindFirstChild(PickedPlayer).Character:WaitForChild("Torso"))

            task.wait()

        until game:GetService("Players"):FindFirstChild(PickedPlayer) == nil or game:GetService("Players"):FindFirstChild(PickedPlayer).Character:FindFirstChild("Dead")

        UnderSet()

        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(tweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = oldUnder}):Play()

        task.wait(2)

        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldCFrame

        ItemTP:Unlock()
        --GrabAll:Unlock()
        killing = false

        elseif game:GetService("Players"):FindFirstChild(PickedPlayer) and game:GetService("Players"):FindFirstChild(PickedPlayer).Character and game:GetService("Players"):FindFirstChild(PickedPlayer).Character:FindFirstChild("Dead") and started then

            WindUI:Notify({
                Title = "Could not Kill Player",
                Content = "The selected player is already dead.",
                Duration = 3, -- 3 seconds
                Icon = "info",
            })

        end

    end
})

local TpPlayer = PTab:Button({
    Title = "Teleport To Player",
    Desc = "Teleports you to the Player.",
    Locked = false,
    Callback = function()
        
        if game:GetService("Players"):FindFirstChild(PickedPlayer) and game:GetService("Players"):FindFirstChild(PickedPlayer).Character then

            local plrCFrame = game:GetService("Players"):FindFirstChild(PickedPlayer).Character:WaitForChild("HumanoidRootPart").CFrame
            local plrX = plrCFrame.X
            local plrZ = plrCFrame.Z

            UnderSet()

            local distance = (game.Players.LocalPlayer.Character:WaitForChild("Torso").Position - game:GetService("Players"):FindFirstChild(PickedPlayer).Character:WaitForChild("Torso").Position).Magnitude

            local tweenTime = 2
    
            if distance >= 1500 and distance <= 3000 then
                
                tweenTime = 4
    
            elseif distance >= 3000 then
    
                tweenTime = 6
    
            end

            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(tweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = CFrame.new(plrX, -80, plrZ)}):Play()

            task.wait(tweenTime)

            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = plrCFrame * CFrame.new(0,10,0)

        end

    end
})

spawn(function()
    
    local locked = false

    while task.wait(.5) do
        
        if killing == true then
            
            TpPlayer:Lock()
            locked = true

        elseif killing == false and locked == true then

            TpPlayer:Unlock()
            locked = false

        end

    end

end)

local AutoHeal = Tab:Toggle({
    Title = "Auto-Heal",
    Desc = "Automatically uses a healing item when HP is below 30.",
    Icon = "lucide:heart-plus",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        
        _G.autoheal = state

    end
})

local sDB = false

local SpectatePlayer = PTab:Toggle({
    Title = "Spectate Player",
    Desc = "Makes you view the player.",
    Locked = false,
    Icon = "lucide:eye",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        
        if sDB and game:GetService("Players"):FindFirstChild(PickedPlayer) and game:GetService("Workspace"):FindFirstChild(PickedPlayer):FindFirstChild("Humanoid") and state == true then
            
            workspace.CurrentCamera.CameraSubject = game:GetService("Workspace"):FindFirstChild(PickedPlayer):FindFirstChild("Humanoid")

            spawn(function()
            
                repeat
                    
                    task.wait(.5)
    
                until game:GetService("Workspace"):FindFirstChild(PickedPlayer):FindFirstChild("Humanoid") == nil
    
                workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
    
            end)

        elseif sDB and state == false then

            workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")

        elseif sDB == false then

            sDB = true
        
        end

    end
})

local RJMatchmaking = Tab:Button({
    Title = "Rejoin Matchmaking",
    Desc = "Teleports you to a matchmaking server.",
    Locked = false,
    Callback = function()
        
        game:GetService("TeleportService"):Teleport(9426795465, game.Players.LocalPlayer)

    end
})

  spawn(function()
    
    local localPlayer = game.Players.LocalPlayer
    local Players = game.Players

    while task.wait() do

        if localPlayer.Backpack:FindFirstChildOfClass("Tool") and localPlayer.Backpack:FindFirstChildOfClass("Tool"):FindFirstChild("Glove") and started == false then

            started = true
            print("Glove found.")

        elseif localPlayer.Character:FindFirstChildOfClass("Tool") and localPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Glove") and started == false then

            started = true
            print("Glove found.")

        end

      if _G.slapaura == true and started then
      for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer then
          local char1 = localPlayer.Character
          local char2 = player.Character
    
          if char1 and char2.Ragdolled.Value == false and char1:FindFirstChild("HumanoidRootPart") and not char1:FindFirstChild("Dead") and char2 and char2:FindFirstChild("HumanoidRootPart") and char2.Ragdolled.Value == false and not char2:FindFirstChild("Dead") then
            local pos1 = char1.HumanoidRootPart.Position
            local pos2 = char2.HumanoidRootPart.Position
    
            local distance = (pos1 - pos2).Magnitude
            if distance <= auradistance then
              game:GetService("ReplicatedStorage").Events.Slap:FireServer(char2.Torso)
            end
          end
        end
      end
      end

    end

  end)

  spawn(function()
    
    while task.wait() do

        local localPlayer = game.Players.LocalPlayer
        local Players = game.Players

        if _G.autoheal == true then

            task.wait(.2)
            
            if localPlayer.Character.Humanoid.Health <= 50 then

                for _, item in ipairs(localPlayer.Backpack:GetChildren()) do
                    
                    if item.Name == "Apple" or item.Name == "Bandage" or item.Name == "First Aid Kit" or item.Name == "Healing Potion" and healed == false and healdb == false then

                        item.Parent = localPlayer.Character

                        item:Activate()

                        break

                    end

                end

            end

        end

    end

  end)

end -- END OF SR SCRIPT, CODE MUST BE WITHIN THIS IF STATEMENT
