local fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/synolope/Fluent-UI/main/library.lua"))()

local Window = fluent:CreateWindow({
    Title = "SAMU Hub - Sistema de Key",
    SubTitle = "Acesse sua key e valide para continuar",
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 320),
    Acrylic = true,
    Theme = "Red", -- cor mais próxima de vermelho no Fluent
    Center = true,
    IsDraggable = true
})

local keyTab = Window:AddTab({Title = "🔑 Key"})

-- Discords autorizados para Premium
local discordWhitelist = {
    ["agu"] = true,
    ["OutroCara123#4567"] = true,
    -- Adicione mais aqui
}

-- Chaves
local weeklyKey = "Samu_Hub:5b8e9185e8434e6ea210b17e94ba7f56"
local premiumKey = "Samu_Hub26a774563a25487aa99a1ee0b22fd913" -- você pode mudar depois

-- Variáveis do usuário
local userKey = ""
local userDiscord = ""

-- Ícone flutuante para reabrir a aba da key
local icon = Instance.new("ImageButton")
icon.Image = "rbxassetid://128226597224894" -- ícone enviado por você
icon.Size = UDim2.new(0, 64, 0, 64)
icon.Position = UDim2.new(0, 20, 1, -84)
icon.BackgroundTransparency = 1
icon.ZIndex = 1000
icon.Parent = game:GetService("CoreGui")

icon.MouseButton1Click:Connect(function()
    Window:SelectTab(keyTab)
end)

-- UI da aba de Key
keyTab:AddParagraph({
    Title = "❗ Obtenha sua key",
    Content = "Clique nos botões abaixo para copiar o link da key semanal ou premium."
})

keyTab:AddButton({
    Title = "🔑 Pegar Key Semanal (KeyGuardian)",
    Callback = function()
        setclipboard("https://keyguardian.org/a/4868?id=12b64c4ceb7a4bd8b421929d6c6d1e5f")
        fluent:Notify({
            Title = "Link Copiado",
            Content = "Cole no navegador para gerar sua key semanal!",
            Duration = 4
        })
    end
})

keyTab:AddButton({
    Title = "💎 Pegar Key Premium (KeyGuardian)",
    Callback = function()
        setclipboard("https://SEU-LINK-AQUI") -- coloque aqui o link da sua key premium quando criar
        fluent:Notify({
            Title = "Link Copiado",
            Content = "Cole no navegador para gerar sua key premium!",
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
                fluent:Notify({Title = "Erro", Content = "Seu Discord não está autorizado para usar a key premium.", Duration = 5})
            end
        else
            fluent:Notify({Title = "Key Inválida", Content = "A key inserida está incorreta. Pegue novamente no botão acima.", Duration = 5})
        end
    end
})
