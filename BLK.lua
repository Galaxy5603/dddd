local A_1 = "BLK_Galaxie V1"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)

AutoNormalChat = true
prefix = "/" -- if put "" you won't need any prefix

repeat
    wait()
until(game:IsLoaded())
local chatcmds
if CmdsLoaded then
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Galaxie CMDS",
        Text = ""}
    )
    wait(999999999999)
end
getgenv().CmdsLoaded = true
repeat
    wait()
until(game.Players.LocalPlayer.Character)
repeat
    wait()
until(game.Players.LocalPlayer.Character:FindFirstChild("Block"))
-- black list checker
    local BlackListcheck = loadstring(game:HttpGet("https://raw.githubusercontent.com/Galaxy5603/BLK_BlackList/main/BlackList.lua", true))()
if BlackListcheck[game:service("Players").LocalPlayer.UserId] then
    -- wipe script
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "BlackListed !",
        Text = "Sorry you can't use my cmds."})
        wait(.5)
        game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer()
else

    -- script after blacklist passed
    local StarterGui = game:GetService("StarterGui")
    coroutine.wrap(function()
        StarterGui:SetCore("SendNotification", {
            Title = "BLK CMDS V1",
            Text = "Updating 2024",
            Icon = "http://www.roblox.com/asset/?id=17899743384",
            Duration = 10}
        )
        wait(1)
        StarterGui:SetCore("SendNotification", {
            Title = "CMDS TO HAVE",
            Text = "67",
            Duration = 2}
        )
    end){}

    _G.Version = 2

    local function GetPlayer(string)
        local lower = string:lower()
        for _, otherplr in next, game.Players:GetPlayers() do
            if otherplr.Name:sub(1,#string):lower() == lower or otherplr.DisplayName:sub(1,#string):lower() == lower then
                return otherplr
            end
        end
    end

    local function GetNpc(string)
        local lower = string:lower()
        for _, npc in next, game.workspace.Live:GetChildren() do
            if npc.Name:sub(1,#string):lower() == lower then
                if not npc:FindFirstChild("PowerOutput") then
                    return npc
                end
            end
        end
    end

    local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()
    local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
    local filename = "new_plr(cmds).txt"
    local filename2 = "version.txt"
    local json
    local HttpService = game:GetService("HttpService")
    _G.SpamBeans = false
    _G.Noslow = false
    _G.Godmod = false
    _G.dc = false
    _G.Anchored = false
    _G.Stop = false
    _G.kitrackspamstop = true
    _G.kispamstop = true
    _G.Hanchorstop = false
    _G.AlrClicked = false

    local function Distance(v1, v2)
        return(v1-v2).Magnitude
    end

    local function isnewplayer()
        if isfile(filename) then
            if isfile(filename2) then
                FileVersion = HttpService:JSONDecode(readfile(filename2))
                if FileVersion ~= _G.Version then
                    json = HttpService:JSONEncode(_G.Version)
                    writefile(filename2, json)
                    local newver = Instance.new("Message", game.CoreGui)
                    newver.Text = "BLK_Galaxy Creator = blk_cmds use /cmds for get the cmds"
                    wait(5)
                    if newver then
                        newver:Destroy()
                    end
                end
            else
                if (writefile)then
                    json = HttpService:JSONEncode(_G.Version)
                    writefile(filename2, json)
                    wait(.5)
                    local newver = Instance.new("Message", game.CoreGui)
                    newver.Text = "BLK_Galaxie Creator = blk_cmds use /cmds for get the cmds"
                    wait(5)
                    if newver then
                        newver:Destroy()
                    end
                end
            end
            PlayerName = HttpService:JSONDecode(readfile(filename))
            if PlayerName == plr.Name then
                print("welcome back mate")
            end
        else
            if (writefile) then
                json = HttpService:JSONEncode(plr.Name)
                writefile(filename, json)
            else
                StarterGui:SetCore("SendNotification", {
                    Title = "Executor cannot support this script !",
                    Text = "Sorry man you gotta use krnl or smth."}
                )
            end

    isnewplayer()
    coroutine.wrap(function()
        while wait() do
            pcall(function()
                if AutoNormalChat == true then
                    plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
                    plr.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0, 290)
                end
                if plr.PlayerGui.HUD.Bottom.SideMenu.Tutorial:FindFirstChild("TextLabel") then
                        plr.PlayerGui.HUD.Bottom.SideMenu.Tutorial.TextLabel.Text = plr.name
                    if plr.PlayerGui.HUD.Bottom.SideMenu.Stats.TextLabel then
                        plr.PlayerGui.HUD.Bottom.SideMenu.Stats.TextLabel.Text = "Stats"
                    end
                    if plr.PlayerGui.HUD.Bottom.SideMenu.Skills.TextLabel then
                        plr.PlayerGui.HUD.Bottom.SideMenu.Skills.TextLabel.Text = "Skillz"
                    end
                    if plr.PlayerGui.HUD.Bottom.SideMenu.Character.TextLabel then
                        plr.PlayerGui.HUD.Bottom.SideMenu.Character.TextLabel.Text = "Skin"
                    end
                    if plr.PlayerGui.HUD.Bottom.SideMenu.Shop.TextLabel then
                        plr.PlayerGui.HUD.Bottom.SideMenu.Shop.TextLabel.Text = "To expensive"
                    end
                end
            end)
        end
    end){}

    local function hairgm()
    plr.Character.Parent = game.Workspace.Effects
    wait()
    local args1 = game:GetService("Workspace").FriendlyNPCs["Hair Stylist"]
    plr.Backpack.ServerTraits.ChatStart:FireServer(args1)
    wait(.30)
    local args = {[1] = {[1] = "Yes",},}
    plr.Backpack.ServerTraits.ChatAdvance:FireServer(unpack(args))
    game.RunService.Stepped:connect(function()
        pcall(function()
            plr.PlayerGui.Setup.Enabled = false
        end)
    end)
    end

    local function queue()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to queue!",
            Text = "Enjoy"}
        )
        game:GetService("TeleportService"):Teleport(3565304751)
    end

    local function earth()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to earth!",
            Text = "might be laggy there"}
        )
        game:GetService("TeleportService"):Teleport(536102540)
    end

    local function namek()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to namek!",
            Text = "try to don't die to frieza LOL"}
        )
        game:GetService("TeleportService"):Teleport(882399924)
    end

    local function space()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to space!",
            Text = "what are you doing here? helping noobs ? *pff*"}
        )
        game:GetService("TeleportService"):Teleport(478132461)
    end

    local function future()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to future!",
            Text = "tf are you doing there"}
        )
        game:GetService("TeleportService"):Teleport(569994010)
    end

    local function secret()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to secret world!",
            Text = "I bet you're helping someone"}
        )
        game:GetService("TeleportService"):Teleport(2046990924)
    end

    local function zaros()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to zaros!",
            Text = "this world is trash why do you want to go there ???"}
        )
        game:GetService("TeleportService"):Teleport(2651456105)
    end

    local function heaven()
        StarterGui:SetCore("SendNotification", {
            Title = "Taking you to heaven!",
            Text = "look at this mf HE'S DEAD LMAOO"}
        )
        game:GetService("TeleportService"):Teleport(3552157537)
    end

    local function noslow()
        if _G.Noslow == false then
            _G.Noslow = true
            StarterGui:SetCore("SendNotification", {
            Title = "Noslow Activated",
            Text = "WOAHHHH"}
            )
            _G.runnoslow = game:GetService("RunService").Stepped:connect(function()
                for i, x in pairs(plr.Character:GetDescendants()) do
                    if x.Name == "Block" then
                        x.Value = false
                    end
                    if x.Name == "Action" or x.Name == "Activity" or x.Name == "Attacking" or x.Name == "Using" or x.Name == "hyper" or x.Name == "Hyper" or x.Name == "KiBlasted" or x.Name == "heavy" or x.Name == "NotHardBack" or x.Name == "Tele" or x.Name == "Blocked" or x.Name == "tele" or x.Name == "Killed" or x.Name == "Slow" then
                        x:Destroy()
                    end
                end
            end)
        elseif _G.Noslow == true then
            _G.Noslow = false
            _G.runnoslow:Disconnect()
            StarterGui:SetCore("SendNotification", {
                Title = "Noslow Deactivated",
                Text = "RIP"}
            )
        end
    end

    local function godmod()
        if _G.Godmod == false then
            _G.Godmod = true
                _G.gm = game.RunService.Stepped:Connect(function()
                firetouchinterest(plr.Character.HumanoidRootPart, game.Workspace.Touchy.Part, 0)
                firetouchinterest(plr.Character.HumanoidRootPart, game.Workspace.Touchy.Part, 1)
                if plr.PlayerGui:FindFirstChild("Popup") then
                    plr.PlayerGui.Popup:Destroy()
                end
            end)
            StarterGui:SetCore("SendNotification", {
                Title = "GodMode Activated",
                Text = "hell yeah"}
            )
        elseif _G.Godmod == true then
            _G.Godmod = false
            _G.gm:Disconnect()
            StarterGui:SetCore("SendNotification", {
                Title = "GodMode Deactivated",
                Text = "hell no"}
            )
        end
    end

    local function invis()
        StarterGui:SetCore("SendNotification", {
            Title = "you are now invisible",
            Text = "*stealth*"}
        )
        plr.Backpack["Flash Strike"].Parent = plr.Character
        wait(.1)
        plr.Character["Flash Strike"].Activator.Animation:Destroy()
        plr.Character["Flash Strike"]:Activate()
    end

    local function toprespawn()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "T.O.P. respawn",
            Text = "Its auto so ez:"}
        )
        while wait() do
            if plr.Character.Humanoid.Health <= 1 then
                plr.Character.SuperAction:Destroy()
                wait(.1)
                game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {CFrame = CFrame.new(100, 100, 100)}):Play()
            end
        end
    end

    local function rejoin()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end

    local function hardreset()
        pcall(function()
            game.workspace.Effects[plr.name].UpperTorso:Destroy()
        end)
        plr.Character.UpperTorso:Destroy()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "reseted!",
            Text = "ugh"}
        )
        end

    local function respawn(place)
        local race = plr.Character.Race.Value
        if game.PlaceId == 536102540 and race == "Android" or race == "Human" or race == "Saiyan" then
            if plr.Character:FindFirstChild("Block") then
                local args = {[1] = workspace.FriendlyNPCs:FindFirstChild("Hair Stylist")}
                plr.Backpack.ServerTraits.ChatStart:FireServer(unpack(args))
                wait(.3)
                local args = {[1] = {[1] = "Yes"}}
                plr.Backpack.ServerTraits.ChatAdvance:FireServer(unpack(args))
                wait(.3)
                local args = {[1] = "woah"}
                plr.Backpack.HairScript.RemoteEvent:FireServer(unpack(args))
            end
        elseif plr.Character:FindFirstChild("Block") then
            plr.Character.UpperTorso:Destroy()
        end
        game.RunService.RenderStepped:Connect(function()
            if not plr.Character:FindFirstChild("Block") then
                if plr.Character:FindFirstChild("HumanoidRootPart") then
                    plr.Character.HumanoidRootPart.CFrame = place
                end
            end
        end)
    end

    local function hidelevel()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "hiding level",
            Text = ""}
        )
        game.RunService.Stepped:connect(function()
            if plr.Character:FindFirstChildOfClass("Model") then
                plr.Character:FindFirstChildOfClass("Model"):Destroy()
            end
        end)
    end

    local function antiqueue()
        if game.Workspace.Wormhole:FindFirstChild("TouchInterest") then
            game.Workspace.Wormhole.TouchInterest:Destroy()
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "AntiQueue on",
            Text = ""}
            )
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "AntiQueue is already on",
                Text = ""}
                )
        end
    end

    local function dragoncrush()
        _G.dc = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "Go near someone and press n, yeah that's all"}
        )
        mouse.KeyDown:connect(function(key)
            if key == "n" then
                plr.Character.Humanoid:EquipTool(plr.Backpack["Dragon Crush"])
                pcall(function()
                    game.workspace.Effects[plr.Name]["Dragon Crush"].Activator["Flip"]:Destroy()
                end)
                plr.Character["Dragon Crush"].Activator["Flip"]:Destroy()
                plr.Character["Dragon Crush"]:Activate()
            end
        end)
    end

    local function dragonthrow()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "Go near someone and press J, yeah that's all"}
        )
        mouse.KeyDown:connect(function(key)
            if key == "j" then
                plr.Character.Humanoid:EquipTool(plr.Backpack["Dragon Throw"])
                pcall(function()
                    game.workspace.Effects[plr.Name]["Dragon Throw"].Activator["Flip"]:Destroy()
                end)
                if plr.Character["Dragon Throw"].Activator:FindFirstChild("Flip") then
                    plr.Character["Dragon Throw"].Activator["Flip"]:Destroy()
                end
                plr.Character["Dragon Throw"]:Activate()
            end
        end)
    end

    local function bonecrush()
    game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "Go near someone press K."}
        )
        mouse.KeyDown:connect(function(key)
            if key == "k" then
                plr.Character.Humanoid:EquipTool(plr.Backpack["Bone Crush"])
                pcall(function()
                    game.workspace.Effects[plr.Name]["Bone Crush"].Activator.Crash:Destroy()
                end)
                if plr.Character["Bone Crush"].Activator:FindFirstChild("Crash") then
                    plr.Character["Bone Crush"].Activator["Crash"]:Destroy()
                end
                plr.Character["Bone Crush"]:Activate()
            end
        end)
    end

    local function freeze()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "Go near someone and press O"}
        )
        mouse.KeyDown:connect(function(key)
            if key == "o" then
                plr.Character.Humanoid:EquipTool(plr.Backpack["Dragon Crush"])
                pcall(function()
                    game.workspace.Effects[plr.Name]["Dragon Crush"].Activator["Flip"]:Destroy()
                end)
                if plr.Character["Dragon Crush"].Activator:FindFirstChild("Flip") then
                    plr.Character["Dragon Crush"].Activator["Flip"]:Destroy()
                end
                plr.Character["Dragon Crush"]:Activate()
                wait(.1)
                game:GetService("TeleportService"):Teleport(game.PlaceId)
            end
        end)
    end

    local function removewings()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "removing wings",
            Text = ""}
        )
        game.RunService.Stepped:connect(function()
            if plr.Character.RebirthWings:FindFirstChild("Handle") then
                plr.Character.RebirthWings.Handle:Destroy()
            end
        end)
    end

    local function dragonqueue()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "go near someone and press L"}
        )
        if game.PlaceId == 536102540 then
            mouse.KeyDown:connect(function(key)
                if key == "l" then
                    plr.Character.Humanoid:EquipTool(plr.Backpack["Dragon Crush"])
                    pcall(function()
                        game.workspace.Effects[plr.Name]["Dragon Crush"].Activator["Flip"]:Destroy()
                    end)
                    if plr.Character["Dragon Crush"].Activator:FindFirstChild("Flip") then
                        plr.Character["Dragon Crush"].Activator["Flip"]:Destroy()
                    end
                    plr.Character["Dragon Crush"]:Activate()
                    wait(.5)
                    game.TweenService:Create(plr.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear), {CFrame = CFrame.new(2656.27, 3943.92, -2516)}):Play()
                    antiqueue()
                end
            end)
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Dumb Ass",
                Text = "Why would you queue throw outside of earth ?"}
            )
        end
    end

    local function normalchat()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "normal chat activated",
            Text = "you can see everyones message now ;)"}
        )
        plr.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
        plr.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0, 290)
    end

    local function lifedisplay()
        game.RunService.Stepped:connect(function()
            plr.PlayerGui.HUD.Bottom.SP.Visible = true
            plr.PlayerGui.HUD.Bottom.SP.Text = math.floor(plr.Character.Humanoid.health)
        end)
    end

