-- hide and seek 2
getgenv().farm = false;
getgenv().player = false;
getgenv().jump = false;

function doFarm()
    while getgenv().farm == true do
        for i, v in pairs(game:GetDescendants()) do
            if v.Name == "Credit" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(0.5)
            end
        end
        wait(1) 
    end
end

function doSpeed(speednumber)
    if game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speednumber
    end
end

local function copyLink()
    local linkToCopy = "https://discord.gg/Bc8GDh77" 
    setclipboard(linkToCopy)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("Hide and seek 2") 
local b = w:CreateFolder("Credit Farm") 
local s = w:CreateFolder("Player Config") 
local a = w:CreateFolder("by zenn9x") 

s:Slider("Speed",{
    min = 16; 
    max = 250; 
},function(value)
        doSpeed(value)
end)

b:Toggle("CreditAutoFarm",function(bool)
getgenv().farm = bool
    if bool then 
        doFarm()
    end
end)

a:Button("Copy Discord Link", function()
    copyLink()
    print("Link copied!")
end)
