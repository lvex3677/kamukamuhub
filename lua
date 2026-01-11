local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Rayfield:Notify({
   Title = "製作者からの通知",
   Content = "ロードされたよｗ",
   Duration = 6.5,
   Image = 139263057811552,
})

local Window = Rayfield:CreateWindow({
   Name = "1919Hub - JP",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "待て",
   LoadingSubtitle = "by 野獣先輩",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab = Window:CreateTab("プレイヤー", 4483362458) -- Title, Image
local Section = Tab:CreateSection("基本機能")
local Input = Tab:CreateInput({
   Name = "スピード",
   CurrentValue = "",
   PlaceholderText = "ここに挿れろbyあざあなる",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Text

   end,
})
local Input = Tab:CreateInput({
   Name = "ジャンプ力",
   CurrentValue = "",
   PlaceholderText = "ここに挿れろbyあざあなる",
   RemoveTextAfterFocusLost = false,
   Flag = "Input2",
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Text
   end,
})
local Section = Tab:CreateSection("野獣先輩")
local Button = Tab:CreateButton({
   Name = "野獣先輩を手に入れるbyあざあなる",
   Callback = function()
        local tool = Instance.new("Tool")
tool.Name = "野獣先輩"
tool.TextureId = "rbxassetid://131207503305072"
tool.RequiresHandle = true
tool.CanBeDropped = true

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(5, 5, 0.5)
handle.Color = Color3.fromRGB(255, 255, 255)
handle.Parent = tool

local decal = Instance.new("Decal")
decal.Texture = "rbxassetid://131207503305072"
decal.Face = Enum.NormalId.Front
decal.Parent = handle

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://85349958317396"
sound.Volume = 1
sound.Looped = true
sound.Parent = handle

tool.Equipped:Connect(function()
    sound:Play()
end)

tool.Unequipped:Connect(function()
    sound:Stop()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})
local Section = Tab:CreateSection("funk")
local Button = Tab:CreateButton({
   Name = "Montagem Xonada",
   Callback = function()
        local tool = Instance.new("Tool")
tool.Name = "Montagem Xonada"
tool.TextureId = "rbxassetid://131207503305072"
tool.RequiresHandle = true
tool.CanBeDropped = true

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(5, 5, 0.5)
handle.Color = Color3.fromRGB(255, 255, 255)
handle.Parent = tool

local decal = Instance.new("Decal")
decal.Texture = "rbxassetid://131207503305072"
decal.Face = Enum.NormalId.Front
decal.Parent = handle

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://131841589009936"
sound.Volume = 1
sound.Looped = true
sound.Parent = handle

tool.Equipped:Connect(function()
    sound:Play()
end)

tool.Unequipped:Connect(function()
    sound:Stop()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "体力無限",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      if Value == true then
         game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(function()
            if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
               game.Players.LocalPlayer.Character.Humanoid.Health = 100
            end
         end)
      end
   end,
})
local CreateTab = Window:CreateTab("1919&テレポート", 4483362458) -- Title, Image
local Section = CreateTab:CreateSection("s e x")
local Button = CreateTab:CreateButton({
   Name = "勝手にイっといてください",
   Callback = function()
local scgui = Instance.new("ScreenGui")
local kibans = Instance.new("Frame")
local your = Instance.new("TextLabel")
scgui.Name = "scgui"
scgui.Parent = game.CoreGui
kibans.Name = "kibans"
kibans.Parent = scgui
kibans.BackgroundColor3 = Color3.fromRGB(255,255,255)
kibans.Position = UDim2.new(0,0,0,0)
kibans.Size = UDim2.new(1,0,1,0)
your.Name = "your"
your.Parent = kibans
your.BackgroundColor3 = Color3.fromRGB(0,0,0)
your.BackgroundTransparency = 1.000
your.Text = "あなたはイキました"
your.TextColor3 = Color3.fromRGB(0,0,0)
your.TextScaled = false
your.TextSize = 36
your.Position = UDim2.new(0.5, -150,0.5, -50)
   end,

})
local Section = CreateTab:CreateSection("goto")
local Button = CreateTab:CreateButton({
   Name = "最初の場所へテレポート",
   Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-218.976593, 220.649918, -444.712982, -0.795862854, -3.43376207e-08, 0.605476975, 3.94771575e-08, 1, 1.08602023e-07, -0.605476975, 1.10334824e-07, -0.795862854)
   end,
})
local Button = CreateTab:CreateButton({
   Name = "空港にテレポート",
   Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.2188721, -189.616867, -489.67276, -0.938921928, -1.15948389e-07, -0.344130248, -1.14994343e-07, 1, -2.31821655e-08, 0.344130248, 1.78067872e-08, -0.938921928)
   end,
})
local Button = CreateTab:CreateButton({
   Name = "謎解きバッジの教室にテレポート",
   Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-133.957336, 164.292938, -2771.45532, 0.999047518, -1.99270467e-08, 0.0436357968, 2.13076596e-08, 1, -3.11743662e-08, -0.0436357968, 3.20744498e-08, 0.999047518)
   end,
})
local Button = CreateTab:CreateButton({
   Name = "マイクらへんの場所にテレポート",
   Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64.5237656, 228.523453, -445.290771, 0.0178026594, 5.18453369e-08, 0.999841511, 4.47586359e-08, 1, -5.26505026e-08, -0.999841511, 4.56888607e-08, 0.0178026594)
   end,
})
local Button = CreateTab:CreateButton({
   Name = "カメラの場所にテレポート",
   Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-195.28978, 264.135529, -445.507294, -1.1920929e-07, -6.10388888e-05, -1.00000012, -6.10388888e-05, 1, -6.10388888e-05, 1.00000012, 6.10388888e-05, -1.1920929e-07)
   end,
})
local Button = CreateTab:CreateButton({
   Name = "秘密の部屋1にテレポート",
   Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.942566, 163.558853, -481.635071, -0.0106688859, 1.00239284e-07, 0.999943078, 6.37834603e-08, 1, -9.95644527e-08, -0.999943078, 6.27175822e-08, -0.0106688859)
   end,
})
local Button = CreateTab:CreateButton({
   Name = "秘密の部屋2にテレポート",
   Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-245.274582, 220.649918, -555.124084, 0.999862909, 5.39647216e-09, -0.0165574271, -5.39277245e-09, 1, 2.68104511e-10, 0.0165574271, -1.78777326e-10, 0.999862909)
   end,
})
local Tab = Window:CreateTab("バッジ取得", 4483362458) -- Title, Image
local Section = Tab:CreateSection("不可能バッジ")
local Button = Tab:CreateButton({
   Name = "ピザポテト入手",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(91.8287888, 5.65917015, -72023.9141, -0.238534734, 0.690327644, -0.683043897, 1.19179708e-06, 0.703346908, 0.710846782, 0.971133947, 0.16956082, -0.167773485)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-218.976593, 220.649918, -444.712982, -0.795862854, -3.43376207e-08, 0.605476975, 3.94771575e-08, 1, 1.08602023e-07, -0.605476975, 1.10334824e-07, -0.795862854)
   end,
})
local Button = Tab:CreateButton({
   Name = "???バッジ入手",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-63.8726883, 9.69613361, -71948.7578, 0.221209645, 0.295365334, -0.9294222, 2.77273458e-08, 0.953032374, 0.302868515, 0.975226283, -0.0669974685, 0.210819945)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-218.976593, 220.649918, -444.712982, -0.795862854, -3.43376207e-08, 0.605476975, 3.94771575e-08, 1, 1.08602023e-07, -0.605476975, 1.10334824e-07, -0.795862854)
   end,
})
local Button = Tab:CreateButton({
    Name = "謎解きバッジの取得",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-133.957336, 164.292938, -2771.45532, 0.999047518, -1.99270467e-08, 0.0436357968, 2.13076596e-08, 1, -3.11743662e-08, -0.0436357968, 3.20744498e-08, 0.999047518)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-218.976593, 220.649918, -444.712982, -0.795862854, -3.43376207e-08, 0.605476975, 3.94771575e-08, 1, 1.08602023e-07, -0.605476975, 1.10334824e-07, -0.795862854)
    end,
})
local Section = Tab:CreateSection("チャット系")
local Button = Tab:CreateButton({
   Name = "おはようございますバッジ取得",
   Callback = function()
local TextChatService = game:GetService("TextChatService")

local generalChannel = TextChatService:FindFirstChild("RBXGeneral", true)

if generalChannel then
    generalChannel:SendAsync("おはようございます")
end
   end,
})
local Tab = Window:CreateTab("荒らし", 4483362458)
local Section = Tab:CreateSection("スパム(捨て垢でやったほうがいい)")