local function whisanim()
    local player = game.Players.LocalPlayer
    local Animate
    local Humanoid = player.Character:FindFirstChild('Humanoid')
    local Animation = Instance.new("Animation", player.Character)
      Animation.AnimationId = "rbxassetid://1040582223"
      Animate = Humanoid:LoadAnimation(Animation)
      Animate:Play()
      end

local function snakeworlanim()
    local player = game.Players.LocalPlayer
    local Animate
    local Humanoid = player.Character:FindFirstChild('Humanoid')
    local Animation = Instance.new("Animation", player.Character)
      Animation.AnimationId = "rbxassetid://5302520609"
      Animate = Humanoid:LoadAnimation(Animation)
      Animate:Play()
      end



local function beerusanim()
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
    local Animate
    local Humanoid = player.Character:FindFirstChild('Humanoid')
    local Animation = Instance.new("Animation", player.Character)
      Animation.AnimationId = "rbxassetid://1171558651"
      Animate = Humanoid:LoadAnimation(Animation)
      Animate:Play()
end

local function babaidleanim()
    local player = game.Players.LocalPlayer
    local Animate
    local Humanoid = player.Character:FindFirstChild('Humanoid')
    local Animation = Instance.new("Animation", player.Character)
      Animation.AnimationId = "rbxassetid://1088881665"
      Animate = Humanoid:LoadAnimation(Animation)
      Animate:Play()
