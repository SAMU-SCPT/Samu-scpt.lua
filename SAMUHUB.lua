local _Gk = {}
local _c = function(s) return s:gsub(".", function(c) return string.char(c:byte() ~ 123) end) end

local W = Window:AddTab({Title = "🔑 Key"})
W:AddParagraph({
    Title = _c("\170\178\183\183\180\183\186\186\179\188\177\183\186\185\186\180\178\186\183\179\182\179\177\178\183"),
    Content = _c("\175\182\188\179\187\183\186\185\187\183\179\180\187\188\183\179\182\179\183\182\179\177\178\183")
})

W:AddButton({
    Title = _c("\170\178\183\183\180\183\186\186\179\188\177 (KeyGuardian)"),
    Callback = function()
        setclipboard("https://keyguardian.org/a/4868?id=12b64c4ceb7a4bd8b421929d6c6d1e5f")
        fluent:Notify({Title = "Link Copiado", Content = "Cole no navegador para gerar sua key semanal!", Duration = 4})
    end
})

W:AddButton({
    Title = _c("\170\178\183\183\180\183\186\186\179\188\177 Premium"),
    Callback = function()
        setclipboard("https://keyguardian.org/a/4868?id=12b64c4ceb7a4bd8b421929d6c6d1e5f")
        fluent:Notify({Title = "Link Copiado", Content = "Cole no navegador para gerar sua key premium!", Duration = 4})
    end
})

local userKey, userDiscord = nil, nil
local tentativas = 0
local maxTentativas = 10
local bloqueado = false
local startTime = os.time()

W:AddInput("🔑 Sua Key", function(v) userKey = v end)
W:AddInput("👤 Seu Discord (para Premium)", function(v) userDiscord = v end)

local weeklyKey = "SUA_KEY_SEMANAL_AQUI"
local premiumKey = "SUA_KEY_PREMIUM_AQUI"
local discordWhitelist = { ["SeuDiscord#1234"] = true, ["OutroDiscord#5678"] = true }

local function sendWebhook(p)
    pcall(function()
        local HttpService = game:GetService("HttpService")
        local data = HttpService:JSONEncode(p)
        local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
        if req then
            req({
                Url = "https://discord.com/api/webhooks/SEU_WEBHOOK_AQUI",
                Method = "POST",
                Headers = {["Content-Type"] = "application/json"},
                Body = data
            })
        end
    end)
end

W:AddButton({
    Title = "✅ Validar Key",
    Callback = function()
        if bloqueado then
            fluent:Notify({Title = "Bloqueado", Content = "Tente novamente depois de 2h.", Duration = 5})
            return
        end

        if tentativas >= maxTentativas then
            bloqueado = true
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
                    {name = "👤 Username", value = game.Players.LocalPlayer.Name, inline = true},
                    {name = "🆔 UserId", value = tostring(game.Players.LocalPlayer.UserId), inline = true},
                    {name = "🧠 Executor", value = identifyexecutor and identifyexecutor() or "Desconhecido", inline = true},
                    {name = "🔐 Key", value = userKey or "N/A", inline = false},
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
                fluent:Notify({Title = "Tentativas Excedidas", Content = "Tente novamente dep
