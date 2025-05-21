local fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/synolope/Fluent-UI/main/library.lua"))()
local Window = fluent:CreateWindow({
    Title = "SAMU Hub - Sistema de Key",
    SubTitle = "Acesse sua key e valide para continuar",
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 320),
    Acrylic = true,
    Theme = "Dark",
    Center = true,
    IsDraggable = true
})

local keyTab = Window:AddTab({Title = "🔑 Key"})

local discordWhitelist = {
    ["agu"] = true,
    ["OutroCara123#4567"] = true,
    -- Adicione mais Discords aqui
}

local weeklyKey = "Samu_Hub:5b8e9185e8434e6ea210b17e94ba7f56" -- semana
local premiumKey = "Samu_Hub26a774563a25487aa99a1ee0b22fd913" -- Key premium

local userKey = ""
local userDiscord = ""

local icon = Instance.new("ImageButton")
icon.Image = "rbxassetid://128226597224894"
icon.Size = UDim2.new(0, 64, 0, 64)
icon.Position = UDim2.new(0, 20, 1, -84)
icon.BackgroundTransparency = 1
icon.Parent = game:GetService("CoreGui")

icon.MouseButton1Click:Connect(function()
    Window:SelectTab(keyTab)
end)

keyTab:AddParagraph({
    Title = "❗ Obtenha sua key",
    Content = "Clique no botão abaixo para gerar a key semanal."
})

keyTab:AddButton({
    Title = "🌐 Pegar Key (KeyGuardian)",
    Callback = function()
        setclipboard("https://keyguardian.org/a/4868?id=12b64c4ceb7a4bd8b421929d6c6d1e5f")
        fluent:Notify({
            Title = "Link Copiado",
            Content = "Cole no navegador para gerar sua key!",
            Duration = 4
        })
    end
})

keyTab:AddInput("🔑 Sua Key", function(value)
    userKey = value
end)

keyTab:AddInput("👤 Seu Discord (para Premium)", function(value)
    userDiscord = value
end)

keyTab:AddButton({
    Title = "✅ Validar Key",
    Callback = function()
        if userKey == weeklyKey then
            fluent:Notify({Title = "Key Válida", Content = "Acesso liberado!", Duration = 3})
            task.wait(1)
            Window:Destroy()
            icon:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SAMU-SCPT/Samu-scpt.lua/refs/heads/main/SamuHub.lua"))()
        elseif userKey == premiumKey then
            if discordWhitelist[userDiscord] then
                fluent:Notify({Title = "Key Premium Válida", Content = "Acesso premium liberado!", Duration = 3})
                task.wait(1)
                Window:Destroy()
                icon:Destroy()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/SAMU-SCPT/Samu-scpt.lua/refs/heads/main/SamuHub.lua"))()
            else
                fluent:Notify({Title = "Erro", Content = "Seu Discord não está autorizado para chave premium.", Duration = 5})
            end
        else
            fluent:Notify({Title = "Key Inválida", Content = "A key inserida está incorreta. Pegue novamente no botão acima.", Duration = 5})
        end
    end
})