end

    local function movespam()
        Move1 = "Meteor Crash"
        Move2 = "Anger Rush"
        Move3 = "Kick Barrage"
        Move4 = "Deadly Dance"
        Move5 = ""
        Move6 = "Flash Strike"
        Move7 = ""
        Move8 = "God Slicer"
        Move9 = "TS Molotov"
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "Press b to enable."}
        )
        _G.on = false
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "Press j to enable or disable."}
        )
        mouse.KeyDown:connect(function(key)
            if _G.Noslow == false then
                noslow()
            end
            if key == "j" then
                if _G.on == false then
                    _G.on = true
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "spam = on",
                        Text = ""}
                    )
                    spawn(function()
                        while wait() do
                            if _G.on == false then
                                break
                            end
                            for i, v in pairs(plr.Backpack:GetChildren()) do
                                if  v.Name == Move1 or v.Name == Move2 or v.Name == Move3 or v.Name == Move4 or v.Name == Move5 or v.Name == Move6 or v.Name == Move7 or v.Name == Move8 or v.Name == Move9 then
                                    v.Parent = plr.Character
                                    v:Activate()
                                    wait()
                                    v.Parent = plr.Backpack
                                    plr.Backpack.ServerTraits.EatSenzu:FireServer("")
                                end
                            end
                        end
                    end)
                elseif _G.on == true then
                    _G.on = false
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "spam = off",
                        Text = ""}
                    )
                end
            end
        end)
    end

    local function antibc()
        StarterGui:SetCore("SendNotification", {
            Title = "Antibc",
            Text = "OH YEAH"}
        )
        game.RunService.Stepped:connect(function()
            if plr.Character.LowerTorso:FindFirstChild("BodyVelocity") then
                plr.Character.LowerTorso.BodyVelocity:Destroy()
            end
        end)
    end


    local function antikb()
        StarterGui:SetCore("SendNotification", {
            Title = "Antiknockback",
            Text = "Less goo"}
        )
        game.RunService.Stepped:connect(function()
            if plr.Character.Head:FindFirstChild("KnockBacked") then
                plr.Character.Head.KnockBacked:Destroy()
            end
        end)
    end

    local function speed()
        StarterGui:SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "PRESS Q WHILE MOVING"}
        )
        StarterGui:SetCore("SendNotification", {
            Title = "Speed is here",
            Text = "GO HYPER SPEED"}
        )
        down = false
        velocity = Instance.new("BodyVelocity")
        velocity.maxForce = Vector3.new(10000000, 0, 10000000)
        local speed = 5000
        gyro = Instance.new("BodyGyro")
        gyro.maxTorque = Vector3.new(10000000, 0, 10000000)
        local hum = plr.Character.Humanoid
        function onButton1Down(mouse)
            down = true
            velocity.Parent = plr.Character.UpperTorso
            velocity.velocity = (hum.MoveDirection) * speed
            gyro.Parent = plr.Character.UpperTorso
            while down do
                if not down then
                    break
                end
                velocity.velocity = (hum.MoveDirection) * speed
                local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
                gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
                wait(.1)
            end
        end
        function onButton1Up(mouse)
            velocity.Parent = nil
            gyro.Parent = nil
            down = false
        end
        function onSelected(mouse)
            mouse.KeyDown:connect(function(k)
                if k:lower()=="q" then
                    onButton1Down(mouse)
                end
            end)
            mouse.KeyUp:connect(function(k)
                if k:lower()=="q" then
                    onButton1Up(mouse)
                end
            end)
        end
        onSelected(plr:GetMouse())
    end

    local function kispam()
        if _G.kispamstop then
            _G.kispamstop = false
        else
            _G.kispamstop = true
        end
        while wait() do
            if _G.kispamstop then
                break
            end
            for i, Move in pairs(plr.PlayerGui.HUD.Bottom.Skills.KiAttacksX.ScrollingFrame:GetChildren()) do
                for i, v in pairs(plr.Backpack:GetChildren()) do
                    if v.Name == Move.name then
                        if plr.Character.Humanoid.Health <= 0 then
                            break
                        end
                        v.Parent = plr.Character
                        v:Activate()
                        v:Deactivate()
                    wait()
                        v.Parent = plr.Backpack
                    plr.Backpack.ServerTraits.EatSenzu:FireServer("")
                    end
                end
            end
        end
    end


    local function Slot()
        local oldposit = plr.Character.HumanoidRootPart.CFrame
        local args = {[1] = workspace.FriendlyNPCs:FindFirstChild("Character Slot Changer")}
        plr.Backpack.ServerTraits.ChatStart:FireServer(unpack(args))
        wait(.4)
        local args = {[1] = {[1] = "Yes"}}
        plr.Backpack.ServerTraits.ChatAdvance:FireServer(unpack(args))
        wait(.4)
        local args = {[1] = {[1] = "k"}}
        plr.Backpack.ServerTraits.ChatAdvance:FireServer(unpack(args))
        wait(4)
        rsp = game.RunService.Stepped:connect(function()
            if not plr.PlayerGui:FindFirstChild("HUD") then
                if plr.Character:FindFirstChild("HumanoidRootPart") then
                    plr.Character.HumanoidRootPart.CFrame = oldposit
                end
            else
                rsp:Disconnect()
            end
        end)
    end

    local function lockplr()
        warn("This isn't mine, comeone made this for me.")
        print("This isn't mine, comeone made this for me.")
        StarterGui:SetCore("SendNotification", {
            Title = "HOW TO USE",
            Text = "Press v to lock/unlock someone"}
        )
        local plrs = game:GetService("Players")
        local TeamBased = false
        local teambasedswitch = "k"
        local presskeytoaim = true
        local aimkey = "v"
        local raycast = false

        local espupdatetime = 5
        autoesp = false

        local lockaim = true
        local lockangle = 5

        local Gui = Instance.new("ScreenGui")
        local Move = Instance.new("Frame")
        local Main = Instance.new("Frame")
        local st1 = Instance.new("TextLabel")
        local st1_2 = Instance.new("TextLabel")
        local st1_3 = Instance.new("TextLabel")
        local Name = Instance.new("TextLabel")


        local plrsforaim = {}

        Move.Draggable = true
        Gui.ResetOnSpawn = false
        Gui.Name = "Chat"
        Gui.DisplayOrder = 999

            Gui.Parent = plr.PlayerGui


        f = {}

        local cam = game.Workspace.CurrentCamera

        local switch = false
        local key = "k"
        local aimatpart = nil
        mouse.KeyDown:Connect(function(a)
            if a == "t" then
                f.addesp()
            elseif a == "v" then
                if raycast == true then
                    raycast = false
                else
                    raycast = true
                end
            elseif a == "l" then
                if autoesp == false then
                    autoesp = true
                else
                    autoesp = false
                end
            end
            if a == key then
                if switch == false then
                    switch = true
                else
                    switch = false
                    if aimatpart ~= nil then
                        aimatpart = nil
                    end
                end
            elseif a == teambasedswitch then
                if TeamBased == true then
                    TeamBased = false
                    teambasedstatus.Text = tostring(TeamBased)
                else
                    TeamBased = true
                    teambasedstatus.Text = tostring(TeamBased)
                end
            elseif a == aimkey then
                if not aimatpart then
                    local maxangle = math.rad(20)
                    for i, v in pairs(plrs:GetChildren()) do
                        if v.Name ~= plr.Name and v.Character and v.Character.Head and v.Character.Humanoid and v.Character.Humanoid.Health > 1 then
                            if TeamBased == true then
                                if v.Team.Name ~= plr.Team.Name then
                                    local an = checkfov(v.Character.Head)
                                    if an < maxangle then
                                        maxangle = an
                                        aimatpart = v.Character.Head
                                    end
                                end
                            else
                                local an = checkfov(v.Character.Head)
                                    if an < maxangle then
                                        maxangle = an
                                        aimatpart = v.Character.Head
                                    end
                            end
                            v.Character.Humanoid.Died:Connect(function()
                                if aimatpart.Parent == v.Character or aimatpart == nil then
                                    aimatpart = nil
                                end
                            end)
                        end
                    end
                else
                    aimatpart = nil
                end
            end
        end)

        function getfovxyz (p0, p1, deg)
            local x1, y1, z1 = p0:ToOrientation()
            local cf = CFrame.new(p0.p, p1.p)
            local x2, y2, z2 = cf:ToOrientation()
            if deg then
            else
                return Vector3.new((x1-x2), (y1-y2), (z1-z2))
            end
        end

        function getaimbotplrs()
            plrsforaim = {}
            for i, v in pairs(plrs:GetChildren()) do
                if v.Character and v.Character.Humanoid and v.Character.Humanoid.Health > 0 and v.Name ~= plr.Name and v.Character.Head then
                    if TeamBased == true then
                        if v.Team.Name ~= plr.Team.Name then
                            local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, v.Character.Head.CFrame.p)
                            local r = Ray.new(cf, cf.LookVector * 10000)
                            local ign = {}
                            for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
                                if v:IsA("BasePart") then
                                    table.insert(ign , v)
                                end
                            end
                            local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
                            if obj.Parent == v.Character and obj.Parent ~= plr.Character then
                                table.insert(plrsforaim, obj)
                            end
                        end
                    else
                        local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, v.Character.Head.CFrame.p)
                        local r = Ray.new(cf, cf.LookVector * 10000)
                        local ign = {}
                        for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
                            if v:IsA("BasePart") then
                                table.insert(ign , v)
                            end
                        end
                        local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
                        if obj.Parent == v.Character and obj.Parent ~= plr.Character then
                            table.insert(plrsforaim, obj)
                        end
                    end
                end
            end
        end

        function aimat(part)
            cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
        end
        function checkfov (part)
            local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
            local angle = math.abs(fov.X) + math.abs(fov.Y)
            return angle
        end

        game:GetService("RunService").Stepped:Connect(function()
            if aimatpart then
                aimat(aimatpart)
                if aimatpart.Parent == plr.Character then
                    aimatpart = nil
                end
            end
            if raycast == true and switch == false and not aimatpart then
                getaimbotplrs()
                aimatpart = nil
                local maxangle = 999
                for i, v in ipairs(plrsforaim) do
                    if v.Parent ~= plr.Character then
                        local an = checkfov(v)
                        if an < maxangle and v ~= plr.Character.Head then
                            maxangle = an
                            aimatpart = v
                            v.Parent.Humanoid.Died:connect(function()
                                aimatpart = nil
                            end)
                        end
                    end
                end
            end
        end)
        delay(0, function()
            while wait(espupdatetime) do
                if autoesp == true then
                    pcall(function()
                        f.addesp()
                    end)
                end
            end
        end)
    end

    local function trashglitch()
        StarterGui:SetCore("SendNotification", {
            Title = "trash someone",
            Text = "ez"}
        )
        if plr.Character.HumanoidRootPart:FindFirstChild("VanishParticle") then
            plr.Character.HumanoidRootPart.VanishParticle:Destroy()
        end
    end

    local function AutoGod()
        StarterGui:SetCore("SendNotification", {
            Title = "whenever you're low boom god",
            Text = "les gooo woooo"}
        )
        game.RunService.Stepped:connect(function()
            if plr.Character.Humanoid.Health <= plr.Character.Humanoid.MaxHealth * 0.2 then
                plr.Backpack.ServerTraits.Transform:FireServer("g")
            end
        end)
    end

    local function DirectGod()
        local oldcframe = plr.Character.HumanoidRootPart.CFrame
        game:GetService("ReplicatedStorage").ResetChar:FireServer()
        plr.Backpack.ServerTraits.Use:InvokeServer(plr.Character.Ki.Value)
        wait(.1)
        plr.Backpack.ServerTraits.Transform:FireServer("g")
        StarterGui:SetCore("SendNotification", {
            Title = "Boom you in god form",
            Text = "or smth else idk"}
        )
        wait(4.8)
        for i = 1, 10 do
            plr.Character.HumanoidRootPart.CFrame = oldcframe
            wait()
        end
    end

    local function spambeans()
        if _G.SpamBeans == false then
            _G.SpamBeans = true
            StarterGui:SetCore("SendNotification", {
                Title = "Bean Spam Activated",
                Text = ""}
            )
        else
            _G.SpamBeans = false
            StarterGui:SetCore("SendNotification", {
                Title = "Bean Spam Deactivated",
                Text = ""}
            )
        end
        coroutine.wrap(function()
            while wait() do
                if _G.SpamBeans == false then
                    break
                end
                plr.Backpack.ServerTraits.EatSenzu:FireServer("")
            end
        end){}
    end

    local function hitinbroly()
        if game.PlaceId == 2050207304 then
            if plr.Character:FindFirstChild("team damage") then
                plr.Character["team damage"]:Destroy()
                StarterGui:SetCore("SendNotification", {
                    Title = "Team Damage was destroyed!",
                    Text = "Great you can kill other players now"}
                )
            end
        end
    end

    local function Lag()
        noslow()
        coroutine.wrap(DirectGod){}
        kispam()
    end

    local function AntiGrab()
        StarterGui:SetCore("SendNotification", {
            Title = "AntiGrab on",
            Text = "ez glitchers"}
        )
        while wait() do
            if plr.Character:FindFirstChild("MoveStart") then
                pcall(function()
                    oldpos = plr.Character.HumanoidRootPart
                    StarterGui:SetCore("SendNotification", {
                        Title = "Respawning with antigrab",
                        Text = "great job antigrab"}
                    )
                    respawn(plr.Character.HumanoidRootPart.CFrame)
                end)
            end
        end
    end

    local function oldFly()
        local oldposi = plr.Character.HumanoidRootPart.CFrame
        if _G.dc == false then
            dragoncrush()
        end
        if plr.Character:FindFirstChild("PowerOutput") then
            plr.Character.PowerOutput:Destroy()
        end
        wait(.1)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(0, 10000000000, 0)
        wait(.1)
        if plr.Character.UpperTorso:FindFirstChild("Waist") then
            plr.Character.UpperTorso.Waist:Destroy()
        end
        wait(.5)
        plr.Character.HumanoidRootPart.CFrame = oldposi
    end

    local function Infyield()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end

    local function Broly()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Galaxy5603/Auto-Broly-Cmds/main/Galaxy%20Auto%20Broly%20Ki%20Dmg.txt'),true))()
    end

        local function AutoFarm()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Galaxy5603/AUTO-FARM-/main/BLK_Galaxy%20AUTO%20FARM.txt'),true))()
    end

           local function AutoTop()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Galaxy5603/AutoTop/main/Galaxy_Auto_Top_V3.lua'),true))()
    end

           local function HelpQuest1()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Galaxy5603/Heaven/main/Help%20Quest%201.txt'),true))()
    end

           local function HelpQuest2()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Galaxy5603/Heaven/main/Help%20Quest%202.txt'),true))()
    end

           local function HelpQuest3()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Galaxy5603/Heaven/main/Help%20Quest%203%20.txt'),true))()
    end

          local function Shaders()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Galaxy5603/CmdsTheme/main/CmdsGalaxyShaders'),true))()
    end

          local function galaxy()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/FortniBloxYT1/Shaders/main/Galaxy%20Shader'),true))()
    end

          local function Dark()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/FortniBloxYT1/Shaders/main/Dark'),true))()
    end

          local function Jps()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/FortniBloxYT1/Shaders/main/Japanese'),true))()
    end


    local function anchor()
        if _G.Anchored == false then
            _G.Anchored = true
            if plr.Character:FindFirstChild("HumanoidRootPart") then
                plr.Character.HumanoidRootPart.Anchored = true
            end
            StarterGui:SetCore("SendNotification", {
                Title = "Anchored",
                Text = "Nice bro you can't move :|"}
            )
        else
            _G.Anchored = false
            if plr.Character:FindFirstChild("HumanoidRootPart") then
                plr.Character.HumanoidRootPart.Anchored = false
            end
            StarterGui:SetCore("SendNotification", {
                Title = "Unanchored",
                Text = "Great you're free"}
            )
        end
    end

    local function troll()
        plr:kick("You got banned from this game.")
    end

    local function expfreeze()
        StarterGui:SetCore("SendNotification", {
            Title = "X2 exp freeze on.",
            Text = "yayy :DDD"}
        )
        game.RunService.Stepped:connect(function()
            if plr.Character:FindFirstChild("True") then
                plr.Character.True:Destroy()
            end
        end)
    end

    local function unigod() -- made by jacob
        function start(char)
            char:WaitForChild("Block")
            char:WaitForChild("Humanoid"):UnequipTools()
            local Move = "Afterimage Strike"
            wait(1)
            if game.FindFirstChild(plr.Backpack, Move) then
                char.HumanoidRootPart:WaitForChild("Vanish"):Destroy()
                plr.Backpack["Afterimage Strike"].Parent = char
                repeat
                    wait()
                    char[Move].Targeter:FireServer(char)
                    char[Move]:Activate()
                until (game.FindFirstChild(char, "i"))
                char.Humanoid:UnequipTools()
            end
        end

        start(game.Workspace.Live:WaitForChild(plr.Name))

        old = hookmetamethod(game, "__namecall", function(self, ...) -- this is to "fix" it, still not made by me
            local method = getnamecallmethod()
            local args = { ... }
            if method == "FireServer" and tostring(self) == "Input" then
                if args[1][1] == "blockoff" or args[1][1] == "blockon" then
                    return
                end
            end
            return old(self, ...)
        end)
    end

    local function killpoweroutput()
        if plr.Character:FindFirstChild("PowerOutput") then
            plr.Character.PowerOutput:Destroy()
            StarterGui:SetCore("SendNotification", {
                Title = "PowerOutput Succesfully destroyed",
                Text = "Nice you can no longer attack ;p"}
            )
        end
    end

    local function Status()
        StarterGui:SetCore("SendNotification", {
            Title = "The status of the cmds TRUE/FALSE :",
            Text = "Press F9 to see them"}
        )
        print("Noslow :",_G.Noslow)
        print("God Mode :",_G.Godmod)
        print("Anchor :",_G.Anchored)
        print("Bean Spam : ",_G.SpamBeans)
    end

    local function kitrackspam()
        if _G.kitrackspamstop == true then
            _G.kitrackspamstop = false
            StarterGui:SetCore("SendNotification", {
                Title = "KiTrackSpam off",
                Text = "ah.. too bad then"}
            )
        else
            _G.kitrackspamstop = true
            StarterGui:SetCore("SendNotification", {
                Title = "KiTrackSpam on",
                Text = "lesss go baby spamminnnnnnnnn"}
            )
        end
        Move1 = "Chain Destructo Disk"
        Move2 = "Super Volley"
        Move3 = "Sudden Storm"
        Move4 = "Justice Flash"
        Move5 = "Finish Breaker"
        Move6 = "Pressure Gauge"
        Move7 = "Explosive Grip"
        Move8 = "Unrelenting Volley"
        Move9 = "Hellzone Grenade"
        Move10 = "Death Saucer"
        Move11 = "Blaster Meteor"
        Move12 = "Divine Lasso"
        Move13 = "Genocide Shell"
        Move14 = "Crusher Ball"
        while wait() do
            if _G.kitrackspamstop == true then
                break
            end
            for i, v in pairs(plr.Backpack:GetChildren()) do
                if v.Name == Move1 or v.Name == Move2 or v.Name == Move3 or v.Name == Move4 or v.Name == Move5 or v.Name == Move6 or v.Name == Move7 or v.Name == Move8 or v.Name == Move9 or v.Name == Move10 or v.Name == Move11 or v.Name == Move12 or v.Name == Move13 or v.Name == Move14 or v.Name == Move15 then
                    v.Parent = plr.Character
                    v:Activate()
                    wait()
                    v:Deactivate()
                    wait()
                    v.Parent = plr.Backpack
                    plr.Backpack.ServerTraits.EatSenzu:FireServer("")
                end
            end
        end
    end

    local function hardanchor()
        if _G.Hanchorstop then
            _G.Hanchorstop = false
        else
            _G.Hanchorstop = true
        end
        local pos = plr.Character.HumanoidRootPart.CFrame
        while wait() do
            if not plr.Character then
                break
            end
            if plr.Character.Humanoid.health <= 0 then
                break
            end
            if _G.Hanchorstop then
                plr.Character.HumanoidRootPart.Anchored = false
                break
            end
            plr.Character.HumanoidRootPart.CFrame = pos
        end
    end

    local function Sharingan()
        local plrs = game.Players
        local sound = Instance.new("Sound", game.workspace)
        local sound2 = Instance.new("Sound", game.workspace)
        sound.SoundId = "rbxassetid://134269592"
        sound.Volume = 1
        sound2.SoundId = "rbxassetid://405596045"
        sound2.Volume = 1
        local on = true
        sound:Play()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Sharingan!",
            Text = "Mangekyou Sharingan!"}
        )

        mouse.KeyDown:connect(function(key)
            if key == "u" then
                if not on then
                    on = true
                    sound:Play()
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "Sharingan on",
                        Text = "Mangekyou Sharingan!"}
                    )
                else
                    on = false
                    sound2:Play()
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "Sharingan off",
                        Text = ""}
                    )
                end
            end
        end)

        while wait() do
            for i, v in ipairs(plrs:GetPlayers()) do
                if on then
                    if plrs.LocalPlayer.Name == v.Name then
                        continue
                    end
                    if not game.workspace.Live:FindFirstChild(v.Name) or not v.Character:FindFirstChild("HumanoidRootPart") then
                        continue
                    end
                    local tool = v.Character:FindFirstChildOfClass("Tool")
                    if tool then
                        if not v.Character.HumanoidRootPart:FindFirstChild("Sharingan") then
                            local billgui = Instance.new("BillboardGui", v.Character.HumanoidRootPart)
                            local TextLabel = Instance.new("TextLabel", billgui)
                            billgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            billgui.Active = true
                            billgui.Size = UDim2.new(0, 200, 0, 50)
                            billgui.Name = "Sharingan"
                            billgui.StudsOffset = Vector3.new(0, 5, 0)
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(1, 0, 1, 0)
                            TextLabel.Font = Enum.Font.SpecialElite
                            TextLabel.Text = tool.Name
                            TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                            TextLabel.TextSize = 40
                        elseif v.Character.HumanoidRootPart.Sharingan.TextLabel.Text ~= tool.Name then
                            v.Character.HumanoidRootPart.Sharingan.TextLabel.Text = tool.Name
                            continue
                        end
                    elseif v.Character.HumanoidRootPart:FindFirstChild("Sharingan") then
                        v.Character.HumanoidRootPart.Sharingan:Destroy()
                        continue
                    end
                else
                    on = false
                    if game.workspace.Live:FindFirstChild(v.Name) and v.Character:FindFirstChild("HumanoidRootPart") then
                        if v.Character.HumanoidRootPart:FindFirstChild("Sharingan") then
                            v.Character.HumanoidRootPart.Sharingan:Destroy()
                            continue
                        end
                    end
                end
            end
        end
    end

    local function commands()
        StarterGui:SetCore("SendNotification", {
            Title = "Press F9 to see the cmds",
            Text = "Enjoy"}
        )
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Galaxy5603/ListCmds/main/LIST%20CMDS.lua", true))()
        for i, v in ipairs(listcmds) do
            print(v)
        end
    end

    local function cmds(cht)
        coroutine.wrap(function()
            _G.jsp = false
            if string.match(cht, prefix.."stats") then
                local nametable = string.split(cht, prefix.."stats ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetPlayer(v)
                    for idk, target in pairs(game.Players:GetChildren()) do
                        if target == mhm then
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                if target.Character:FindFirstChild("Stats") then
                                    if _G.jsp == false then
                                        StarterGui:SetCore("SendNotification", {
                                            Title = target.Name.."'s Stats, Press F9 to see em",
                                            Text = "or maybe u use synapse ;)"}
                                        )
                                        print("------------------------------------------------")
                                        print(target)
                                        print("Health-Max : ", target.Character.Stats["Health-Max"].Value)
                                        print("Ki-Max : ", target.Character.Stats["Ki-Max"].Value)
                                        print("Phys-Damage : ", target.Character.Stats["Phys-Damage"].Value)
                                        print("Ki-Damage : ", target.Character.Stats["Ki-Damage"].Value)
                                        print("Phys-Resist : ", target.Character.Stats["Phys-Resist"].Value)
                                        print("Ki-Resist : ", target.Character.Stats["Ki-Resist"].Value)
                                        print("Speed : ", target.Character.Stats.Speed.Value)
                                        print("------------------------------------------------")
                                    end
                                    _G.jsp = true
                                    break
                                end
                            end
                        end
                    end
                end
            end
        end){}
        coroutine.wrap(function()
            if string.match(cht, prefix.."ez") and cht ~= prefix.."ez " then
                local nametable = string.split(cht, prefix.."ez ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetPlayer(v)
                    for idk, target in pairs(game.Players:GetChildren()) do
                        if target == mhm then
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                if _G.Noslow == false then
                                    noslow()
                                end
                                wait(.5)
                                if plr.Character:FindFirstChild("HumanoidRootPart") then
                                    local vardist = Distance(plr.Character.HumanoidRootPart.Position, target.Character.HumanoidRootPart.Position)
                                    game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = target.Character.HumanoidRootPart.CFrame}):Play()
                                    wait(vardist/5000)
                                    if plr.Backpack:FindFirstChild("Dragon Crush") then
                                        plr.Character.Humanoid:EquipTool(plr.Backpack["Dragon Crush"])
                                        wait(.1)
                                        if plr.Character:FindFirstChild("Dragon Crush") then
                                            if plr.Character["Dragon Crush"].Activator:FindFirstChild("Flip") then
                                                plr.Character["Dragon Crush"].Activator.Flip:Destroy()
                                                plr.Character["Dragon Crush"]:Activate()
                                            end
                                        end
                                    end
                                    wait(.2)
                                    Move1 = "Meteor Crash"
                                    Move2 = "Anger Rush"
                                    Move3 = "Kick Barrage"
                                    Move4 = "Deadly Dance"
                                    Move5 = "Trash?"
                                    Move6 = "Flash Strike"
                                    Move7 = "Trash???"
                                    Move8 = "God Slicer"
                                    while wait() do
                                        for i, v in pairs(plr.Backpack:GetChildren()) do
                                            if  v.Name == Move1 or v.Name == Move2 or v.Name == Move3 or v.Name == Move4 or v.Name == Move5 or v.Name == Move6 or v.Name == Move7 or v.Name == Move8 or v.Name == Move9 or v.Name == Move10 then
                                                v.Parent = plr.Character
                                                v:Activate()
                                                v:Deactivate()
                                                wait(.000001)
                                                v.Parent = plr.Backpack
                                                plr.Backpack.ServerTraits.EatSenzu:FireServer("")
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end){}
        coroutine.wrap(function()
            if string.match(cht, prefix.."bring") then
                local nametable = string.split(cht, prefix.."bring ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetPlayer(v)
                    for idk, target in pairs(game.Players:GetChildren()) do
                        if target == mhm then
                            print(target)
                            if game.workspace.Live:FindFirstChild(target.Name) then
                                print(target)
                                local oldpos = plr.Character.HumanoidRootPart.CFrame
                                wait(.5)
                                repeat
                                    local vardist = Distance(plr.Character.HumanoidRootPart.Position, target.Character.HumanoidRootPart.Position)
                                    game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000 , Enum.EasingStyle.Linear), {CFrame = CFrame.new(target.Character.HumanoidRootPart.CFrame * Vector3.new(0, 0, 2))}):Play()
                                    wait(vardist/4000)
                                until(vardist <= 200 or target.Character.Humanoid.Health <= 0 or plr.Character.Humanoid.Health <= 0)
                                coroutine.wrap(function()
                                    repeat wait()
                                        if target.Character:FindFirstChild("Override") then
                                            break
                                        end
                                        plr.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
                                    until(target.Character.Humanoid.Health <= 0 or plr.Character.Humanoid.Health <= 0)
                                end){}
                                wait(.5)
                                plr.Character.Humanoid:EquipTool(plr.Backpack["Dragon Crush"])
                                pcall(function()
                                    game.workspace.Effects[plr.Name]["Dragon Crush"].Activator["Flip"]:Destroy()
                                end)
                                plr.Character["Dragon Crush"].Activator["Flip"]:Destroy()
                                plr.Character["Dragon Crush"]:Activate()
                                coroutine.wrap(function()
                                    while wait() do
                                        if target.Character.Humanoid.Health <= 0 or plr.Character.Humanoid.Health <= 0 then
                                            break
                                        end
                                        if target.Character:FindFirstChild("Override") then
                                            for i, value in ipairs(plr.Character:GetChildren()) do
                                                if value.Name == "PowerOutput" then
                                                    value:Destroy()
                                                end
                                            end
                                            wait(.5)
                                            plr.Character.HumanoidRootPart.CFrame = oldpos
                                            wait(2)
                                            if plr.Character:FindFirstChild("Head") and plr.Character.Humanoid.Health > 0 then
                                                plr.Character.Head.Anchored = true
                                                plr.Character.UpperTorso:Destroy()
                                                game.RunService.Stepped:connect(function()
                                                    if not plr.Character:FindFirstChild("Block") then
                                                        plr.Character.HumanoidRootPart.CFrame = oldpos
                                                    end
                                                end)
                                            end
                                            break
                                        end
                                    end
                                end){}
                            end
                        end
                    end
                end
            end
        end){}
        coroutine.wrap(function()
            if cht:match(prefix.."stoptrack") then
                _G.Stop = true
                StarterGui:SetCore("SendNotification", {
                    Title = "Stopped Tracking",
                    Text = ""}
                )
            end
            if string.match(cht, prefix.."track") then
                local nametable = string.split(cht, prefix.."track ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetPlayer(v)
                    for idk, target in pairs(game.Players:GetChildren()) do
                        if target == mhm then
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                StarterGui:SetCore("SendNotification", {
                                    Title = "Tracking : "..target.Name,
                                    Text = "izi dubs"}
                                )
                                _G.Stop = false
                                while wait() do
                                    if not game.workspace.Live:FindFirstChild(target.Name) then
                                        break
                                    end
                                    if _G.Stop then
                                        break
                                    end
                                    for idk, kimove in ipairs(game.workspace:GetChildren()) do
                                        if kimove:FindFirstChild("Ki") and kimove:FindFirstChild("Mesh") then
                                            kimove.CFrame = target.Character.HumanoidRootPart.CFrame
                                        end
                                    end
                                    for idk, kimove in ipairs(plr.Character:GetChildren()) do
                                        if kimove:FindFirstChild("Ki") and kimove:FindFirstChild("Mesh") then
                                            kimove.CFrame = target.Character.HumanoidRootPart.CFrame
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end){}
        coroutine.wrap(function()
            if string.match(cht, prefix.."tracknpc") then
                local nametable = string.split(cht, prefix.."tracknpc ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetNpc(v)
                    for idk, target in pairs(game.workspace.Live:GetChildren()) do
                        if target == mhm then
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                StarterGui:SetCore("SendNotification", {
                                    Title = "Tracking : "..target.Name,
                                    Text = "izi dubs"}
                                )
                                _G.Stop = false
                                while wait() do
                                    if not game.workspace.Live:FindFirstChild(target.Name) or target.Humanoid.Health <= 0 then
                                        break
                                    end
                                    if _G.Stop then
                                        break
                                    end
                                    for idk, kimove in ipairs(game.workspace:GetChildren()) do
                                        if kimove:FindFirstChild("Ki") and kimove:FindFirstChild("Mesh") then
                                            kimove.CFrame = target.HumanoidRootPart.CFrame
                                        end
                                    end
                                    for idk, kimove in ipairs(plr.Character:GetChildren()) do
                                        if kimove:FindFirstChild("Ki") and kimove:FindFirstChild("Mesh") then
                                            kimove.CFrame = target.HumanoidRootPart.CFrame
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end){}
        coroutine.wrap(function()
            if string.match(cht, prefix.."fly") then
                local nametable = string.split(cht, prefix.."fly ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetPlayer(v)
                    for idk, target in pairs(game.Players:GetChildren()) do
                        if target == mhm then
                            print(target)
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                -- tweening
                                wait(.2)
                                if plr.Character:FindFirstChild("HumanoidRootPart") then
                                    local vardist = Distance(plr.Character.HumanoidRootPart.Position, target.Character.HumanoidRootPart.Position)
                                    game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = target.Character.HumanoidRootPart.CFrame}):Play()
                                    wait(vardist/5000)
                                    if plr.Backpack:FindFirstChild("Dragon Crush") then
                                        plr.Character.Humanoid:EquipTool(plr.Backpack["Dragon Crush"])
                                        wait(.1)
                                        if plr.Character:FindFirstChild("Dragon Crush") then
                                            if plr.Character["Dragon Crush"].Activator:FindFirstChild("Flip") then
                                                plr.Character["Dragon Crush"].Activator.Flip:Destroy()
                                                plr.Character["Dragon Crush"]:Activate()
                                            end
                                        end
                                    end
                                    wait(.5)
                                    game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear), {CFrame = CFrame.new(0, 10000000000, 0)}):Play()
                                else
                                    game:GetService("TeleportService"):teleport(game.placeId)
                                end
                            end
                        end
                    end
                end
            end
        end){}
        coroutine.wrap(function()
            if string.match(cht, prefix.."goto") then
                local nametable = string.split(cht, prefix.."goto ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetPlayer(v)
                    for idk, target in pairs(game.Players:GetChildren()) do
                        if target == mhm then
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                local vardistance = Distance(plr.Character.HumanoidRootPart.Position, target.Character.HumanoidRootPart.Position)
                                game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardistance/2500, Enum.EasingStyle.Quad), {CFrame = target.Character.HumanoidRootPart.CFrame}):Play()
                            end
                        end
                    end
                end
            end
        end){}

        coroutine.wrap(function()
            if string.match(cht, prefix.."gotonpc") then
                local nametable = string.split(cht, prefix.."gotonpc ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetNpc(v)
                    for idk, target in pairs(game.workspace.Live:GetChildren()) do
                        if target == mhm then
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                local vardistance = Distance(plr.Character.HumanoidRootPart.Position, target.HumanoidRootPart.Position)
                                game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardistance/2500, Enum.EasingStyle.Quad), {CFrame = target.HumanoidRootPart.CFrame}):Play()
                            end
                        end
                    end
                end
            end
        end){}
        coroutine.wrap(function()
            if cht:match("stopred") then
                _G.StopRed = true
                StarterGui:SetCore("SendNotification", {
                    Title = "Stopped Redding",
                    Text = ""}
                )
                plr.Character:BreakJoints()
            end
            if string.match(cht, prefix.."redbean") then
                local nametable = string.split(cht, prefix.."redbean ")
                table.remove(nametable, 1)
                for _, v in pairs(nametable) do
                    local mhm = GetPlayer(v)
                    for idk, target in pairs(game.Players:GetChildren()) do
                        if target == mhm then
                            if game.Workspace.Live:FindFirstChild(target.Name) then
                                plr.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(20, 5, 0)
                                wait(.5)
                                plr.Backpack.ServerTraits.EatSenzu:FireServer("")
                                StarterGui:SetCore("SendNotification", {
                                    Title = "Redding : "..target.Name,
                                    Text = "izi dubs"}
                                )
                                _G.StopRed = false
                                if plr.Character:FindFirstChild("PowerOutput") then
                                    plr.Character.PowerOutput:Destroy()
                                end
                                while wait() do
                                    if not game.Workspace.Live:FindFirstChild(target.Name) or not game.Workspace.Live:FindFirstChild(plr.Name) then
                                        break
                                    end
                                    if _G.StopRed then
                                        break
                                    end
                                    plr.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(20, 5, 0)
                                    plr.Backpack.ServerTraits.EatSenzu:FireServer("")
                                end
                            end
                        end
                    end
                end
            end
        end){}
        if cht == prefix.."antig" or cht == prefix.."antigrab" then
            AntiGrab()
        end

        if cht == prefix.."ki" or cht == prefix.."ktspam" then
            kitrackspam()
        end


        if cht == prefix.."" then
            heaven()
        end

        if cht == prefix.."lag" then
            Lag()
        end

        if cht == prefix.."ugm" or cht == prefix.."unigod" or cht == prefix.."unigm" then
            unigod()
        end

        if cht == prefix.."queue" or cht == prefix.."q" then
            queue()
        end

        if cht == prefix.."e" or cht == "earth" then
            earth()
        end

        if cht == prefix.."n" then
            namek()
        end

        if cht == prefix.."s" then
            space()
        end

        if cht == prefix.."f" then
            future()
        end

        if cht == prefix.."ud" or cht == prefix.."sw" then
            secret()
        end

        if cht == prefix.."z" then
            zaros()
        end

        if cht == prefix.."h" then
            heaven()
        end

        if cht == prefix.."ns" or cht == prefix.."noslow" then
            noslow()
        end

        if cht == prefix.."godmode" or cht == prefix.."gm" or cht == prefix.."godmode" then
            godmod()
        end

        if cht == prefix.."hairgm" or cht == prefix.."hgm" then
            hairgm()
        end

        if cht == prefix.."invis" then
            invis()
        end

        if cht == prefix.."topr" or cht == prefix.."toprespawn" or cht == prefix.."trs" then
            toprespawn()
        end

        if cht == prefix.."dc" or cht == prefix.."dragoncrush" then
            dragoncrush()
        end

        if cht == prefix.."dt" or cht == prefix.."dragonthrow" then
            dragonthrow()
        end

        if cht == prefix.."bc" or cht == prefix.."bonecrush" then
            bonecrush()
        end

        if cht == prefix.."rj" or cht == prefix.."rejoin" then
            rejoin()
        end

        if cht == prefix.."hr" or cht == prefix.."hreset" or cht == prefix.."res" then
            hardreset()
        end

        if cht == prefix.."rs" or cht == prefix.."respawn" then
            respawn(plr.Character.HumanoidRootPart.CFrame)
        end

        if cht == prefix.."aq" or cht == prefix.."antiqueue" then
            antiqueue()
        end

        if cht == prefix.."hl" or cht == prefix.."hidelevel" then
            hidelevel()
        end

        if cht == "" or cht == "blk" or cht == prefix.."cmds" or cht == prefix.."cmd" then
            commands()
        end

        if cht == prefix.."fe" or cht == prefix.."freeze" then
            freeze()
        end

        if cht == prefix.."rwings" or cht == prefix.."removewings" then
            removewings()
        end

        if cht == prefix.."dq" or cht == prefix.."dragonqueue" then
            dragonqueue()
        end

        if cht == prefix.."chat" or cht == "normalchat" then
            normalchat()
        end

        if cht == prefix.."beerus" or cht == prefix.."be" then
            beerusanim()
        end

       if cht == prefix.."snake" or cht == prefix.."sk" then
            snakeworlanim()
        end

        if cht == prefix.."whis" or cht == prefix.."aws" then
            whisanim()
        end

        if cht == prefix.."bdl" or cht == prefix.."ba" then
            babaidleanim()
        end

        if cht == prefix.."ag" or cht == prefix.."antiglitch" or cht == prefix.."antigrab" then
            antibc()
        end

        if cht == prefix.."dark" then
            Dark()
        end


        if cht == prefix.."jps" then
            Jps()
        end


        if cht == prefix.."galaxy" then
            Galaxy()
        end


        if cht == prefix.."spam" then
            movespam()
        end

        if cht == prefix.."akb" or cht == prefix.."antikb" or cht == prefix.."antiknockback" then
            antikb()
        end

        if cht == prefix.."speed" or cht == prefix.."spd" then
            speed()
        end

        if cht == prefix.."kispam" then
            kispam()
        end

        if cht == prefix.."trash" or cht == prefix.."tr" then
            trashglitch()
        end

        if cht == prefix.."autogod" then
            AutoGod()
        end

        if cht == prefix.."dgod" or cht == prefix.."directgod" then
            DirectGod()
        end

        if cht == prefix.."slot" then
            Slot()
        end

        if cht == prefix.."lock" then
            lockplr()
        end

        if cht == prefix.."help1" then
            HelpQuest1()
        end

        if cht == prefix.."help2" then
            HelpQuest2()
        end

       if cht == prefix.."help3" then
            HelpQuest3()
        end

        if cht == prefix.."shaders" then
            Shaders()
        end

        if cht == prefix.."bs" or cht == prefix.."beanspam" then
            spambeans()
        end

        if cht == prefix.."notm" or cht == prefix.."noteamdamage" or cht == prefix.."noteamdmg" then
            hitinbroly()
        end

        if cht == prefix.."kibr" or cht == prefix.."broly" then
            Broly()
        end

        if cht == prefix.."farm" or cht == prefix.."afr" then
            AutoFarm()
        end

        if cht == prefix.."atop" or cht == prefix.."top" then
            AutoTop()
        end

        if cht == prefix.."iy" or cht == prefix.."infiniteyield" then
            Infyield()
        end

        if cht == prefix.."anchor" then
            anchor()
        end

        if cht == prefix.."shutdown" then
            troll()
        end

        if cht == prefix.."expfreeze" or cht == prefix.."2expfr" or cht == prefix.."2expfreeze" then
            expfreeze()
        end

        if cht == prefix.."killpoweroutput" or cht == prefix.."kpo" then
            killpoweroutput()
        end

        if cht == prefix.."weirdglitch" or cht == prefix.."wg" then
            oldFly()
        end

        if cht == prefix.."status" then
            Status()
        end

        if cht == prefix.."hardanchor" or cht == prefix.."hanchor" then
            hardanchor()
        end

        if cht == prefix.."life" or cht == prefix.."lifedisplay" then
            lifedisplay()
        end

        if cht == prefix.."sharingan" then
            Sharingan()
        end

        if cht == prefix.."south" or cht== prefix.."south" or cht == prefix.."south" or cht == prefix.."south" then
            local place = Vector3.new(-457.984, 25.0702, -6392.42)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(-457.984, 25.0702, -6392.42)}):Play()
        end
        if cht== prefix.."west" or cht == prefix.."west" or cht == prefix.."west" or cht == prefix.."west" then
            local place = Vector3.new(-571.317, 22.0967, -2895.73)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(-571.317, 22.0967, -2895.73)}):Play()
        end
        if cht== prefix.."central" or cht == prefix.."central" or cht == prefix.."central" or cht == prefix.."central" then
            local place = Vector3.new(-3843.82, 22.1032, -1428.37)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(-3843.82, 22.1032, -1428.37)}):Play()
        end
        if cht== prefix.."spawn" or cht == prefix.."spawn" or cht == prefix.."spawn" or cht == prefix.."spawn" then
            local place = Vector3.new(-5946.07, 21.1173, -4216.57)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(-5946.07, 21.1173, -4216.57)}):Play()
        end
        if cht== prefix.."lookout" or cht == prefix.."lookout" or cht == prefix.."lookout" or cht == prefix.."lookout" then
            local place = Vector3.new(2579.89, 3948.8, -2274.51)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(2579.89, 3948.8, -2274.51)}):Play()
        end
        if cht== prefix.."namekship" or cht == prefix.."namekship" or cht == prefix.."namekship" or cht == prefix.."namekship" then
            local place = Vector3.new(1418.86, 93.6263, 3193.25)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(1418.86, 93.6263, 3193.25)}):Play()
        end
        if cht== prefix.."mountains" or cht == prefix.."mountains" or cht == prefix.."mountains" or cht == prefix.."mountains" then
            local place = Vector3.new(-3967.12, 61.1191, 1410.64)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(-3967.12, 61.1191, 1410.64)}):Play()
        end
        if cht== prefix.."padbr" or cht == prefix.."padbr" or cht == prefix.."padbr" or cht == prefix.."padbr" then
            local place = Vector3.new(751.67725, 3944.85986, -2272.62622)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(2751.67725, 3944.85986, -2272.62622)}):Play()
        end
        if cht== prefix.."padtop" or cht == prefix.."padtop" or cht == prefix.."padtop" or cht == prefix.."padtop" then
            local place = Vector3.new(2508.15, 3945.41, -2029.8)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(2508.15, 3945.41, -2029.8)}):Play()
        end
        if cht== prefix.."padhard" or cht == prefix.."padhard" or cht == prefix.."padhard" or cht == prefix.."padhard" then
            local place = Vector3.new(2510.97656, 3944.75, -2527.53125)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(2510.97656, 3944.75, -2527.53125)}):Play()
        end
        if cht== prefix.."brokencity" or cht == prefix.."brokencity" or cht == prefix.."brokencity" or cht == prefix.."brokencity" then
            local place = Vector3.new(-6180.85, 21.9875, -911.574)
            local vardist = Distance(plr.Character.HumanoidRootPart.Position, place)
            game:GetService("TweenService"):Create(plr.Character.HumanoidRootPart, TweenInfo.new(vardist/5000, Enum.EasingStyle.Linear), {CFrame = CFrame.new(-6180.85, 21.9875, -911.574)}):Play()
        end
    end

    -- chat cmds
    chatcmds = plr.Chatted:connect(function(Lchat)
        local chat = Lchat:lower()
        cmds(chat)
    end)
    coroutine.wrap(function()
        repeat
            wait()
        until(plr.PlayerGui.HUD.Bottom:FindFirstChild("SideMenu"))
        game.RunService.Stepped:connect(function ()
            if plr.PlayerGui:FindFirstChild("HUD") then
                if plr.PlayerGui.HUD.FullSize.Quests:FindFirstChild("ImageLabel") then
                    plr.PlayerGui.HUD.FullSize.Quests.ImageLabel.Image = "http://www.roblox.com/asset/?id=11200561129"
                    plr.PlayerGui.HUD.FullSize.Quests.TextLabel.Text = "Galaxie CMDS UPDATE 2024 !!"
                    plr.PlayerGui.HUD.FullSize.Quests.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                    -- plr.PlayerGui.HUD.FullSize.Quests.TextLabel.Font = Enum.Font.SpecialElite
                end
            end
        end)
        local ScreenGui1 = Instance.new("ScreenGui")
        game.RunService.Stepped:connect(function()
            if plr.PlayerGui:FindFirstChild("HUD") then
                if plr.PlayerGui.HUD.Bottom.SideMenu.Visible == true then
                    ScreenGui1.Enabled = true
                else
                    ScreenGui1.Enabled = false
                end
            end
        end)
        local ImageButton = Instance.new("ImageButton")
        ScreenGui1.Parent = game.CoreGui
        ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ImageButton.Parent = ScreenGui1
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.Position = UDim2.new(0.0233062338, 0, 0.839211643, 0)
        ImageButton.Size = UDim2.new(0.072628729, 0, 0.133817434, 0)
        ImageButton.Image = "http://www.roblox.com/asset/?id=11200561129"
        ImageButton.MouseButton1Down:connect(function()
            if not _G.AlrClicked then
                _G.AlrClicked = true
                chatcmds:Disconnect()
                local ScreenGui = Instance.new("ScreenGui")
                local Frame = Instance.new("Frame")
                local TextBox = Instance.new("TextBox")
                local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
                ScreenGui.Parent = game.CoreGui
                ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                Frame.Parent = ScreenGui
                Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame.Position = UDim2.new(0.792633712, 0, 0.778131664, 0)
                Frame.Size = UDim2.new(0.192734614, 0, 0.182590231, 0)
                TextBox.Parent = Frame
                TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                TextBox.Size = UDim2.new(1, 0, 1, 0)
                TextBox.Font = Enum.Font.Nunito
                TextBox.Text = "Stealth Mode"
                TextBox.TextColor3 = Color3.fromRGB(0, 105, 255)
                TextBox.TextScaled = true
                TextBox.TextSize = 74.000
                TextBox.TextWrapped = true
                UITextSizeConstraint.Parent = TextBox
                UITextSizeConstraint.MaxTextSize = 74
                game.RunService.Stepped:connect(function()
                    if plr.PlayerGui.HUD.Bottom.SideMenu.Visible == true then
                        ScreenGui.Enabled = true
                    else
                        ScreenGui.Enabled = false
                    end
                end)
                StarterGui:SetCore("SendNotification", {
                    Title = "Stealth mode activated",
                    Text = "Go the the game menu to see it, prefix still needed"}
                )
                TextBox:GetPropertyChangedSignal("Text"):connect(function()
                    cmds(TextBox.Text)
                end)
            else
                rejoin()
            end
        end)
    end){}
end
