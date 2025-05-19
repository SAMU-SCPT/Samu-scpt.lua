local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "f67c51fea4c947958d506aa74e949bb2"
local falseData = "442e3cd98d8f47f8b0a9692d5d64ca1b"

KeyGuardLibrary.Set({
	publicToken = "492f786125f941479a7da3b27abe74af",
	privateToken = "e8f5bfbed6e34d88bba2ce0161c98c78",
	trueData = trueData,
	falseData = falseData,
})

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

local Entkey = Tabs.KeySys:AddInput("Input", {
		Title = "Coloque a Key",
		Description = "Coloque a Key aqui",
		Default = "",
		Placeholder = "coloque a key…",
		Numeric = false,
		Finished = false,
		Callback = function(Value)
				key = Value
		end
})

local Checkkey = Tabs.KeySys:AddButton({
		Title = "Verificar Key",
		Description = "Coloque a Key depois aperte esse botão",
		Callback = function()
			local isValid = KeyGuardLibrary.validateDefaultKey(key)
			if isValid then
				print("Key é válida")
				-- Seu código aqui (abrir UI principal, etc)
			else
				print("Key inválida")
			end
		end
})

local Getkey = Tabs.KeySys:AddButton({
		Title = "Pegue a Key",
		Description = "Pegue a Key aqui",
		Callback = function()
				setclipboard(KeyGuardLibrary.getLink())
		end
})

Window:SelectTab(1)