local spamnum = 0

local Input = Tab:CreateInput({
   Name = "スパムする回数",
   CurrentValue = "",
   PlaceholderText = "数字を入力",
   RemoveTextAfterFocusLost = false,
   Flag = "Input_SpamCount",
   Callback = function(Text)
      spamnum = tonumber(Text) or 0
   end,
})

local Button = Tab:CreateButton({
    Name = "スパムする",
    Callback = function()
        local TextChatService = game:GetService("TextChatService")
        local generalChannel = TextChatService:FindFirstChild("RBXGeneral", true)
   
        if generalChannel and spamnum > 0 then
            for i = 1, spamnum do
                generalChannel:SendAsync("1919Hub")
                task.wait(0.1)
            end
        end
    end,
}) 
local Tab = Window:CreateTab("モーフ", 4483362458) -- Title, Image
local Section = Tab:CreateSection("モーフ")
local Button = Tab:CreateButton({
   Name = "penisモーフ",
   Callback = function()
         local character = game.Players.LocalPlayer.Character
         if character then
               for _, part in pairs(character:GetChildren()) do
                  if part:IsA("BasePart") then
                     part.Size = Vector3.new(1, 1, 4)
                  end
               end
         end
   end,
})
local Button = Tab:CreateButton({
   Name = "元に戻す",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.Health = 0
   end,
})
