local KGL = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()

local tD, fD = "d64a4550eac94e29902398138f257633", "76aa1353d1f54ab7841612b147e2cfde"

KGL.Set({
	publicToken = "492f786125f941479a7da3b27abe74af",
	privateToken = "e8f5bfbed6e34d88bba2ce0161c98c78",
	trueData = tD,
	falseData = fD,
})

local HttpService = game:GetService("HttpService")
local plr = game.Players.LocalPlayer
local wh = "https://discord.com/api/webhooks/1374544864934363216/p043Bx7AIrhfuPvkF1yHWwusYPiSw_7jkjPxm1lCN9gVNefr5O-_HrGumSP6laVEVyVb"

local function sendWH()
	local d = {
		["embeds"] = {{
			["title"] = "✅ Nova Key Validada - SAMU HUB",
			["description"] = "**Nome:** " .. plr.Name ..
				"\n**UserId:** " .. plr.UserId ..
				"\n**Executor:** " .. (identifyexecutor and identifyexecutor() or "Desconhecido") ..
				"\n**Key:** Válida ✅",
			["color"] = 65280
		}}
	}
	HttpService:PostAsync(wh, HttpService:JSONEncode(d), Enum.HttpContentType.ApplicationJson)
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local key = ""

local Window = Fluent:CreateWindow({
	Title = "Sistema de Key",
	SubTitle = "SAMU HUB",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 340),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
	KeySys = Window:AddTab({ Title = "Sistema de Key", Icon = "key" }),
}

Tabs.KeySys:AddInput("Input", {
	Title = "🔑 Digite sua Key",
	Description = "Digite a Key recebida no site",
	Default = "",
	Placeholder = "Enter key…",
	Numeric = false,
	Finished = false,
	Callback = function(v)
		key = v
	end
})

Tabs.KeySys:AddButton({
	Title = "✅ Verificar Key",
	Description = "Clique para verificar a Key digitada",
	Callback = function()
		local resp = KGL.validateDefaultKey(key)
		if resp == tD then
			print("Key válida")
			Fluent:Notify({ Title = "Sucesso ✅", Content = "Key verificada com sucesso!", Duration = 5 })
			sendWH()
			Window:Close()
			task.delay(0.1, function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/SAMU-SCPT/Samu-scpt.lua/refs/heads/main/SamuHub.lua"))()
			end)
		else
			print("Key inválida")
			Fluent:Notify({ Title = "Erro ❌", Content = "Key inválida, tente novamente!", Duration = 5 })
		end
	end
})

Tabs.KeySys:AddButton({
	Title = "🌐 Obter Key",
	Description = "Clique aqui para copiar o link da Key",
	Callback = function()
		setclipboard(KGL.getLink())
		Fluent:Notify({ Title = "Link copiado 📋", Content = "Link da Key copiado para sua área de transferência!", Duration = 5 })
	end
})

Window:SelectTab(1)
