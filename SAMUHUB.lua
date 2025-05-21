local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local startTime = os.time()
local tentativas = 0
local maxTentativas = 10
local bloqueado = false

local encodedWebhook = "aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM3NDg4NjY2MzcwMDA5MDk5MS91XzNuTk5sZWpCdEFiVW90QkZ1ME5YZnJxOUJMcDl1bkJTM1pFN0ViaU02MUdVTnBtXzlVSmRreGlhOXFyQy1EOGZqUw=="
local webhookURL = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
local decode = function()
    return game:HttpGet("https://rentry.co/samuhubwebhook/raw")
end

local function sendWebhook(data)
    pcall(function()
        local jsonData = HttpService:JSONEncode(data)
        if webhookURL then
            webhookURL({
                Url = decode(),
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = jsonData
            })
        end
    end)
end

local fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/synolope/Fluent-UI/main/library.lua"))()

local Window = fluent:CreateWindow({
    Title = "SAMU Hub - Sistema de Key",
    SubTitle = "Acesse sua key e valide para continuar",
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 320),
    Acrylic = true,
    Theme = "Red",
    Center = true,
    IsDraggable = true
})

local keyTab = Window:AddTab({Title = "🔑 Key"})

local discordWhitelist = {
    ["agu"] = true,
    ["OutroCara123#4567"] = true,
}

-- // KEY SEMANAL
local weeklyKey = "Samu_Hub:5b8e9185e8434e6ea210b17e94ba7f56"
-- // KEY PREMIUM
local premiumKey = "Samu_Hub26a774563a25487aa99a1ee0b22fd913"

local userKey, userDiscord = "", ""

local icon = Instance.new("ImageButton")
icon.Image = "rbxassetid://128226597224894"
icon.Size = UDim2.new(0, 64, 0, 64)
icon.Position = UDim2.new(0, 20, 1, -84)
icon.BackgroundTransparency = 1
icon.ZIndex = 1000
icon.Parent = game:GetService("CoreGui")

icon.MouseButton1Click:Connect(function()
    Window:SelectTab(keyTab)
end)

keyTab:AddParagraph({Title = "❗ Obtenha sua key", Content = "Clique nos botões abaixo para copiar o link da key semanal ou premium."})

keyTab:AddButton({
    Title = "🔑 Pegar Key Semanal (KeyGuardian)",
    Callback = function()
        setclipboard("https://keyguardian.org/a/4868?id=12b64c4ceb7a4bd8b421929d6c6d1e5f")
        fluent:Notify({Title = "Link Copiado", Content = "Cole no navegador para gerar sua key semanal!", Duration = 4})
    end
})

keyTab:AddButton({
    Title = "💎 Pegar Key Premium (KeyGuardian)",
    Callback = function()
        setclipboard("https://SEU-LINK-AQUI")
        fluent:Notify({Title = "Link Copiado", Content = "Cole no navegador para gerar sua key premium!", Duration = 4})
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
        if bloqueado then
            fluent:Notify({Title = "Bloqueado", Content = "Tente novamente depois de 2h.", Duration = 5})
            return
        end

        tentativas += 1
        local tempoNaTela = os.time() - startTime

        local payload = {
            content = "",
            embeds = {{
                title = "🔒 Key Usada no SAMU Hub",
                color = 16711680,
                fields = {
                    {name = "👤 Username", value = LocalPlayer.Name, inline = true},
                    {name = "🆔 UserId", value = tostring(LocalPlayer.UserId), inline = true},
                    {name = "🧠 Executor", value = identifyexecutor and identifyexecutor() or "Desconhecido", inline = true},
                    {name = "🔐 Key", value = userKey, inline = false},
                    {name = "💎 Tipo", value = (userKey == premiumKey and "Premium" or "Semanal"), inline = true},
                    {name = "⏱️ Tempo de Tela", value = tostring(tempoNaTela) .. "s", inline = true},
                    {name = "❌ Tentativas Inválidas", value = tostring(tentativas), inline = true}
                },
                footer = {text = "SAMU Hub - Sistema de Key"}
            }}
        }
        sendWebhook(payload)

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
            fluent:Notify({Title = "Key Inválida", Content = "A key inserida está incorreta.", Duration = 5})
            if tentativas >= maxTentativas then
                bloqueado = true
                fluent:Notify({Title = "Tentativas Excedidas", Content = "Tente novamente depois de 2h.", Duration = 8})
            end
        end
    end
})
