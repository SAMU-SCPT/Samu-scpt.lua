if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    game.StarterGui:SetCore("SendNotification", {
      Icon = "rbxassetid://128226597224894";
          Title = "SAMU HUB", 
      Text = "Welcome SAMU HUB!"
  })
  
  wait(1)
  
  game.StarterGui:SetCore("SendNotification", {
      Icon = "rbxassetid://128226597224894";
      Title = "SAMU HUB    ", 
      Text = "Loading Ui..."
  })
  
  wait(10)
  
   
      game:GetService("Players").LocalPlayer.Idled:connect(function()
          game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          wait(1)
          game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
      end)
  
      _G.Color = Color3.fromRGB(255,0,0)
      if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
      
      repeat wait() until game:GetService("Players")
      
      if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end
          
      wait(1)
      
      do
          local ui = game.CoreGui:FindFirstChild("SAMU HUBGUI")
          if ui then
              ui:Destroy()
          end
      end
      
      local UserInputService = game:GetService("UserInputService")
      local TweenService = game:GetService("TweenService")
      
      local function MakeDraggable(topbarobject, object)
          local Dragging = nil
          local DragInput = nil
          local DragStart = nil
          local StartPosition = nil
      
          local function Update(input)
              local Delta = input.Position - DragStart
              local pos =
                  UDim2.new(
                      StartPosition.X.Scale,
                      StartPosition.X.Offset + Delta.X,
                      StartPosition.Y.Scale,
                      StartPosition.Y.Offset + Delta.Y
                  )
              local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
              Tween:Play()
          end
      
          topbarobject.InputBegan:Connect(
              function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                      Dragging = true
                      DragStart = input.Position
                      StartPosition = object.Position
      
                      input.Changed:Connect(
                          function()
                              if input.UserInputState == Enum.UserInputState.End then
                                  Dragging = false
                              end
                          end
                      )
                  end
              end
          )
      
          topbarobject.InputChanged:Connect(
              function(input)
                  if
                      input.UserInputType == Enum.UserInputType.MouseMovement or
                      input.UserInputType == Enum.UserInputType.Touch
                  then
                      DragInput = input
                  end
              end
          )
      
          UserInputService.InputChanged:Connect(
              function(input)
                  if input == DragInput and Dragging then
                      Update(input)
                  end
              end
          )
      end
      
      local library = {}
      
      function library:AddWindow(text,keybind)
          local bind = keybind or Enum.KeyCode.RightControl
          local ff = false
          local currenttab = ""
      
          local DoctorShiba = Instance.new("ScreenGui")
          DoctorShiba.Name = "SAMU HUBGUI"
          DoctorShiba.Parent = game.CoreGui
          DoctorShiba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
      
          local Main = Instance.new("Frame")
          Main.Name = "Main"
          Main.Parent = DoctorShiba
          Main.AnchorPoint = Vector2.new(0.5, 0.5)
          Main.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
          Main.BackgroundTransparency = 0.100
          Main.BorderSizePixel = 0
          Main.ClipsDescendants = true
          Main.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
          Main.Size = UDim2.new(0, 600, 0, 350)
      
          local Top = Instance.new("Frame")
          Top.Name = "Top"
          Top.Parent = Main
          Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          Top.BackgroundTransparency = 1.000
          Top.BorderSizePixel = 0
          Top.Size = UDim2.new(0, 600, 0, 20)
      
          local Page = Instance.new("Frame")
          Page.Name = "Page"
          Page.Parent = Main
          Page.BackgroundColor3 = Color3.fromRGB(25, 23, 35)
          Page.BackgroundTransparency = 0.100
          Page.BorderSizePixel = 0
          Page.Size = UDim2.new(0, 125, 0, 350)
      
          local NameHub = Instance.new("TextLabel")
          NameHub.Name = "NameHub"
          NameHub.Parent = Page
          NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          NameHub.BackgroundTransparency = 1.000
          NameHub.Position = UDim2.new(0.113333493, 0, 0, 0)
          NameHub.Size = UDim2.new(0, 110, 0, 20)
          NameHub.Font = Enum.Font.GothamSemibold
          NameHub.Text = text
          NameHub.TextColor3 = Color3.fromRGB(225, 0, 0)
          NameHub.TextSize = 11.000
          NameHub.TextXAlignment = Enum.TextXAlignment.Left
      
          local User = Instance.new("Frame")
          User.Name = "User"
          User.Parent = Page
          User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          User.BackgroundTransparency = 1.000
          User.Position = UDim2.new(0, 0, 0.8, 30)
          User.Size = UDim2.new(0, 125, 0, 40)
      
          local UserText = Instance.new("TextLabel")
          UserText.Name = "UserText"
          UserText.Parent = User
          UserText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          UserText.BackgroundTransparency = 1.000
          UserText.Position = UDim2.new(0.354999989, 0, 0, 11)
          UserText.Size = UDim2.new(0, 80, 0, 20)
          UserText.Font = Enum.Font.Gotham
          UserText.Text = tostring(game.Players.LocalPlayer.Name) 
          spawn(function()
              while wait() do
                  pcall(function()
                      wait(0.1) 
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 0, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 155, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 255, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(0, 255, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(0, 255, 255)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(0, 155, 255)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 0, 255)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 0, 155)}
                      ):Play() 
                      wait(.5)
                  end)
              end
          end)
          UserText.TextScaled = true
          UserText.TextSize = 11.000
          UserText.TextWrapped = true
          UserText.TextXAlignment = Enum.TextXAlignment.Left
      
          local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
          UITextSizeConstraint.Parent = UserText
          UITextSizeConstraint.MaxTextSize = 11
      
          local UserImage = Instance.new("ImageLabel")
          UserImage.Name = "UserImage"
          UserImage.Parent = User
          UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
          UserImage.Position = UDim2.new(0, 10, 0, 9)
          UserImage.Size = UDim2.new(0, 25, 0, 25)
          UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
      
          local UserImageCorner = Instance.new("UICorner")
          UserImageCorner.CornerRadius = UDim.new(0, 100)
          UserImageCorner.Name = "UserImageCorner"
          UserImageCorner.Parent = UserImage
      
          local ScrollPage = Instance.new("ScrollingFrame")
          ScrollPage.Name = "ScrollPage"
          ScrollPage.Parent = Page
          ScrollPage.Active = true
          ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ScrollPage.BackgroundTransparency = 1.000
          ScrollPage.BorderSizePixel = 0
          ScrollPage.Position = UDim2.new(0, 0, 0.086, 0)
          ScrollPage.Size = UDim2.new(0, 125, 0, 290)
          ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
          ScrollPage.ScrollBarThickness = 0
          local PageList = Instance.new("UIListLayout")
          PageList.Name = "PageList"
          PageList.Parent = ScrollPage
          PageList.SortOrder = Enum.SortOrder.LayoutOrder
          PageList.Padding = UDim.new(0, 7)
      
          local PagePadding = Instance.new("UIPadding")
          PagePadding.Name = "PagePadding"
          PagePadding.Parent = ScrollPage
          PagePadding.PaddingTop = UDim.new(0, 5)
          PagePadding.PaddingLeft = UDim.new(0, 28)
      
          local TabFolder = Instance.new("Folder")
          TabFolder.Name = "TabFolder"
          TabFolder.Parent = Main
      
          MakeDraggable(Top,Main)
      
          local uihide = false
      
          UserInputService.InputBegan:Connect(function(input)
              if input.KeyCode == bind then
                  if uihide == false then
                      uihide = true
                      Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
                  else
                      uihide = false
                      Main:TweenSize(UDim2.new(0, 600, 0, 350),"Out","Quad",0.2,true)
                  end
              end
          end)
      
          local uitab = {}
      
          function uitab:AddTab(text,image)
              local Image = image or 6023426915
      
              local PageButton = Instance.new("TextButton")
              PageButton.Name = "PageButton"
              PageButton.Parent = ScrollPage
              PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              PageButton.BackgroundTransparency = 1.000
              PageButton.BorderSizePixel = 0
              PageButton.Position = UDim2.new(0.224000007, 0, 0.029787235, 0)
              PageButton.Size = UDim2.new(0, 97, 0, 20)
              PageButton.AutoButtonColor = false
              PageButton.Font = Enum.Font.GothamSemibold
              PageButton.Text = text
              PageButton.TextColor3 = Color3.fromRGB(225, 225, 225)
              PageButton.TextSize = 11.000
              PageButton.TextXAlignment = Enum.TextXAlignment.Left
              
              local PageImage = Instance.new("ImageLabel")
              PageImage.Name = "PageImage"
              PageImage.Parent = PageButton
              PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              PageImage.BackgroundTransparency = 1.000
              PageImage.Position = UDim2.new(0, -20, 0, 3)
              PageImage.Size = UDim2.new(0, 15, 0, 15)
              PageImage.Image = "rbxassetid://"..tostring(Image)
      
              local MainTab = Instance.new("Frame")
              MainTab.Name = "MainTab"
              MainTab.Parent = TabFolder
              MainTab.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
              MainTab.BorderSizePixel = 0
              MainTab.Position = UDim2.new(0.208333328, 0, 0, 0)
              MainTab.Size = UDim2.new(0, 475, 0, 350)
              MainTab.Visible = false
      
              local ScrollTab = Instance.new("ScrollingFrame")
              ScrollTab.Name = "ScrollTab"
              ScrollTab.Parent = MainTab
              ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              ScrollTab.BackgroundTransparency = 1.000
              ScrollTab.BorderSizePixel = 0
              ScrollTab.Position = UDim2.new(0, 0, 0.057, 0)
              ScrollTab.Size = UDim2.new(0, 475, 0, 330)
              ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
              ScrollTab.ScrollBarThickness = 3
      
              local TabList = Instance.new("UIListLayout")
              TabList.Name = "TabList"
              TabList.Parent = ScrollTab
              TabList.SortOrder = Enum.SortOrder.LayoutOrder
              TabList.Padding = UDim.new(0, 5)
      
              local TabPadding = Instance.new("UIPadding")
              TabPadding.Name = "TabPadding"
              TabPadding.Parent = ScrollTab
              TabPadding.PaddingLeft = UDim.new(0, 10)
              TabPadding.PaddingTop = UDim.new(0, 10)
      
              PageButton.MouseButton1Click:Connect(function()
                  currenttab = MainTab.Name
                  for i,v in next, TabFolder:GetChildren() do 
                      if v.Name == "MainTab" then
                          v.Visible = false
                      end
                  end
                  MainTab.Visible = true
      
                  for i,v in next, ScrollPage:GetChildren() do 
                      if v:IsA("TextButton") then
                          TweenService:Create(
                              v,
                              TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                              {TextColor3 = Color3.fromRGB(225, 225, 225)}
                          ):Play()
                      end
                      TweenService:Create(
                          PageButton,
                          TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(255,0,0)}
                      ):Play()
                  end
              end)
      
              if ff == false then
                  TweenService:Create(
                      PageButton,
                      TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                      {TextColor3 = Color3.fromRGB(255,0,0)}
                  ):Play()
                  for i,v in next, TabFolder:GetChildren() do 
                      if v.Name == "MainTab" then
                          v.Visible = false
                      end
                      MainTab.Visible = true
                  end
                  ff = true
              end
      
              game:GetService("RunService").Stepped:Connect(function()
                  pcall(function()
                      ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 10)
                      ScrollTab.CanvasSize = UDim2.new(0,0,0,TabList.AbsoluteContentSize.Y + 30)
                  end)
              end)
              
              local main = {}
              
              function main:AddButton(text,callback)
                  local Button = Instance.new("TextButton")
      
                  Button.Name = "Button"
                  Button.Parent = ScrollTab
                  Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                  Button.BackgroundTransparency = 0.1
                  Button.BorderSizePixel = 0
                  Button.Size = UDim2.new(0, 455, 0, 30)
                  Button.AutoButtonColor = false
                  Button.Font = Enum.Font.Gotham
                  Button.Text = text
                  Button.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Button.TextSize = 11.000
                  Button.TextWrapped = true
                  
                  local ButtonCorner = Instance.new("UICorner")
                  ButtonCorner.Name = "ButtonCorner"
                  ButtonCorner.CornerRadius = UDim.new(0, 5)
                  ButtonCorner.Parent = Button
                  
                  Button.MouseEnter:Connect(function()
                      TweenService:Create(
                          Button,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(255,0,0)}
                      ):Play()
                  end)
                  
                  Button.MouseLeave:Connect(function()
                      TweenService:Create(
                          Button,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(225, 225, 225)}
                      ):Play()
                  end)
                  
                  Button.MouseButton1Click:Connect(function()
                      callback()
                      Button.TextSize = 0
                      TweenService:Create(
                          Button,
                          TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                          {TextSize = 11}
                      ):Play()
                  end)
              end
              
              function main:AddToggle(text,config,callback)
                  local ToggleImage = Instance.new("Frame")
                  
                  local Toggle = Instance.new("TextButton")
                  Toggle.Name = "Toggle"
                  Toggle.Parent = ScrollTab
                  Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                  Toggle.BackgroundTransparency = 0.1
                  Toggle.BorderSizePixel = 0
                  Toggle.AutoButtonColor = false
                  Toggle.Size = UDim2.new(0, 455, 0, 30)
                  Toggle.Font = Enum.Font.SourceSans
                  Toggle.Text = ""
                  Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                  Toggle.TextSize = 14.000
                  
                  local ToggleCorner = Instance.new("UICorner")
                  ToggleCorner.Name = "ToggleCorner"
                  ToggleCorner.CornerRadius = UDim.new(0, 5)
                  ToggleCorner.Parent = Toggle
      
                  local ToggleLabel = Instance.new("TextLabel")
                  ToggleLabel.Name = "ToggleLabel"
                  ToggleLabel.Parent = Toggle
                  ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  ToggleLabel.BackgroundTransparency = 1.000
                  ToggleLabel.Position = UDim2.new(0, 13, 0, 0)
                  ToggleLabel.Size = UDim2.new(0, 410, 0, 30)
                  ToggleLabel.Font = Enum.Font.Gotham
                  ToggleLabel.Text = text
                  ToggleLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                  ToggleLabel.TextSize = 11.000
                  ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
      
                  ToggleImage.Name = "ToggleImage"
                  ToggleImage.Parent = Toggle
                  ToggleImage.BackgroundColor3 = Color3.fromRGB(70, 68, 79)
                  ToggleImage.Position = UDim2.new(0, 425, 0, 5)
                  ToggleImage.BorderSizePixel = 0
                  ToggleImage.Size = UDim2.new(0, 20, 0, 20)
                  local ToggleImageCorner = Instance.new("UICorner")
                  ToggleImageCorner.Name = "ToggleImageCorner"
                  ToggleImageCorner.CornerRadius = UDim.new(0, 5)
                  ToggleImageCorner.Parent = ToggleImage
      
                  local ToggleImage2 = Instance.new("Frame")
                  ToggleImage2.Name = "ToggleImage2"
                  ToggleImage2.Parent = ToggleImage
                  ToggleImage2.AnchorPoint = Vector2.new(0.5, 0.5)
                  ToggleImage2.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  ToggleImage2.Position = UDim2.new(0, 10, 0, 10)
                  ToggleImage2.Visible = false
      
                  local ToggleImage2Corner = Instance.new("UICorner")
                  ToggleImage2Corner.Name = "ToggleImageCorner"
                  ToggleImage2Corner.CornerRadius = UDim.new(0, 5)
                  ToggleImage2Corner.Parent = ToggleImage2
                  
                  Toggle.MouseEnter:Connect(function()
                      TweenService:Create(
                          ToggleLabel,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(255,0,0)}
                      ):Play()
                  end)
      
                  Toggle.MouseLeave:Connect(function()
                      TweenService:Create(
                          ToggleLabel,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(225, 225, 225)}
                      ):Play()
                  end)
                  if config == nil then config = false end
                  local toggled = config or false
                  Toggle.MouseButton1Click:Connect(function()
                      if toggled == false then
                          toggled = true
                          ToggleImage2.Visible = true
                          ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
                      else
                          toggled = false
                          ToggleImage2:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.1,true)
                          wait(0.1)
                          ToggleImage2.Visible = false
                      end
                      callback(toggled)
                  end)
                  
                  if config == true then
                      ToggleImage2.Visible = true
                      ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
                      toggled = true
                      callback(toggled)
                  end
              end
      
              function main:AddTextbox(text,holder,disappear,callback)
                  local Textboxx = Instance.new("Frame")
                  local TextboxxCorner = Instance.new("UICorner")
                  local TextboxTitle = Instance.new("TextLabel")
                  local Textbox = Instance.new("TextBox")
                  local TextboxCorner = Instance.new("UICorner")
      
                  Textboxx.Name = "Textboxx"
                  Textboxx.Parent = ScrollTab
                  Textboxx.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                  Textboxx.Size = UDim2.new(0, 455, 0, 30)
      
                  TextboxxCorner.CornerRadius = UDim.new(0, 5)
                  TextboxxCorner.Name = "TextboxxCorner"
                  TextboxxCorner.Parent = Textboxx
      
                  TextboxTitle.Name = "TextboxTitle"
                  TextboxTitle.Parent = Textboxx
                  TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  TextboxTitle.BackgroundTransparency = 1.000
                  TextboxTitle.Position = UDim2.new(0, 15, 0, 0)
                  TextboxTitle.Size = UDim2.new(0, 300, 0, 30)
                  TextboxTitle.Font = Enum.Font.Gotham
                  TextboxTitle.Text = text
                  TextboxTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                  TextboxTitle.TextSize = 11.000
                  TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
      
                  Textbox.Name = "Textbox"
                  Textbox.Parent = Textboxx
                  Textbox.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
                  Textbox.Position = UDim2.new(0, 310, 0, 5)
                  Textbox.Size = UDim2.new(0, 140, 0, 20)
                  Textbox.Font = Enum.Font.Gotham
                  Textbox.Text = holder
                  Textbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Textbox.TextSize = 11.000
      
                  Textbox.FocusLost:Connect(function()
                      if #Textbox.Text > 0 then
                          callback(Textbox.Text)
                      end
                      if disappear then
                          Textbox.Text = ""
                      else
                          Textbox.Text = holder
                      end
                  end)
      
                  TextboxCorner.Name = "TextboxCorner"
                  TextboxCorner.CornerRadius = UDim.new(0, 5)
                  TextboxCorner.Parent = Textbox
              end
      
              function main:AddDropdown(text,table,callback)
                  local Dropdown = Instance.new("Frame")
                  local UICorner = Instance.new("UICorner")
                  local DropButton = Instance.new("TextButton")
                  local Droptitle = Instance.new("TextLabel")
                  local DropScroll = Instance.new("ScrollingFrame")
                  local DropdownList = Instance.new("UIListLayout")
                  local DropdownPadding = Instance.new("UIPadding")
                  local DropImage = Instance.new("ImageLabel")
                  
                  Dropdown.Name = "Dropdown"
                  Dropdown.Parent = ScrollTab
                  Dropdown.Active = true
                  Dropdown.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                  Dropdown.ClipsDescendants = true
                  Dropdown.Size = UDim2.new(0, 455, 0, 30)
                  
                  UICorner.CornerRadius = UDim.new(0, 5)
                  UICorner.Parent = Dropdown
                  
                  DropButton.Name = "DropButton"
                  DropButton.Parent = Dropdown
                  DropButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                  DropButton.BackgroundTransparency = 1.000
                  DropButton.Size = UDim2.new(0, 455, 0, 30)
                  DropButton.Font = Enum.Font.SourceSans
                  DropButton.Text = ""
                  DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                  DropButton.TextSize = 14.000
                  
                  Droptitle.Name = "Droptitle"
                  Droptitle.Parent = Dropdown
                  Droptitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  Droptitle.BackgroundTransparency = 1.000
                  Droptitle.Position = UDim2.new(0.0281690136, 0, 0, 0)
                  Droptitle.Size = UDim2.new(0, 410, 0, 30)
                  Droptitle.Font = Enum.Font.Gotham
                  Droptitle.Text = text.." : "
                  Droptitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Droptitle.TextSize = 11.000
                  Droptitle.TextXAlignment = Enum.TextXAlignment.Left
      
                  DropImage.Name = "DropImage"
                  DropImage.Parent = Dropdown
                  DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  DropImage.BackgroundTransparency = 1.000
                  DropImage.Position = UDim2.new(0, 425, 0, 5)
                  DropImage.Rotation = 0
                  DropImage.Size = UDim2.new(0, 20, 0, 20)
                  DropImage.Image = "rbxassetid://5012539403"
                  
                  DropScroll.Name = "DropScroll"
                  DropScroll.Parent = Droptitle
                  DropScroll.Active = true
                  DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  DropScroll.BackgroundTransparency = 1.000
                  DropScroll.BorderSizePixel = 0
                  DropScroll.Position = UDim2.new(-0.0317460336, 0, 1, 0)
                  DropScroll.Size = UDim2.new(0, 455, 0, 70)
                  DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
                  DropScroll.ScrollBarThickness = 2
                  
                  DropdownList.Name = "DropdownList"
                  DropdownList.Parent = DropScroll
                  DropdownList.SortOrder = Enum.SortOrder.LayoutOrder
                  DropdownList.Padding = UDim.new(0, 5)
                  
                  DropdownPadding.Name = "DropdownPadding"
                  DropdownPadding.Parent = DropScroll
                  DropdownPadding.PaddingTop = UDim.new(0, 5)
      
                  local isdropping = false
      
                  for i,v in next,table do
                      local DropButton2 = Instance.new("TextButton")
      
                      DropButton2.Name = "DropButton2"
                      DropButton2.Parent = DropScroll
                      DropButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                      DropButton2.BackgroundTransparency = 1.000
                      DropButton2.Size = UDim2.new(0, 455, 0, 30)
                      DropButton2.AutoButtonColor = false
                      DropButton2.Font = Enum.Font.Gotham
                      DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
                      DropButton2.TextSize = 11.000
                      DropButton2.Text = tostring(v)
      
                      DropButton2.MouseEnter:Connect(function()
                          TweenService:Create(
                              DropButton2,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {TextColor3 = Color3.fromRGB(255,0,0)}
                          ):Play()
                      end)
                      DropButton2.MouseLeave:Connect(function()
                          TweenService:Create(
                              DropButton2,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {TextColor3 = Color3.fromRGB(225, 225, 225)}
                          ):Play()
                      end)
      
                      DropButton2.MouseButton1Click:Connect(function()
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 30)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                              {Rotation = 0}
                          ):Play()
                          Droptitle.Text =  text.." : "..tostring(v)
                          callback(v)
                          isdropping = not isdropping
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      end)
                  end
      
                  DropButton.MouseButton1Click:Connect(function()
                      if isdropping == false then
                          isdropping = true
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 100)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Rotation = -180}
                          ):Play()
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      else
                          isdropping = false
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 30)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Rotation = 0}
                          ):Play()
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      end
                  end)
                  DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
      
                  local drop = {}
      
                  function drop:Clear()
                      Droptitle.Text = tostring(text).." :"
                      TweenService:Create(
                          Dropdown,
                          TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                          {Size = UDim2.new(0, 455, 0, 30)} 
                      ):Play()
                      isdropping = false
                      for i, v in next, DropScroll:GetChildren() do
                          if v:IsA("TextButton") then
                              v:Destroy()
                          end
                      end
                  end
                  function drop:Add(t)
                      local DropButton2 = Instance.new("TextButton")
      
                      DropButton2.Name = "DropButton2"
                      DropButton2.Parent = DropScroll
                      DropButton2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                      DropButton2.BackgroundTransparency = 1.000
                      DropButton2.Size = UDim2.new(0, 455, 0, 30)
                      DropButton2.AutoButtonColor = false
                      DropButton2.Font = Enum.Font.Gotham
                      DropButton2.TextColor3 = Color3.fromRGB(0, 45, 255)
                      DropButton2.TextSize = 11.000
                      DropButton2.Text = tostring(t)
      
                      DropButton2.MouseButton1Click:Connect(function()
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 30)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                              {Rotation = 0}
                          ):Play()
                          Droptitle.Text =  text.." : "..tostring(t)
                          callback(t)
                          isdropping = not isdropping
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      end)
                  end
                  return drop
              end
      
              function main:AddSlider(text,min,max,set,callback)
                  set = (math.clamp(set,min,max))
                  if set > max then set = max end
      
                  local Slider = Instance.new("Frame")
                  local UICorner = Instance.new("UICorner")
                  local SliderTitle = Instance.new("TextLabel")
                  local SliderValue = Instance.new("TextLabel")
                  local SliderButton = Instance.new("TextButton")
                  local Bar1 = Instance.new("Frame")
                  local Bar = Instance.new("Frame")
                  local UICorner_2 = Instance.new("UICorner")
                  local CircleBar = Instance.new("Frame")
                  local UICorner_3 = Instance.new("UICorner")
                  local UICorner_4 = Instance.new("UICorner")
      
                  Slider.Name = "Slider"
                  Slider.Parent = ScrollTab
                  Slider.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                  Slider.Size = UDim2.new(0, 455, 0, 40)
      
                  UICorner.CornerRadius = UDim.new(0, 5)
                  UICorner.Parent = Slider
      
                  SliderTitle.Name = "SliderTitle"
                  SliderTitle.Parent = Slider
                  SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SliderTitle.BackgroundTransparency = 1.000
                  SliderTitle.Position = UDim2.new(0.0283286124, 0, 0, 0)
                  SliderTitle.Size = UDim2.new(0, 290, 0, 20)
                  SliderTitle.Font = Enum.Font.Gotham
                  SliderTitle.Text = text
                  SliderTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                  SliderTitle.TextSize = 11.000
                  SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
      
                  SliderValue.Name = "SliderValue"
                  SliderValue.Parent = Slider
                  SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SliderValue.BackgroundTransparency = 1.000
                  SliderValue.Position = UDim2.new(0.887778878, 0, 0, 0)
                  SliderValue.Size = UDim2.new(0, 40, 0, 20)
                  SliderValue.Font = Enum.Font.Gotham
                  SliderValue.Text =  tostring(set and math.floor( (set / max) * (max - min) + min) or 0)
                  SliderValue.TextColor3 = Color3.fromRGB(225, 225, 225)
                  SliderValue.TextSize = 11.000
      
                  SliderButton.Name = "SliderButton"
                  SliderButton.Parent = Slider
                  SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SliderButton.BackgroundTransparency = 1.000
                  SliderButton.Position = UDim2.new(0, 10, 0, 25)
                  SliderButton.Size = UDim2.new(0, 435, 0, 5)
                  SliderButton.AutoButtonColor = false
                  SliderButton.Font = Enum.Font.SourceSans
                  SliderButton.Text = ""
                  SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                  SliderButton.TextSize = 14.000
      
                  Bar1.Name = "Bar1"
                  Bar1.Parent = SliderButton
                  Bar1.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
                  Bar1.Size = UDim2.new(0, 435, 0, 5)
      
                  Bar.Name = "Bar"
                  Bar.Parent = Bar1
                  Bar.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  Bar.Size = UDim2.new(set/max, 0, 0, 5)
      
                  UICorner_2.CornerRadius = UDim.new(0, 100)
                  UICorner_2.Parent = Bar
      
                  CircleBar.Name = "CircleBar"
                  CircleBar.Parent = Bar
                  CircleBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  CircleBar.Position = UDim2.new(1, -2, 0, -2)
                  CircleBar.AnchorPoint = Vector2.new(0, 0.1)
                  CircleBar.Size = UDim2.new(0, 10, 0, 10)
      
                  UICorner_3.CornerRadius = UDim.new(0, 100)
                  UICorner_3.Parent = CircleBar
      
                  UICorner_4.CornerRadius = UDim.new(0, 100)
                  UICorner_4.Parent = Bar1
                  
                  local mouse = game.Players.LocalPlayer:GetMouse()
                  local uis = game:GetService("UserInputService")
      
                  if Value == nil then
                      Value = set
                      pcall(function()
                          callback(Value)
                      end)
                  end
                  
                  SliderButton.MouseButton1Down:Connect(function()
                      Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min)) or 0
                      pcall(function()
                          callback(Value)
                      end)
                      Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                      CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                      moveconnection = mouse.Move:Connect(function()
                          SliderValue.Text = Value
                          Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                          pcall(function()
                              callback(Value)
                          end)
                          Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                          CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                      end)
                      releaseconnection = uis.InputEnded:Connect(function(Mouse)
                          if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                              Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                              pcall(function()
                                  callback(Value)
                              end)
                              Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                              CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                              moveconnection:Disconnect()
                              releaseconnection:Disconnect()
                          end
                      end)
                  end)
                  releaseconnection = uis.InputEnded:Connect(function(Mouse)
                      if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                          Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                          SliderValue.Text = Value
                      end
                  end)
              end
              function main:AddSeperator(text)
                  local Seperator = Instance.new("Frame")
                  local Sep1 = Instance.new("Frame")
                  local SepLabel = Instance.new("TextLabel")
                  local Sep2 = Instance.new("Frame")
      
                  Seperator.Name = "Seperator"
                  Seperator.Parent = ScrollTab
                  Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  Seperator.BackgroundTransparency = 1.000
                  Seperator.ClipsDescendants = true
                  Seperator.Size = UDim2.new(0, 455, 0, 20)
          local ScreenGui = Instance.new("ScreenGui")
      local Toggle = Instance.new("TextButton")
      
      ScreenGui.Name = "ScreenGui"
      ScreenGui.Parent = game.CoreGui
      
      Toggle.Name = "Toggle"
      Toggle.Parent = ScreenGui
      Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
      Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
      Toggle.Size = UDim2.new(0, 50, 0, 50)
      Toggle.Font = Enum.Font.Code
      Toggle.Text = "SAMU HUB"
      Toggle.TextColor3 = Color3.fromRGB(0, 45, 255 )
      Toggle.TextScaled = true
      Toggle.MouseButton1Down:connect(function()
          game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
      end)
                  Sep1.Name = "Sep1"
                  Sep1.Parent = Seperator
                  Sep1.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  Sep1.BorderSizePixel = 0
                  Sep1.Position = UDim2.new(0, 0, 0, 10)
                  Sep1.Size = UDim2.new(0, 150, 0, 1)
      
                  SepLabel.Name = "SepLabel"
                  SepLabel.Parent = Seperator
                  SepLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SepLabel.BackgroundTransparency = 1.000
                  SepLabel.Position = UDim2.new(0, 95, 0, 0)
                  SepLabel.Size = UDim2.new(0, 255, 0, 20)
                  SepLabel.Font = Enum.Font.Gotham
                  SepLabel.Text = text
                  SepLabel.TextColor3 = Color3.fromRGB(225,225,225)
                  SepLabel.TextSize = 11.000
      
                  Sep2.Name = "Sep2"
                  Sep2.Parent = Seperator
                  Sep2.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  Sep2.BorderSizePixel = 0
                  Sep2.Position = UDim2.new(0, 305, 0, 10)
                  Sep2.Size = UDim2.new(0, 150, 0, 1)
              end
              function main:AddLine()
                  local Line = Instance.new("Frame")
                  local Linee = Instance.new("Frame")
      
                  Line.Name = "Line"
                  Line.Parent = ScrollTab
                  Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  Line.BackgroundTransparency = 1.000
                  Line.ClipsDescendants = true
                  Line.Size = UDim2.new(0, 455, 0, 20)
      
                  Linee.Name = "Linee"
                  Linee.Parent = Line
                  Linee.BackgroundColor3 = Color3.fromRGB(0, 45, 255)
                  Linee.BorderSizePixel = 0
                  Linee.Position = UDim2.new(0, 0, 0, 10)
                  Linee.Size = UDim2.new(0, 455, 0, 1)
              end
              function main:AddLabel(text)
                  local Label = Instance.new("TextLabel")
                  local PaddingLabel = Instance.new("UIPadding")
                  local labell = {}
          
                  Label.Name = "Label"
                  Label.Parent = ScrollTab
                  Label.BackgroundColor3 = Color3.fromRGB(0, 45, 255)
                  Label.BackgroundTransparency = 1.000
                  Label.Size = UDim2.new(0, 455, 0, 20)
                  Label.Font = Enum.Font.Gotham
                  Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Label.TextSize = 11.000
                  Label.Text = text
                  Label.TextXAlignment = Enum.TextXAlignment.Left
      
                  PaddingLabel.PaddingLeft = UDim.new(0,10)
                  PaddingLabel.Parent = Label
                  PaddingLabel.Name = "PaddingLabel"
          
                  function labell:Set(newtext)
                      Label.Text = newtext
                  end
      
                  return labell
              end
              
              return main
          end
          return uitab
      end
      
  function TP(P1)
      Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
      if Distance < 250 then
          Speed = 600
      elseif Distance < 500 then
          Speed = 400
      elseif Distance < 1000 then
          Speed = 350
      elseif Distance >= 1000 then
          Speed = 200
      end
      game:GetService("TweenService"):Create(
          game.Players.LocalPlayer.Character.HumanoidRootPart,
          TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
          {CFrame = P1}
      ):Play()
  end
  
  function TP2(P1)
      Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
      if Distance < 1000 then
          Speed = 400
      elseif Distance >= 1000 then
          Speed = 250
      end
      game:GetService("TweenService"):Create(
          game.Players.LocalPlayer.Character.HumanoidRootPart,
          TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
          {CFrame = P1}
      ):Play()
      Clip = true
      wait(Distance/Speed)
      Clip = false
  end
  Old_World = false
  New_World = false
  Three_World = false
  local placeId = game.PlaceId
  if placeId == 2753915549 then
      Old_World = true
  elseif placeId == 4442272183 then
      New_World = true
  elseif placeId == 7449423635 then
      Three_World = true
  end
  
  
     
      local sxhub = library:AddWindow("SAMU HUB | Bloxfruit!",Enum.KeyCode.RightControl)
      
      local Main = sxhub:AddTab("Main","6026568198")
      local stus = sxhub:AddTab("Auto Stats","7040410130")
      local tp = sxhub:AddTab("Teleport","7044226690")
      local player = sxhub:AddTab("Players(Soon)","7252023075")
      
      Main:AddSeperator("Menu")
      
      Time = Main:AddLabel("Server Time")
      
      function UpdateTime()
          local GameTime = math.floor(workspace.DistributedGameTime+0.5)
          local Hour = math.floor(GameTime/(60^2))%24
          local Minute = math.floor(GameTime/(60^1))%60
          local Second = math.floor(GameTime/(60^0))%60
          Time:Set("Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second)
      end
      
      spawn(function()
          while task.wait() do
              pcall(function()
                  UpdateTime()
              end)
          end
      end)
  
  Old_World = false
  New_World = false
  Three_World = false
     local placeId = game.PlaceId
  if placeId == 2753915549 then
      Old_World = true
  elseif placeId == 4442272183 then
      New_World = true
  elseif placeId == 7449423635 then
      Three_World = true
  end
  
  function TP(P1)
      Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
      if Distance < 250 then
          Speed = 600
      elseif Distance < 500 then
          Speed = 400
      elseif Distance < 1000 then
          Speed = 350
      elseif Distance >= 1000 then
          Speed = 200
      end
      game:GetService("TweenService"):Create(
          game.Players.LocalPlayer.Character.HumanoidRootPart,
          TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
          {CFrame = P1}
      ):Play()
  end
  
  function TP2(P1)
      Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
      if Distance < 1000 then
          Speed = 400
      elseif Distance >= 1000 then
          Speed = 250
      end
      game:GetService("TweenService"):Create(
          game.Players.LocalPlayer.Character.HumanoidRootPart,
          TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
          {CFrame = P1}
      ):Play()
      Clip = true
      wait(Distance/Speed)
      Clip = false
  end
  
  Wapon = {}
          for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
              if v:IsA("Tool") then
                  table.insert(Wapon ,v.Name)
              end
          end 
      
      Main:AddLabel("Menu")
      
      Main:AddToggle("AutoFarm Level",false,function(vu)
           _G.AutoFarm = vu
          Magnet = vu
      if _G.AutoFarm and SelectToolWeapon == "" then
          ui:Notification("AutoFarm","SelectWeapon First ",2)
      else
          Auto_Farm = vu
          SelectMonster = ""
          if vu == false then
              wait(1)
              TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          end
      end
         function UseCode(Text)
          game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
      end
      UseCode("UPD16")
      UseCode("2BILLION")
      UseCode("UPD15")
      UseCode("FUDD10")
      UseCode("BIGNEWS")
      UseCode("THEGREATACE")
      UseCode("SUB2GAMERROBOT_EXP1")
      UseCode("StrawHatMaine")
      UseCode("Sub2OfficialNoobie")
      UseCode("SUB2NOOBMASTER123")
      UseCode("Sub2Daigrock")
      UseCode("Axiore")
      UseCode("TantaiGaming")
      UseCode("STRAWHATMAINE") 
      end)
  
  
      Main:AddToggle("Auto SuperHuman", _G.FullyAutoSuperhuman,function(vu)
      AutoFullySuperhuman = vu
      end) 
     
      Main:AddToggle("Auto Electric Claw",false,function(vu)
      AutoElectricClaw = vu
      if AutoElectricClaw then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
      end
      end)
  spawn(function()
      while wait(.1) do
          if AutoElectricClaw then
              if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
              end
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
              end
              if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399) or (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value <= 399) then
                  SelectToolWeapon = "Electro"
              end
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
                  SelectToolWeapon = "Electric Claw"
              end
              if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400) then
                  if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == "..." and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start") == 4 then
                      TP(CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375))
                  elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 4 then
                      Auto_Farm = false
                      if (CFrame.new(-10369.7725, 331.654175, -10130.3047, 0.879783928, -1.15147909e-08, 0.475373745, -1.70712194e-10, 1, 2.45385472e-08, -0.475373745, -2.16697718e-08, 0.879783928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                          wait(1.1)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                      else
                          TP(CFrame.new(-10369.7725, 331.654175, -10130.3047, 0.879783928, -1.15147909e-08, 0.475373745, -1.70712194e-10, 1, 2.45385472e-08, -0.475373745, -2.16697718e-08, 0.879783928))
                      end
                  elseif _G.AutoFarm then
                      Auto_Farm = true
                  end
              end
          end
      end
  end)
         if New_World then
      Main:AddToggle("Auto Factory",false,function(value)
          Factory = vu
          if vu == false then
              wait(1)
              TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          end
      end)
  end
        if Old_World then
      Main:AddToggle("Auto New_World", _G.AutoNewworld,function(vu)
          Auto_Newworld = vu
          if vu == false then
              wait(1)
              TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          end
      end)
  end   
  
          if New_World then
          Main:AddToggle("Auto Third Sea", _G.AutoThirdSea,function(vu)
          ReadyThirdSea = vu
          TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          if ReadyThirdSea and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") ~= 3 then
              DiscordLib:Notification("Auto Third Sea","u must have\n Finish Bartilo Quest","Ok")
          elseif ReadyThirdSea and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
              DiscordLib:Notification("Auto Third Sea","u must have to Killed Don Swan First","Ok")
          elseif ReadyThirdSea and SelectToolWeapon == "" then
              DiscordLib:Notification("Auto Third Sea","Select Weapon First","Ok")
          else
              AutoThird = vu
          end
      end)
  end
  
  if Three_World then
      Main:AddToggle("Auto Torch", false,function(vu)
          if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Holy Torch") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
              DiscordLib:Notification("Auto Holy Torch", "You not Have Holy Torch", "Okay")
          else
              HolyTorch = true
              EquipWeapon("Holy Torch")
              TP2(CFrame.new(-10753.7842, 412.229553, -9364.7959, 0.999571264, 1.15988023e-07, 0.0292795487, -1.15145767e-07, 1, -3.0452199e-08, -0.0292795487, 2.70677276e-08, 0.999571264))
              wait(1)
              TP2(CFrame.new(-11673.8115, 331.748993, -9473.27246, 0.82297951, -1.03370638e-07, -0.568071067, 7.03514687e-08, 1, -8.00477693e-08, 0.568071067, 2.59130388e-08, 0.82297951))
              wait(1)
              TP2(CFrame.new(-12134.1895, 519.47522, -10653.8457, 0.828167021, 4.15180885e-08, -0.560481429, -3.68933151e-08, 1, 1.95622238e-08, 0.560481429, 4.47723014e-09, 0.828167021))
              wait(1)
              TP2(CFrame.new(-13336.9902, 485.547852, -6983.84131, 0.834512472, 8.29770741e-08, -0.550989032, -5.3400484e-08, 1, 6.97177356e-08, 0.550989032, -2.87572384e-08, 0.834512472))
              wait(1)
              TP2(CFrame.new(-13486.5088, 332.403931, -7925.40527, -0.974250019, 5.647113e-08, 0.225470319, 3.76493894e-08, 1, -8.7777444e-08, -0.225470319, -7.70283606e-08, -0.974250019))
              HolyTorch = false
          end
      end)
  end
  
  
  
      Main:AddToggle("Auto Wear-Accessories", _G.AutoAccessory,function(value)
      AutoAccessories = value
      end)
  if not Old_World then
  end
  
  if _G.AutoLegendary_Hop then
      _G.Auto_Legendary_Sword = true
  elseif _G.Auto_Legendary_Sword then
      _G.Auto_Legendary_Sword = true
  else
      _G.Auto_Legendary_Sword = false
  end
  
  
  if _G.AutoEnchancement_Hop then
      _G.AutoEnchancement = true
  elseif _G.AutoEnchancement then
      _G.AutoEnchancement = true
  else
      _G.AutoEnchancement = false
  end
  
  
  if New_World then
      Main:AddToggle("Auto Buy Sword-Legendary", _G.Auto_Legendary_Sword,function(value)
          LegebdarySword = value  
      end)
     end
  if not Old_World then
      Main:AddToggle("Auto Buy Enchancement >= 1500 F", _G.AutoEnchancement,function(value)
          Enchancement = value   
      end)
  end
  
      local SelectWeapon  = Main:AddDropdown("Select Weapon",Wapon,function(Value)
      SelectToolWeapon = Value
      SelectToolWeaponOld = Value
      end)
      
      Main:AddButton("Refresh Weapon",function()
      SelectWeapon:Clear()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
              SelectWeapon:Add(v.Name)
          end
      end
      for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
          if v:IsA("Tool") then
              SelectWeapon:Add(v.Name)
          end
      end
  
      end)
  
  local Boss = {}
  for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
      if string.find(v.Name, "Boss") then
          if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
          elseif v.Name == "rip_indra [Lv. 1500] [Boss]" then
          else
              table.insert(Boss, v.Name)
          end
      end
  end
  
       Main:AddSeperator("Farm Boss")   
  for i,v in pairs(game.workspace.Enemies:GetChildren()) do
      if string.find(v.Name, "Boss") then
          if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
          elseif v.Name == "rip_indra [Lv. 1500] [Boss]" then
          else
              table.insert(Boss, v.Name)
          end
      end
  end
    local BossName = Main:AddDropdown("Select Boss", Boss,function(vu)
      SelectBoss = vu
      end)
    local SelectWeapon = Main:AddDropdown("Select Weapon", Wapon,function(vu)
      SelectBoss = vu
      end)
      Main:AddToggle("Auto Farm Boss",false,function(vu)
      AutoFarmBoss = vu
      BossQuest = vu
      if vu == false then
          wait(1)
          TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
      end
  end)   
  
      Main:AddButton("Refresh Weapon",function()
      SelectWeapon:Clear()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
          if v:IsA("Tool") then
              SelectWeapon:Add(v.Name)
          end
      end
      for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
          if v:IsA("Tool") then
              SelectWeapon:Add(v.Name)
          end
      end
      end)
      Main:AddButton("Refresh Boss",function()
      SelectWeapon:Clear()
  
      BossName:Clear()
      for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
          if string.find(v.Name, "Boss") then
              if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
              elseif v.Name == "rip_indra [Lv. 1500] [Boss]" then
              else
                  BossName:Add(v.Name)
              end
          end
      end
      for i,v in pairs(game.workspace.Enemies:GetChildren()) do
          if string.find(v.Name, "Boss") then
              if v.Name ~= "Ice Admiral [Lv. 700] [Boss]" or v.Name ~= "rip_indra [Lv. 1500] [Boss]" then
                  BossName:Add(v.Name)
              end
          end
      end
  
      end)
       Main:AddSeperator("Farm Select Monster")   
  MiscFarmWeapon = ""
  if Old_World then
      tableMon = {"Bandit [Lv. 5]","Monkey [Lv. 14]","Gorilla [Lv. 20]","Pirate [Lv. 35]","Brute [Lv. 45]","Desert Bandit [Lv. 60]","Desert Officer [Lv. 70]","Snow Bandit [Lv. 90]","Snowman [Lv. 100]","Chief Petty Officer [Lv. 120]","Sky Bandit [Lv. 150]","Dark Master [Lv. 175]","Toga Warrior [Lv. 250]","Gladiator [Lv. 275]","Military Soldier [Lv. 300]","Military Spy [Lv. 330]","Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]","God's Guard [Lv. 450]","Shanda [Lv. 475]","Royal Squad [Lv. 525]","Royal Soldier [Lv. 550]","Galley Pirate [Lv. 625]","Galley Captain [Lv. 650]"}
  elseif New_World then
      tableMon = {"Raider [Lv. 700]","Mercenary [Lv. 725]","Swan Pirate [Lv. 775]","Factory Staff [Lv. 800]","Marine Lieutenant [Lv. 875]","Marine Captain [Lv. 900]","Zombie [Lv. 950]","Vampire [Lv. 975]","Snow Trooper [Lv. 1000]","Winter Warrior [Lv. 1050]","Lab Subordinate [Lv. 1100]","Horned Warrior [Lv. 1125]","Magma Ninja [Lv. 1175]","Lava Pirate [Lv. 1200]","Ship Deckhand [Lv. 1250]","Ship Engineer [Lv. 1275]","Ship Steward [Lv. 1300]","Ship Officer [Lv. 1325]","Arctic Warrior [Lv. 1350]","Snow Lurker [Lv. 1375]","Sea Soldier [Lv. 1425]","Water Fighter [Lv. 1450]"}
  elseif Three_World then
      tableMon = {"Pirate Millionaire [Lv. 1500]","Dragon Crew Warrior [Lv. 1575]","Dragon Crew Archer [Lv. 1600]","Female Islander [Lv. 1625]","Giant Islander [Lv. 1650]","Marine Commodore [Lv. 1700]","Marine Rear Admiral [Lv. 1725]","Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]","Forest Pirate [Lv. 1825]","Mythological Pirate [Lv. 1850]","Jungle Pirate [Lv. 1900]","Musketeer Pirate [Lv. 1925]","Reborn Skeleton [Lv. 1975]","Living Zombie [Lv. 2000]","Demonic Soul [Lv. 2025]","Posessed Mummy [Lv. 2050]","Peanut Scout [Lv. 2075]","Ice Cream Chef [Lv. 2125]","Ice Cream Commander [Lv. 2150]","Ice Cream Commander [Lv. 2150]","Cookie Crafter [Lv. 2200]","Cake Guard [Lv. 2225]","Baking Staff [Lv. 2250]","Head Baker [Lv. 2275]"}
  end
      local drop = Main:AddDropdown("Select Monster",tableMon,function(vu)
      SelectMonster = vu
      end)
          Main:AddToggle("Auto Farm Select Monster",false,function(vu)
      AutoFarmSelectMonster = vu
      if vu == false then
          wait(1)
          TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
      end
  
      end)
  
  
  
  
  
  
  
       Main:AddSeperator("Farm Mas Gun/DF")   
  
      Main:AddToggle("Farm Gun ",false,function(vu)
      AutoarmMasteryGun = vu
      MasteryMagnet = vu
      if AutoarmMasteryGun and WeaponMastery == "" then
      else
          FarmMasteryGun = vu
          if vu == false then
              wait(1)
              TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          end
      end
      end)
      Main:AddToggle("Farm DF",false,function(vu)
      AutoFarmMasteryFruit = vu
      MasteryMagnet = vu
      if AutoFarmMasteryFruit and WeaponMastery == "" then
      else
          FarmMasteryFruit = vu
          if vu == false then
              wait(1)
              TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
          end
      end
  
      end)
  
  HealthPersen = 25
      Main:AddSlider("Select Health",1,100,HealthPersen,function(Value)
      HealthPersen = Value
      end)
  
      local SelectWeapon = Main:AddDropdown("Select Weapon",Wapon,function(vu)
      WeaponMastery = vu
      end)
      
      Main:AddButton("Refresh Weapon",function()
      SelectWeapon:Clear()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
          if v:IsA("Tool") then
              SelectWeapon:Add(v.Name)
          end
      end
      for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
          if v:IsA("Tool") then
              SelectWeapon:Add(v.Name)
          end
      end
      end)
  
       stus:AddSeperator("Stats Your Mom")   
      stus:AddToggle("Melee", _G.Melee,function(vu)
      Mad = vu
      end)
      stus:AddToggle("Defense", _G.Defense,function(vu)
      Gan = vu
      end)
      stus:AddToggle("Sword", _G.Sword,function(vu)
      Dap = vu
      end)
      stus:AddToggle("Gun", _G.Gun,function(vu)
      Pun = vu
      end)
      stus:AddToggle("Devill Fruit", _G.DevilFruit,function(vu)
      DevilFruit = vu
      end)
  
  if Old_World then
      tp:AddButton("Teleport To Second Sea",function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
      end)
      tp:AddButton("Teleport To Third Sea",function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
      end)
      tp:AddButton("Stop Tween",function()
      Clip = false
      TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
  end)
  
      Main:AddLabel("Old World")
  
      tp:AddButton("First land",function()
          TP2(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
      end)
      tp:AddButton("Shell Town",function()
          TP2(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
      end)
      tp:AddButton("Marine Ford",function()
          TP2(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
      end)
      tp:AddButton("Midle Town",function()
          TP2(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
      end)
      tp:AddButton("Jungle",function()
          TP2(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
      end)
      tp:AddButton("Pirate",function()
          TP2(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
      end)
      tp:AddButton("Desert",function()
          TP2(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
      end)
      tp:AddButton("Ice Land",function()
          TP2(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
      end)
      tp:AddButton("Colosseum",function()
          TP2(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
      end)
      tp:AddButton("Prison",function()
          TP2(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
      end)
      tp:AddButton("Mob Leader",function()
          TP2(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
      end)
      tp:AddButton("Magma Land",function()
          TP2(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
      end)
      tp:AddButton("Water 7",function()
          TP2(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
      end)
      tp:AddButton("Fish Man Village",function()
          TP2(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
      end)
      tp:AddButton("Fountain City",function()
          TP2(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
      end)
      tp:AddButton("Sky 1",function()
          TP2(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
      end)
      tp:AddButton("Sky 2",function()
          TP2(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
      end)
  
  elseif New_World then
      tp:AddButton("Teleport To First Sea",function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
      end)
      tp:AddButton("Teleport To Third Sea",function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
      end)
      Main:AddLabel("New World")
      tp:AddButton("Dock",function()
          TP2(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
      end)
      tp:AddButton("Mansion",function()
          TP2(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
      end)
      tp:AddButton("Kingdom of Rose",function()
          TP2(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
      end)
      tp:AddButton("Cafe",function()
          TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
      end)
      tp:AddButton("Sunflower",function()
          TP2(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
      end)
      tp:AddButton("Jeramy Mountain",function()
          TP2(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
      end)
      tp:AddButton("Colossuem 2",function()
          TP2(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
      end)
      tp:AddButton("Usopp's Island",function()
          TP2(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
      end)
      tp:AddButton("Factory",function()
          TP2(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
      end)
      tp:AddButton("The Bridge",function()
          TP2(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
      end)
      tp:AddButton("Green Bit",function()
          TP2(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
      end)
  
      tp:AddButton("Graveyard",function()
          TP2(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
      end)
  
      tp:AddButton("Dark Area",function()
          TP2(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
      end)
      tp:AddButton("Superhuman Mountain",function()
          TP2(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
      end)
      tp:AddButton("Lava Island",function()
          TP2(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
      end)
      tp:AddButton("Cold IsLand",function()
          TP2(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
      end)
      tp:AddButton("Ice Castle",function()
          TP2(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
      end)
      tp:AddButton("inscription Island",function()
          TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
      end)
      tp:AddButton("Forgotten Island",function()
          TP2(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
      end)
      tp:AddButton("Ghost Ship",function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
      end)
  
  elseif Three_World then
      tp:AddSeperator("Third Sea")
      tp:AddButton("Teleport to First Sea",function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
      end)
  
      tp:AddButton("Teleport to Second Sea",function()
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
      end)
  
      tp:AddButton("Port Town",function()
          TP2(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
      end)
  
      tp:AddButton("Hydra Island",function()
          TP2(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
      end)
  
      tp:AddButton("Gaint Tree",function()
          TP2(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
      end)
  
      tp:AddButton("Zou ISland",function()
          TP2(CFrame.new(-10034.40234375, 331.78845214844, -8319.6923828125))
      end)
  
      tp:AddButton("Mansion",function()
          TP2(CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375))
      end)
  
      tp:AddButton("Castle on the Sea",function()
          TP2(CFrame.new(-5498.0458984375, 313.79473876953, -2860.6022949219))
      end)
  
      tp:AddButton("Graveyard Island",function()
          TP2(CFrame.new(-9515.07324, 142.130615, 5537.58398))
      end)
  
      tp:AddButton("CoCoNut Island",function()
         TP2(CFrame.new(-1846.9521484375, 38.12895965576172, -10451.0908203125))
      end)
  
      tp:AddButton("HoCake Island 1",function()
         TP2(CFrame.new(-927.4937133789062, 58.97153091430664, -10895.5166015625))
      end)
  
      tp:AddButton("HoCake Island 2",function()
         TP2(CFrame.new(-1973.823486328125, 37.82403564453125, -11883.0576171875))
        end)
  end
  
  player:AddSeperator("Players")
  
  
  if not Old_World then
     local raid = sxhub:AddTab("Raid","7251993295")
  if New_World then
  raid:AddButton("Teleport to Lab",function()
          TP2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
      end)
  elseif Three_World then
    raid:AddButton("Teleport to Lab",function()
          TP2(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
      end)
  end
      raid:AddToggle("Auto Auto Raid",false,function(vu)
      _G.AutoRaid = vu
      AutoAwakener = vu
      Killaura = vu
      AutoBuychip = vu
  end)
  
  
      raid:AddToggle("Kill Aura",false,function(vu)
      Killaura = vu
  end)
     
      raid:AddToggle("Auto Awaken Skill",false,function(vu)
      AutoAwakener = vu
  end)
          
      raid:AddToggle("Auto Next Land",false,function(vu)
      NextIsland = vu
  end)
  spawn(function()
      pcall(function()
          while wait() do
              if AutoBuychip then
                  if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                      if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectRaid)
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          if _G.AutoRaid or RaidSuperhuman then
              pcall(function()
                  if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                      if AutoFullySuperhuman then
                          if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                              for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                  if not string.find(v.Name, "Fruit") then
                                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                                  end
                              end
                          end
                      end
                      if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectRaid)
                      end
                      if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                          game:GetService("StarterGui"):SetCore("SendNotification",
                              {
                                  Title = "Auto Raid",
                                  Text = "Have Some People in Raid",
                                  Icon = "",
                                  Duration = 99999
                              }
                          )
                          wait(4)
                      end
                      if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
                          if New_World then
                              fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                          elseif Three_World then
                              fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                          end
                      end
                  end
              end)
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoAwakener then
                  local args = {
                      [1] = "Awakener",
                      [2] = "Check"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  local args = {
                      [1] = "Awakener",
                      [2] = "Awaken"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              end
          end
      end)
  end)
  
  spawn(function()
      while wait() do
          if Killaura or _G.AutoRaid or RaidSuperhuman then
              for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                  if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                      pcall(function()
                          repeat wait(.1)
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                              v.Humanoid.Health = 0
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                              v.HumanoidRootPart.Transparency = 0.8
                          until not Killaura or not _G.AutoRaid or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <= 0
                      end)
                  end
              end
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          while game:GetService("RunService").Heartbeat:wait() do
              if NextIsland or RaidSuperhuman or _G.AutoRaid then
                  if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                      if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                          TP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(0,80,0))
                      elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                          TP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(0,80,0))
                      elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                          TP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(0,80,0))
                      elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                          TP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(0,80,0))
                      elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                          TP(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(0,80,0))
                      end
                  elseif New_World then
                      TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                  elseif Three_World then
                      TP(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                  end
              end
          end
      end)
  end)
  end
  
  if New_World then
  raid:AddToggle("Auto Law Raid",false,function(vu)
      AutoLowRaid = vu
  end)
        
      local SelectWeaponLaw = raid:AddDropdown("Select Weapon",Wapon,function(vu)
      SelectToolWeaponLaw = vu
  end)
      
      raid:AddButton("Refresh Weapon",function()
      SelectWeaponLaw:Clear()
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
          if v:IsA("Tool") then
              SelectWeaponLaw:Add(v.Name)
          end
      end
      for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
          if v:IsA("Tool") then
              SelectWeaponLaw:Add(v.Name)
          end
      end
  end)
  end
  
      local esp = sxhub:AddTab("Esp","7251993295")
  esp:AddToggle("ESP Player",false,function(Value)
      PlayerESP = Value
      while PlayerESP do wait()
          UpdatePlayer()
      end
  end)
  
  esp:AddToggle("ESP Chest",false,function(Value)
      ChestESP = Value
      while ChestESP do wait()
          UpdateChest()
      end
  end)
  esp:AddToggle("Esp DF",false,function(Value)
      DevilESP = Value
      while DevilESP do wait()
          UpdateDevilFruit()
      end
  end)
  if New_World then
  esp:AddToggle("Esp Flower",false,function(Value)
          FlowerESP = Value
          while FlowerESP do wait()
              UpdateFlower()
          end
      end)
  end
  Number = math.random(1,1000000)
  
  function UpdateChest()
      for i,v in pairs(game.Workspace:GetChildren()) do
          pcall(function()
              if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                  if ChestESP then
                      if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
                          if not v:FindFirstChild("ChestESP"..Number) then
                              local Bb = Instance.new("BillboardGui", v)
                              Bb.Name = "ChestESP"..Number
                              Bb.ExtentsOffset = Vector3.new(0, 1, 0)
                              Bb.Size = UDim2.new(1, 200, 1, 30)
                              Bb.Adornee = v
                              Bb.AlwaysOnTop = true
                              local Textlb = Instance.new("TextLabel", Bb)
                              Textlb.Font = "GothamBold"
                              Textlb.FontSize = "Size14"
                              Textlb.Size = UDim2.new(1,0,1,0)
                              Textlb.BackgroundTransparency = 1
                              Textlb.TextStrokeTransparency = 0.5
                              if v.Name == "Chest1" then
                                  Textlb.TextColor3 = Color3.fromRGB(174, 123, 47)
                                  Textlb.Text = "Bronze Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                              end
                              if v.Name == "Chest2" then
                                  Textlb.TextColor3 = Color3.fromRGB(255, 255, 127)
                                  Textlb.Text = "Gold Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                              end
                              if v.Name == "Chest3" then
                                  Textlb.Text = "Diamond Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                                  Textlb.TextColor3 = Color3.fromRGB(5, 243, 255)
                              end
                          else
                              v["ChestESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                          end
                      end
                  else
                      if v:FindFirstChild("ChestESP"..Number) then
                          v:FindFirstChild("ChestESP"..Number):Destroy()
                      end
                  end
              end
          end)
      end
  end
  
  function UpdatePlayer()
      for i,v in pairs(game:GetService("Players"):GetChildren()) do
          pcall(function()
              if v.Character then
                  if PlayerESP then
                      if v.Character.Head and not v.Character.Head:FindFirstChild("PlayerESP"..Number) then
                          local Bb = Instance.new("BillboardGui", v.Character.Head)
                          Bb.Name = "PlayerESP"..Number
                          Bb.ExtentsOffset = Vector3.new(0, 1, 0)
                          Bb.Size = UDim2.new(1, 200, 1, 30)
                          Bb.Adornee = v.Character.Head
                          Bb.AlwaysOnTop = true
                          local Textlb = Instance.new("TextLabel", Bb)
                          Textlb.Font = "GothamBold"
                          Textlb.FontSize = "Size14"
                          Textlb.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                          Textlb.Size = UDim2.new(1,0,1,0)
                          Textlb.BackgroundTransparency = 1
                          Textlb.TextStrokeTransparency = 0.5
                          if v.Team == game:GetService("Players").LocalPlayer.Team then
                              Textlb.TextColor3 = Color3.new(0, 255, 0)
                          else
                              Textlb.TextColor3 = Color3.new(0, 0, 204)
                          end
                      else
                          v.Character.Head["PlayerESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                      end
                  else
                      if v.Character.Head:FindFirstChild("PlayerESP"..Number) then
                          v.Character.Head:FindFirstChild("PlayerESP"..Number):Destroy()
                      end
                  end
              end
          end)
      end
  end
  
  function UpdateDevilFruit()
      for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
          pcall(function()
              if string.find(v.Name, "Fruit") then
                  if DevilESP then
                      if string.find(v.Name, "Fruit") then
                          if not v.Handle:FindFirstChild("DevilESP"..Number) then
                              local Bb = Instance.new("BillboardGui", v.Handle)
                              Bb.Name = "DevilESP"..Number
                              Bb.ExtentsOffset = Vector3.new(0, 1, 0)
                              Bb.Size = UDim2.new(1, 200, 1, 30)
                              Bb.Adornee = v.Handle
                              Bb.AlwaysOnTop = true
                              local Textlb = Instance.new("TextLabel", Bb)
                              Textlb.Font = "GothamBold"
                              Textlb.FontSize = "Size14"
                              Textlb.Size = UDim2.new(1,0,1,0)
                              Textlb.BackgroundTransparency = 1
                              Textlb.TextStrokeTransparency = 0.5
                              Textlb.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                              Textlb.TextColor3 = Color3.new(255, 255, 255)
                          else
                              v.Handle["DevilESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
                          end
                      end
                  else
                      if v.Handle:FindFirstChild("DevilESP"..Number) then
                          v.Handle:FindFirstChild("DevilESP"..Number):Destroy()
                      end
                  end
              end
          end)
      end
  end
  
  function UpdateFlower()
      for i,v in pairs(game.Workspace:GetChildren()) do
          pcall(function()
              if v.Name == "Flower2" or v.Name == "Flower1" then
                  if FlowerESP then
                      if not v:FindFirstChild("FindFlower"..Number) then
                          local bill = Instance.new("BillboardGui",v)
                          bill.Name = "FindFlower"..Number
                          bill.ExtentsOffset = Vector3.new(0, 1, 0)
                          bill.Size = UDim2.new(1,200,1,30)
                          bill.Adornee = v
                          bill.AlwaysOnTop = true
                          local name = Instance.new("TextLabel",bill)
                          name.Font = "GothamBold"
                          name.FontSize = "Size14"
                          name.TextWrapped = true
                          name.Size = UDim2.new(1,0,1,0)
                          name.TextYAlignment = "Top"
                          name.BackgroundTransparency = 1
                          name.TextStrokeTransparency = 0.5
                          name.TextColor3 = Color3.fromRGB(248, 41, 41)
                          if v.Name == "Flower1" then
                              name.Text = ("Blue Flower".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
                              name.TextColor3 = Color3.fromRGB(28, 126, 255)
                          end
                          if v.Name == "Flower2" then
                              name.Text = ("Red Flower".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
                              name.TextColor3 = Color3.fromRGB(248, 41, 41)
                          end
                      else
                          v["FindFlower"..Number].TextLabel.Text = (v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
                      end
                  else
                      if v:FindFirstChild("FindFlower"..Number) then
                          v:FindFirstChild("FindFlower"..Number):Destroy()
                      end
                  end
              end
          end)
      end
  end
  
  function UpdateFruits()
      for i,v in pairs(game.Workspace:GetChildren()) do
          pcall(function()
              if v.Name == "Banana" or v.Name == "Apple" or v.Name == "Pineapple" then
                  if FindFruits then
                      if not v:FindFirstChild("FindFruit"..Number) then
                          local bill = Instance.new("BillboardGui",v)
                          bill.Name = "FindFruit"..Number
                          bill.ExtentsOffset = Vector3.new(0, 1, 0)
                          bill.Size = UDim2.new(1,200,1,30)
                          bill.Adornee = v
                          bill.AlwaysOnTop = true
                          local name = Instance.new("TextLabel",bill)
                          name.Font = "GothamBold"
                          name.FontSize = "Size14"
                          name.TextWrapped = true
                          name.Size = UDim2.new(1,0,1,0)
                          name.TextYAlignment = "Top"
                          name.BackgroundTransparency = 1
                          name.TextStrokeTransparency = 0.5
                          if v.Name == "Banana" then
                              name.Text = ("Banana".."\n"..math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
                              name.TextColor3 = Color3.fromRGB(255, 255, 0)
                          end
                          if v.Name == "Apple" then
                              name.Text = ("Apple".."\n"..math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
                              name.TextColor3 = Color3.fromRGB(208, 0, 0)
                          end
                          if v.Name == "PineApple" then
                              name.Text = ("PineApple".."\n"..math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
                              name.TextColor3 = Color3.fromRGB(255, 128, 0)
                          end
                      else
                          v["FindFruit"..Number].TextLabel.Text = (v.Name.."\n"..math.round((v.Handel.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
                      end
                  else
                      if v:FindFirstChild("FindFruit"..Number) then
                          v:FindFirstChild("FindFruit"..Number):Destroy()
                      end
                  end
              end
          end)
      end
  end
  
   
      local df = sxhub:AddTab("Deviil Fruit","7044284832")
  df:AddLabel("Devill Fruit")
      df:AddToggle("Auto Random fruit",false,function(v)
      DevilAutoBuy = v
  end)
      spawn(function()
      pcall(function()
          while wait(.1) do
              if BringFruit then
                  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                      if string.find(v.Name, "Fruit") then
                          if v:IsA("Tool") then
                              v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                              wait(.2)
                              firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                          end
                      end
                  end
              end
          end
      end)
  end)
      df:AddToggle("Bring fruit", _G.BringFruit,function(value)
      BringFruit = value
  end)
       
      df:AddButton("Random fruit",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
  end)
  spawn(function()
      while wait(.1) do
          if DevilAutoBuy then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
          end
      end
  end)
      local buy = sxhub:AddTab("Buy Item","7294901968")
  buy:AddLabel("Abilities")
      buy:AddButton("Skyjump",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
  end)
      buy:AddButton("Buso Haki",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
  end)
      buy:AddButton("Soru",function()
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
  end)
      buy:AddButton("Ken",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
  end)
  buy:AddLabel("F")
      buy:AddButton("Refund Stat [2500 F]",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
  end)
      buy:AddButton("Reroll Race [3000 F]",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
  end)
  buy:AddLabel("Fighting Style")
      buy:AddButton("Black Leg",function()
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
  end)
  
      buy:AddButton("Electro",function()
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
  end)
      buy:AddButton("Fishman Karate",function()
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
  end)
      buy:AddButton("Dragon Claw",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
  end)
      buy:AddButton("Superhuman",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
  end)
      buy:AddButton("Death Step",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
  end)
      buy:AddButton("Sharkman Karate",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
  end)
      buy:AddButton("Electric Claw",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
  end)
      buy:AddButton("Dragon Talon",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
  end)
  
  buy:AddLabel("Sword")
      buy:AddButton("Katana",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
  end)
      buy:AddButton("Cutlass",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
  end)
      buy:AddButton("Duel Katana",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
  end)
  
      buy:AddButton("Iron Mace",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
  end)
      buy:AddButton("Pipe",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
  end)
      buy:AddButton("Triple Katana",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
  end)
      buy:AddButton("Dual-Headed Blade",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
  end)
      buy:AddButton("Bisento",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
  end)
      buy:AddButton("Soul Cane",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
  end)
  
  buy:AddLabel("Gun")
      buy:AddButton("Slingshot",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
  end)
      buy:AddButton("Musket",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
  end)
      buy:AddButton("Flintlock",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
  end)
      buy:AddButton("Refined Flintlock",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
  end)
      buy:AddButton("Cannon",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
  end)
      buy:AddButton("Kabucha",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
  end)
  
  buy:AddLabel("Accessory")
      buy:AddButton("Black Cape",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
  end)
      buy:AddButton("Toemo Ring",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
  end)
      buy:AddButton("Swordsman hat",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
  end)
  
  
     local set = sxhub:AddTab("Setting","7040347038")
  set:AddLabel("Setting")
      set:AddButton("Credit By vaipraescolamlk",function()
  end)
      set:AddButton("Copy link SAMU HUB Discord ",function()
      setclipboard("https://discord.gg/VA5S8XVaRA")
  end)
      set:AddButton("Hop Lower Server",function()
      HopLowerServer()
  end)
      set:AddButton("Join Marine",function()
     local args = {
          [1] = "SetTeam",
          [2] = "Marines"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      local args = {
          [1] = "BartiloQuestProgress"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end)
      set:AddButton("join Pirate",function()
      local args = {
          [1] = "SetTeam",
          [2] = "Pirates"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
      local args = {
          [1] = "BartiloQuestProgress"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end)
      set:AddButton("Check Devill Fruit Store",function()
      local args = {
          [1] = "GetFruits"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
  end)
      set:AddButton("Fruit Inventory",function()
      local args = {
          [1] = "getInventoryFruits"
      }
      
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
      game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
  end)
      set:AddButton("Inventory",function()
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
      game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
  end)
      set:AddButton("Color Haki",function()
      game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
  end)
      set:AddButton("Title Name",function()
      local args = {
          [1] = "getTitles"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
  end)
  
  
     local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
      local VirtualUser = game:GetService('VirtualUser')
      local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
      spawn(function()
          game:GetService('RunService').Heartbeat:connect(function()
              if _G.FastAtttk then
                  pcall(function()
                      RigC.activeController.timeToNextAttack = 0
                      RigC.activeController.attacking = false
                      RigC.activeController.blocking = false
                      RigC.activeController.timeToNextAttack = 0
                      RigC.activeController.timeToNextBlock = 0
                      RigC.activeController.increment = 3
                      RigC.activeController.hitboxMagnitude = 100
                      game.Players.LocalPlayer.Character.Stun.Value = 0
                      game.Players.LocalPlayer.Character.Humanoid.Sit = false
  
                      VirtualUser:CaptureController()
                      VirtualUser:Button1Down(Vector2.new(1280, 672))
                      kkii:Stop()
                  end)
              end
          end)
      end)
  spawn(function()
          for i = 1,math,9999999999999999999999999999999999999999999999999999 do game:GetService('RunService').Heartbeat:wait()
              if _G.FastAtttk then
              VirtualUser:CaptureController()
              VirtualUser:Button1Down(Vector2.new(1280, 672))
          end
      end
  end)
  
  if _G.FastAtttk == false then
      _G.FastAtttk = false
  else
      _G.FastAtttk = true
  end
  
      set:AddToggle("Fast Attack", _G.FastAtttk,function(vu)
      _G.FastAtttk = vu
  end)
  
  set:AddLabel("Auto Skill")
      set:AddToggle("[Z]",true,function(vu)
      SkillZ = vu
      end)
      set:AddToggle("[X]",true,function(vu)
      SkillX = vu
      end)
      set:AddToggle("[C]",true,function(vu)
      SkillC = vu
      end)
      set:AddToggle("[V]",true,function(vu)
       SkillV = vu
      end)
      set:AddToggle("Auto Click", false,function(vu)
      AutoClick = value 
  end)
      set:AddToggle("Walk On Water", false,function(vu)
      AutoClick = value 
  end)
  
  spawn(function()
      pcall(function()
          while game:GetService("RunService").Heartbeat:wait() do
              if _G.Water then
                  if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                      if not game:GetService("Workspace"):FindFirstChild("Water") then
                          local Water = Instance.new("Part", game.Workspace)
                          Water.Name = "Water"
                          Water.Size = Vector3.new(10,0.5,10)
                          Water.Transparency = 0.8
                          Water.Anchored = true
                          game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                      else
                          game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                      end
                  elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
                      game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                  end
              else
                  if game:GetService("Workspace"):FindFirstChild("Water") then
                      game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                  end
              end
          end
      end)
  end)
  
  game:GetService("RunService").Heartbeat:Connect(function()
      if AutoClick then
          game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
          game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
      end
  end)
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  function CheckLevel()
      local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
      if Old_World then
          if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit [Lv. 5]" then -- Bandit
              Ms = "Bandit [Lv. 5]"
              NameQuest = "BanditQuest1"
              QuestLv = 1
              NameMon = "Bandit"
              CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
              CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
          elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" then -- Monkey
              Ms = "Monkey [Lv. 14]"
              NameQuest = "JungleQuest"
              QuestLv = 1
              NameMon = "Monkey"
              CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
              CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
          elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
              Ms = "Gorilla [Lv. 20]"
              NameQuest = "JungleQuest"
              QuestLv = 2
              NameMon = "Gorilla"
              CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
              CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
          elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate [Lv. 35]" then -- Pirate
              Ms = "Pirate [Lv. 35]"
              NameQuest = "BuggyQuest1"
              QuestLv = 1
              NameMon = "Pirate"
              CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
              CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
          elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute [Lv. 45]" then -- Brute
              Ms = "Brute [Lv. 45]"
              NameQuest = "BuggyQuest1"
              QuestLv = 2
              NameMon = "Brute"
              CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
              CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
          elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit [Lv. 60]" then -- Desert Bandit
              Ms = "Desert Bandit [Lv. 60]"
              NameQuest = "DesertQuest"
              QuestLv = 1
              NameMon = "Desert Bandit"
              CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
              CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
          elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer [Lv. 70]" then -- Desert Officer
              Ms = "Desert Officer [Lv. 70]"
              NameQuest = "DesertQuest"
              QuestLv = 2
              NameMon = "Desert Officer"
              CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
              CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
          elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit [Lv. 90]" then -- Snow Bandit
              Ms = "Snow Bandit [Lv. 90]"
              NameQuest = "SnowQuest"
              QuestLv = 1
              NameMon = "Snow Bandit"
              CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
              CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
          elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman [Lv. 100]" then -- Snowman
              Ms = "Snowman [Lv. 100]"
              NameQuest = "SnowQuest"
              QuestLv = 2
              NameMon = "Snowman"
              CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
              CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
          elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
              Ms = "Chief Petty Officer [Lv. 120]"
              NameQuest = "MarineQuest2"
              QuestLv = 1
              NameMon = "Chief Petty Officer"
              CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
              CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
          elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit [Lv. 150]" then -- Sky Bandit
              Ms = "Sky Bandit [Lv. 150]"
              NameQuest = "SkyQuest"
              QuestLv = 1
              NameMon = "Sky Bandit"
              CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
              CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
          elseif Lv == 175 or Lv <= 249 or SelectMonster == "Dark Master [Lv. 175]" then -- Dark Master
              Ms = "Dark Master [Lv. 175]"
              NameQuest = "SkyQuest"
              QuestLv = 2
              NameMon = "Dark Master"
              CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
              CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
          elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior [Lv. 250]" then -- Toga Warrior
              Ms = "Toga Warrior [Lv. 250]"
              NameQuest = "ColosseumQuest"
              QuestLv = 1
              NameMon = "Toga Warrior"
              CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
              CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
          elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator [Lv. 275]" then -- Gladiator
              Ms = "Gladiator [Lv. 275]"
              NameQuest = "ColosseumQuest"
              QuestLv = 2
              NameMon = "Gladiator"
              CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
              CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
          elseif Lv == 300 or Lv <= 329 or SelectMonster == "Military Soldier [Lv. 300]" then -- Military Soldier
              Ms = "Military Soldier [Lv. 300]"
              NameQuest = "MagmaQuest"
              QuestLv = 1
              NameMon = "Military Soldier"
              CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
              CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
          elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 325]" then -- Military Spy
              Ms = "Military Spy [Lv. 325]"
              NameQuest = "MagmaQuest"
              QuestLv = 2
              NameMon = "Military Spy"
              CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
              CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
          elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior 
              Ms = "Fishman Warrior [Lv. 375]"
              NameQuest = "FishmanQuest"
              QuestLv = 1
              NameMon = "Fishman Warrior"
              CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
              CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
              end
          elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando [Lv. 400]" then -- Fishman Commando
              Ms = "Fishman Commando [Lv. 400]"
              NameQuest = "FishmanQuest"
              QuestLv = 2
              NameMon = "Fishman Commando"
              CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
              CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
              end
          elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard [Lv. 450]" then -- God's Guard
              Ms = "God's Guard [Lv. 450]"
              NameQuest = "SkyExp1Quest"
              QuestLv = 1
              NameMon = "God's Guard"
              CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
              CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
              end
          elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda [Lv. 475]" then -- Shanda
              Ms = "Shanda [Lv. 475]"
              NameQuest = "SkyExp1Quest"
              QuestLv = 2
              NameMon = "Shanda"
              CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
              CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
              end
          elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad [Lv. 525]" then -- Royal Squad
              Ms = "Royal Squad [Lv. 525]"
              NameQuest = "SkyExp2Quest"
              QuestLv = 1
              NameMon = "Royal Squad"
              CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
              CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
          elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier [Lv. 550]" then -- Royal Soldier
              Ms = "Royal Soldier [Lv. 550]"
              NameQuest = "SkyExp2Quest"
              QuestLv = 2
              NameMon = "Royal Soldier"
              CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
              CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
          elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate [Lv. 625]" then -- Galley Pirate
              Ms = "Galley Pirate [Lv. 625]"
              NameQuest = "FountainQuest"
              QuestLv = 1
              NameMon = "Galley Pirate"
              CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
              CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
          elseif Lv >= 650 or SelectMonster == "Galley Captain [Lv. 650]" then -- Galley Captain
              Ms = "Galley Captain [Lv. 650]"
              NameQuest = "FountainQuest"
              QuestLv = 2
              NameMon = "Galley Captain"
              CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
              CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
          end
      end
      if New_World then
          if Lv == 700 or Lv <= 724 or SelectMonster == "Raider [Lv. 700]" then -- Raider
              Ms = "Raider [Lv. 700]"
              NameQuest = "Area1Quest"
              QuestLv = 1
              NameMon = "Raider"
              CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
              CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
          elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary [Lv. 725]" then -- Mercenary
              Ms = "Mercenary [Lv. 725]"
              NameQuest = "Area1Quest"
              QuestLv = 2
              NameMon = "Mercenary"
              CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
              CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
          elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate [Lv. 775]" then -- Swan Pirate
              Ms = "Swan Pirate [Lv. 775]"
              NameQuest = "Area2Quest"
              QuestLv = 1
              NameMon = "Swan Pirate"
              CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
              CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
          elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff [Lv. 800]" then -- Factory Staff
              Ms = "Factory Staff [Lv. 800]"
              NameQuest = "Area2Quest"
              QuestLv = 2
              NameMon = "Factory Staff"
              CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
              CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
          elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant
              Ms = "Marine Lieutenant [Lv. 875]"
              NameQuest = "MarineQuest3"
              QuestLv = 1
              NameMon = "Marine Lieutenant"
              CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
              CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
          elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain [Lv. 900]" then -- Marine Captain
              Ms = "Marine Captain [Lv. 900]"
              NameQuest = "MarineQuest3"
              QuestLv = 2
              NameMon = "Marine Captain"
              CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
              CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
          elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie [Lv. 950]" then -- Zombie
              Ms = "Zombie [Lv. 950]"
              NameQuest = "ZombieQuest"
              QuestLv = 1
              NameMon = "Zombie"
              CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
              CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
          elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire [Lv. 975]" then -- Vampire
              Ms = "Vampire [Lv. 975]"
              NameQuest = "ZombieQuest"
              QuestLv = 2
              NameMon = "Vampire"
              CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
              CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
          elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper [Lv. 1000]" then -- Snow Trooper
              Ms = "Snow Trooper [Lv. 1000]"
              NameQuest = "SnowMountainQuest"
              QuestLv = 1
              NameMon = "Snow Trooper"
              CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
              CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
          elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior [Lv. 1050]" then -- Winter Warrior
              Ms = "Winter Warrior [Lv. 1050]"
              NameQuest = "SnowMountainQuest"
              QuestLv = 2
              NameMon = "Winter Warrior"
              CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
              CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
          elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate
              Ms = "Lab Subordinate [Lv. 1100]"
              NameQuest = "IceSideQuest"
              QuestLv = 1
              NameMon = "Lab Subordinate"
              CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
              CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
          elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior [Lv. 1125]" then -- Horned Warrior
              Ms = "Horned Warrior [Lv. 1125]"
              NameQuest = "IceSideQuest"
              QuestLv = 2
              NameMon = "Horned Warrior"
              CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
              CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
          elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja [Lv. 1175]" then -- Magma Ninja
              Ms = "Magma Ninja [Lv. 1175]"
              NameQuest = "FireSideQuest"
              QuestLv = 1
              NameMon = "Magma Ninja"
              CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
              CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
          elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate [Lv. 1200]" then -- Lava Pirate
              Ms = "Lava Pirate [Lv. 1200]"
              NameQuest = "FireSideQuest"
              QuestLv = 2
              NameMon = "Lava Pirate"
              CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
              CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
          elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand
              Ms = "Ship Deckhand [Lv. 1250]"
              NameQuest = "ShipQuest1"
              QuestLv = 1
              NameMon = "Ship Deckhand"
              CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
              CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
              end
          elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then -- Ship Engineer
              Ms = "Ship Engineer [Lv. 1275]"
              NameQuest = "ShipQuest1"
              QuestLv = 2
              NameMon = "Ship Engineer"
              CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
              CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
              end
          elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then -- Ship Steward
              Ms = "Ship Steward [Lv. 1300]"
              NameQuest = "ShipQuest2"
              QuestLv = 1
              NameMon = "Ship Steward"
              CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
              CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
              end
          elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then -- Ship Officer
              Ms = "Ship Officer [Lv. 1325]"
              NameQuest = "ShipQuest2"
              QuestLv = 2
              NameMon = "Ship Officer"
              CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
              CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
              end
          elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior
              Ms = "Arctic Warrior [Lv. 1350]"
              NameQuest = "FrostQuest"
              QuestLv = 1
              NameMon = "Arctic Warrior"
              CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
              CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
              if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
              end
          elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker [Lv. 1375]" then -- Snow Lurker
              Ms = "Snow Lurker [Lv. 1375]"
              NameQuest = "FrostQuest"
              QuestLv = 2
              NameMon = "Snow Lurker"
              CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
              CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
          elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier [Lv. 1425]" then -- Sea Soldier
              Ms = "Sea Soldier [Lv. 1425]"
              NameQuest = "ForgottenQuest"
              QuestLv = 1
              NameMon = "Sea Soldier"
              CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
              CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
          elseif Lv >= 1450 or SelectMonster == "Water Fighter [Lv. 1450]" then -- Water Fighter
              Ms = "Water Fighter [Lv. 1450]"
              NameQuest = "ForgottenQuest"
              QuestLv = 2
              NameMon = "Water Fighter"
              CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
              CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
          end
      end
      if Three_World then
          if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire [Lv. 1500]" then -- Pirate Millionaire
              Ms = "Pirate Millionaire [Lv. 1500]"
              NameQuest = "PiratePortQuest"
              QuestLv = 1
              NameMon = "Pirate Millionaire"
              CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
              CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
          elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire [Lv. 1525]" then -- Pistol Billoonaire
              Ms = "Pistol Billionaire [Lv. 1525]"
              NameQuest = "PiratePortQuest"
              QuestLv = 2
              NameMon = "Pistol Billionaire"
              CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
              CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
          elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior [Lv. 1575]" then -- Dragon Crew Warrior
              Ms = "Dragon Crew Warrior [Lv. 1575]"
              NameQuest = "AmazonQuest"
              QuestLv = 1
              NameMon = "Dragon Crew Warrior"
              CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
              CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
          elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer [Lv. 1600]" then -- Dragon Crew Archer
              Ms = "Dragon Crew Archer [Lv. 1600]"
              NameQuest = "AmazonQuest"
              QuestLv = 2
              NameMon = "Dragon Crew Archer"
              CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
              CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
          elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander [Lv. 1625]" then -- Female Islander
              Ms = "Female Islander [Lv. 1625]"
              NameQuest = "AmazonQuest2"
              QuestLv = 1
              NameMon = "Female Islander"
              CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
              CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
          elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander [Lv. 1650]" then -- Giant Islander
              Ms = "Giant Islander [Lv. 1650]"
              NameQuest = "AmazonQuest2"
              QuestLv = 2
              NameMon = "Giant Islander"
              CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
              CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
          elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore [Lv. 1700]" then -- Marine Commodore
              Ms = "Marine Commodore [Lv. 1700]"
              NameQuest = "MarineTreeIsland"
              QuestLv = 1
              NameMon = "Marine Commodore"
              CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
              CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
          elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral [Lv. 1725]" then -- Marine Rear Admiral
              Ms = "Marine Rear Admiral [Lv. 1725]"
              NameQuest = "MarineTreeIsland"
              QuestLv = 2
              NameMon = "Marine Rear Admiral"
              CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
              CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
          elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider [Lv. 1775]" then -- Fishman Raide
              Ms = "Fishman Raider [Lv. 1775]"
              NameQuest = "DeepForestIsland3"
              QuestLv = 1
              NameMon = "Fishman Raider"
              CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
              CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
          elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain [Lv. 1800]" then -- Fishman Captain
              Ms = "Fishman Captain [Lv. 1800]"
              NameQuest = "DeepForestIsland3"
              QuestLv = 2
              NameMon = "Fishman Captain"
              CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
              CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
          elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate [Lv. 1825]" then -- Forest Pirate
              Ms = "Forest Pirate [Lv. 1825]"
              NameQuest = "DeepForestIsland"
              QuestLv = 1
              NameMon = "Forest Pirate"
              CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
              CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
          elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate [Lv. 1850]" then -- Mythological Pirate
              Ms = "Mythological Pirate [Lv. 1850]"
              NameQuest = "DeepForestIsland"
              QuestLv = 2
              NameMon = "Mythological Pirate"
              CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
              CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
          elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate [Lv. 1900]" then -- Jungle Pirate
              Ms = "Jungle Pirate [Lv. 1900]"
              NameQuest = "DeepForestIsland2"
              QuestLv = 1
              NameMon = "Jungle Pirate"
              CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
              CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
          elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate [Lv. 1925]" then -- Musketeer Pirate
              Ms = "Musketeer Pirate [Lv. 1925]"
              NameQuest = "DeepForestIsland2"
              QuestLv = 2
              NameMon = "Musketeer Pirate"
              CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
              CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
          elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton [Lv. 1975]" then
              Ms = "Reborn Skeleton [Lv. 1975]"
              NameQuest = "HauntedQuest1"
              QuestLv = 1
              NameMon = "Reborn Skeleton"
              CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
              CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
          elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie [Lv. 2000]" then
              Ms = "Living Zombie [Lv. 2000]"
              NameQuest = "HauntedQuest1"
              QuestLv = 2
              NameMon = "Living Zombie"
              CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
              CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
          elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul [Lv. 2025]" then
              Ms = "Demonic Soul [Lv. 2025]"
              NameQuest = "HauntedQuest2"
              QuestLv = 1
              NameMon = "Demonic Soul"
              CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
              CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688, -0.845798075, -3.4587876e-07, -0.533503294, -4.46235369e-08, 1, -5.77571257e-07, 0.533503294, -4.64701827e-07, -0.845798075)
          elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy [Lv. 2050]" then
              Ms = "Posessed Mummy [Lv. 2050]"
              NameQuest = "HauntedQuest2"
              QuestLv = 2
              NameMon = "Posessed Mummy"
              CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
              CFrameMon = CFrame.new(-9554.11035, 65.6141663, 6041.73584, -0.877069294, 5.33355795e-08, -0.480364174, 2.06420765e-08, 1, 7.33423562e-08, 0.480364174, 5.44105987e-08, -0.877069294)
          elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout [Lv. 2075]" then
              Ms = "Peanut Scout [Lv. 2075]"
              NameQuest ="NutsIslandQuest"
              QuestLv = 1
              NameMon = "Peanut Scout"
              POSQ = CFrame.new(-2102.74268, 38.1297836, -10192.501, 0.75739336, -4.93203451e-08, 0.65295893, 2.07778754e-08, 1, 5.14325187e-08, -0.65295893, -2.53875481e-08, 0.75739336)
              CFrameMon = CFrame.new(-1983.2562255859375, 38.12957000732422, -10588.0263671875)
          elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President [Lv. 2100]" then
              Ms = "Peanut President [Lv. 2100]"
              NameQuest ="NutsIslandQuest"
              QuestLv = 2
              NameMon = "Peanut President"
              POSQ = CFrame.new(-2102.74268, 38.1297836, -10192.501, 0.75739336, -4.93203451e-08, 0.65295893, 2.07778754e-08, 1, 5.14325187e-08, -0.65295893, -2.53875481e-08, 0.75739336)
              CFrameMon = CFrame.new(-1983.2562255859375, 38.12957000732422, -10588.0263671875)
          elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef [Lv. 2125]" then
              Ms = "Ice Cream Chef [Lv. 2125]"
              NameQuest ="IceCreamIslandQuest"
              QuestLv = 1
              NameMon = "Ice Cream Chef"
              POSQ = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
              CFrameMon = CFrame.new(-855.2096557617188, 65.8453598022461, -10910.7177734375)
          elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander [Lv. 2150]" then
              Ms = "Ice Cream Commander [Lv. 2150]"
              NameQuest ="IceCreamIslandQuest"
              QuestLv = 2
              NameMon = "Ice Cream Commander"
              POSQ = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
              CFrameMon = CFrame.new(-855.2096557617188, 65.8453598022461, -10910.7177734375)
              elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter [Lv. 2200]" then
              Ms = "Cookie Crafter [Lv. 2200]"
              NameQuest = "CakeQuest1"
              QuestLv = 1
              NameMon = "Cookie Crafter"
              CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
              CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
          elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard [Lv. 2225]" then
              Ms = "Cake Guard [Lv. 2225]"
              NameQuest = "CakeQuest1"
              QuestLv = 2
              NameMon = "Cake Guard"
              CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
              CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
          elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff [Lv. 2250]" then
              Ms = "Baking Staff [Lv. 2250]"
              NameQuest = "CakeQuest2"
              QuestLv = 1
              NameMon = "Baking Staff"
              CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
              CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
          elseif Lv >= 2275 or SelectMonster == "Head Baker [Lv. 2275]" then
              Ms = "Head Baker [Lv. 2275]"
              NameQuest = "CakeQuest2"
              QuestLv = 2
              NameMon = "Head Baker"
              CFrameQ = CFrame.new(-2307.778076171875, 105.85140228271484, -12931.0146484375)
              CFrameMon = CFrame.new(-2307.778076171875, 105.85140228271484, -12931.0146484375)
          end
      end
  end
   
          
  
  function EquipWeapon(ToolSe)
      if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
          local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
          wait(.4)
          game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
      end
  end
  
  Type = 1
  spawn(function()
      while wait(.1) do
          if Type == 1 then
              Farm_Mode = CFrame.new(20, Y, 0)
          elseif Type == 2 then
              Farm_Mode = CFrame.new(20, Y, 0)
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          Type = 1
          wait(5)
          Type = 2
          wait(5)
      end
  end)
  
  pcall(function()
      for i,v in pairs(game:GetService("Workspace").Map.Dressrosa.Tavern:GetDescendants()) do
          if v.ClassName == "Seat" then
              v:Destroy()
          end
      end
  end)
  
  spawn(function()
      while wait() do
          if Auto_Farm then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  MagnetActive = false
                  CheckLevel()
                  TP(CFrameQ)
                  if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                      wait(1.1)
                      CheckLevel()
                      if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                      else
                          TP(CFrameQ)
                      end
                  end
              elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                  pcall(function()
                      CheckLevel()
                      if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == Ms and v:FindFirstChild("Humanoid") then
                                  if v.Humanoid.Health > 0 then
                                      repeat game:GetService("RunService").Heartbeat:wait()
                                          if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                              if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                  EquipWeapon(SelectToolWeapon)
                                                  TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                  v.HumanoidRootPart.CanCollide = false
                                                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                  game:GetService("VirtualUser"):CaptureController()
                                                  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                  PosMon = v.HumanoidRootPart.CFrame
                                                  MagnetActive = true
                                              else
                                                  MagnetActive = false    
                                                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                              end
                                          else
                                              MagnetActive = false
                                              CheckLevel()
                                              TP(CFrameMon)
                                          end
                                      until not v.Parent or v.Humanoid.Health <= 0 or Auto_Farm == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                  end
                              end
                          end
                      else
                          MagnetActive = false
                          CheckLevel()
                          TP(CFrameMon)
                      end
                  end)
              end
          end
      end
  end)
  
  function Click()
      game:GetService'VirtualUser':CaptureController()
      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
  end
  
  if SelectToolWeapon then
  else
      SelectToolWeapon = ""
  end
  
  if SelectWeaponBoss then
  else
      SelectWeaponBoss = ""
  end
  
  WeaponMastery = ""
  
  function AutoHaki()
      if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
          local args = {
              [1] = "Buso"
          }
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      end
  end
  
  spawn(function()
      while wait() do
          if AutoYama then
              if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                  repeat wait(.1)
                      fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                  until game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") or not AutoYama
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if LevelLockClose then
              if game:GetService("Players").LocalPlayer.Data.Level >= LevelLock then
                  game:Shutdown()
              elseif game:GetService("Players").LocalPlayer.Data.Level >= LevelLockKick then
                  game.Players.LocalPlayer:kick("You Level :"..LevelLock)
              end
          end
      end
  end)
  
  Core = false
  spawn(function()
      while wait() do
          if Factory then
              if game.Workspace.Enemies:FindFirstChild("Core") then
                  Core = true
                  Auto_Farm = false
                  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                      if Core and v.Name == "Core" and v.Humanoid.Health > 0 then
                          repeat game:GetService("RunService").Heartbeat:wait()
                              TP(CFrame.new(402.404296875, 182.53373718262, -414.73394775391))
                              EquipWeapon(SelectToolWeapon)
                              require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                              game:GetService'VirtualUser':CaptureController()
                              game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                          until not Core or v.Humanoid.Health <= 0  or Factory == false
                      end
                  end
              elseif game.ReplicatedStorage:FindFirstChild("Core") then
                  Core = true
                  Auto_Farm = false
                  TP(CFrame.new(402.404296875, 182.53373718262, -414.73394775391))
              elseif _G.AutoFarm and SelectToolWeapon ~= "" then
                  Auto_Farm = true
                  Core = false
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if Auto_Newworld then
              local Lv = game.Players.LocalPlayer.Data.Level.Value
              if Lv >= 700 and Old_World then
                  Auto_Farm = false
                  if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                      TP2(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
                      wait(.5)
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                      EquipWeapon("Key")
                      TP2(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                      wait(3)
                  elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      pcall(function()
                                          EquipWeapon(SelectToolWeapon)
                                          TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 25))
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                          v.HumanoidRootPart.Transparency = .8
                                          game:GetService("VirtualUser"):CaptureController()
                                          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                                      end)
                                  until v.Humanoid.Health <= 0 or not v.Parent
                                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                              end
                          end
                      else
                          TP2(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                      end
                  else
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                  end
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if AutoBartilo then
              if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                  if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                      if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Swan Pirate [Lv. 775]" then
                                  pcall(function()
                                      repeat wait(.1)
                                          EquipWeapon(MiscFarmWeapon)
                                          game:GetService'VirtualUser':CaptureController()
                                          game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                          TP(v.HumanoidRootPart.CFrame * CFrame.new(0,15,0))
                                          require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                          PosMonBartilo = v.HumanoidRootPart.CFrame
                                          MagnetBatilo = true
                                      until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                      MagnetBatilo = false
                                  end)
                              end
                          end
                      else
                          MagnetBatilo = false
                          TP(CFrame.new(1057.92761, 137.614319, 1242.08069))
                      end
                  else
                      TP2(CFrame.new(-456.28952, 73.0200958, 299.895966))
                      if (Vector3.new(-456.28952, 73.0200958, 299.895966) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                          wait(1.1)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                      end
                  end
              elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                  if QuestBartilo == nil then
                      TP2(CFrame.new(-456.28952, 73.0200958, 299.895966))
                  end
                  if (Vector3.new(-456.28952, 73.0200958, 299.895966) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                      wait(1.1)
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                      QuestBartilo = 1
                  end
                  if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                          if v.Name == "Jeremy [Lv. 850] [Boss]" then
                              repeat wait(.1)
                                  sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                  require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                  EquipWeapon(MiscFarmWeapon)
                                  TP(v.HumanoidRootPart.CFrame * CFrame.new(0,15,6))
                                  game:GetService'VirtualUser':CaptureController()
                                  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                              until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false
                          end
                      end
                  else
                      if QuestBartilo == 1 then
                          TP(CFrame.new(1931.5931396484, 402.67391967773, 956.52215576172))
                      end
                  end
              elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                  TP2(game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame)
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.CFrame
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.CFrame
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.CFrame
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.CFrame
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.CFrame
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate7.CFrame
                  wait(1)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate8.CFrame
                  wait(1)
              end
          end 
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoRengoku then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                      EquipWeapon("Hidden Key")
                      TP2(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                  elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                          if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
                              repeat game:GetService("RunService").Heartbeat:wait()
                                  EquipWeapon(MiscFarmWeapon)
                                  PosMonRengoku = v.HumanoidRootPart.CFrame
                                  require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                  TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                  game:GetService'VirtualUser':CaptureController()
                                  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                  RengokuMagnet = true
                              until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                              RengokuMagnet = false
                          end
                      end
                  else
                      RengokuMagnet = false
                      TP(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoEcto then
                  if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                          if string.find(v.Name, "Ship") then
                              repeat game:GetService("RunService").Heartbeat:wait()
                                  EquipWeapon(MiscFarmWeapon)
                                  if string.find(v.Name, "Ship") then
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0,15,15))
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      PosMonEctoplas = v.HumanoidRootPart.CFrame
                                      EctoplasMagnet = true
                                  else
                                      EctoplasMagnet = false
                                      TP(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                                  end
                              until AutoEcto == false or not v.Parent or v.Humanoid.Health <= 0
                          end
                      end
                  else
                      EctoplasMagnet = false
                      local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                      if Distance > 20000 then
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                      end
                      TP(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          pcall(function()
              if Auto_Bone then
                  if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                          if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                              if v:WaitForChild("Humanoid").Health > 0 then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(EventWeapon)
                                      TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                      game:GetService("VirtualUser"):CaptureController()
                                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                      MainMonBone = v.HumanoidRootPart.CFrame
                                      BoneMagnet = true
                                  until Auto_Bone == false or not v.Parent or v.Humanoid.Health <= 0
                              end
                          end
                      end
                  else
                      BoneMagnet = false
                      TP(CFrame.new(-9501.64453, 582.052612, 6034.20117))
                  end
              end
          end)
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait() do
              if AutoThird then
                  if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and New_World then
                      Auto_Farm = false
                      if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                          TP2(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                          if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                              wait(1.1)
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                          end
                          wait(2)
                          if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                  if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                      repeat game:GetService("RunService").Heartbeat:wait()
                                          pcall(function()
                                              EquipWeapon(SelectToolWeapon)
                                              TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,25))
                                              require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                              game:GetService'VirtualUser':CaptureController()
                                              game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                              FoundIndra = true
                                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                          end)
                                      until AutoThird == false or v.Humanoid.Health <= 0 or not v.Parent
                                  end
                              end
                          elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                              TP(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                          end
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          if AutoEvoRace then
              if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                  if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                      TP(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                      if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                          wait(1.1)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                      end
                  elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                      pcall(function()
                          if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                              TP(game.Workspace.Flower1.CFrame)
                          elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                              TP(game.Workspace.Flower2.CFrame)
                          elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                              if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
                                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                      if v.Name == "Zombie [Lv. 950]" then
                                          repeat game:GetService("RunService").Heartbeat:wait()
                                              EquipWeapon(MiscFarmWeapon)
                                              TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                              v.HumanoidRootPart.CanCollide = false
                                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                              game:GetService("VirtualUser"):CaptureController()
                                              game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                              PosMonZombie = v.HumanoidRootPart.CFrame
                                              EvoMagnet = true
                                          until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or AutoEvoRace == false
                                          EvoMagnet = false
                                      end
                                  end
                              else
                                  EvoMagnet = false
                                  TP(CFrame.new(-5854.39014, 145.093857, -686.942017, 0.379233211, -1.41975844e-08, -0.925301135, -3.77265719e-10, 1, -1.5498367e-08, 0.925301135, 6.2265797e-09, 0.379233211))
                              end
                          end
                      end)
                  elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                  end
              end
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoFarmSelectMonster then
                  if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                      CheckLevel()
                      if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                          wait(1.1)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                      else
                          TP(CFrameQ)
                      end
                  elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                      CheckLevel()
                      pcall(function()
                          if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                  if v.Name == Ms and v:FindFirstChild("Humanoid") then
                                      if v.Humanoid.Health > 0 then
                                          repeat game:GetService("RunService").Heartbeat:wait()
                                              if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                  EquipWeapon(MiscFarmWeapon)
                                                  TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                  v.HumanoidRootPart.CanCollide = false
                                                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                  game:GetService("VirtualUser"):CaptureController()
                                                  game:GetService("VirtualUser"):CaptureController()
                                                  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                  PosMonSelectMonster = v.HumanoidRootPart.CFrame
                                                  AutoFarmSelectMonsterMagnet = true
                                              else
                                                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                              end
                                          until not AutoFarmSelectMonster or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                                      end
                                  end
                              end
                          else
                              CheckLevel()
                              AutoFarmSelectMonster = false
                              TP(CFrameMon)
                          end
                      end)
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          if _G.Auto_Dark_Dagger_Hop then
              if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Dagger") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Dagger") then
                  game:Shutdown()
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if _G.Auto_indra_Hop or _G.Auto_Dark_Dagger_Hop then
              if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                  TP(CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625))
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                          if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                              if v.Humanoid.Health > 0 then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 16, 7)
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not v.Parent
                              end
                          end
                      else
                          TP(CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625))
                      end
                  end
              end
              if (_G.Auto_Dark_Dagger_Hop or _G.Auto_indra_Hop) and Three_World and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                  if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false then
                      Teleport()
                      --SafeMode = true
                      TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000,0))
                  elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          local X = math.random(1,1000)
                          local Z = math.random(1,1000)
                          local LP = game.Players.LocalPlayer.Character
                          TP(CFrame.new(X,LP.HumanoidRootPart.CFrame.Y,Z))
                      until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false
                      Teleport()
                  end
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if _G.AutoDonSwan_Hop then
              if game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                  TP(CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875))
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                          if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                              if v.Humanoid.Health > 0 then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 16, 7)
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not v.Parent
                              end
                          end
                      else
                          TP(CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875))
                      end
                  end
              end
              if _G.AutoDonSwan_Hop and New_World and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                  if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false then
                      Teleport()
                      --SafeMode = true
                      TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000,0))
                  elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          local X = math.random(1,1000)
                          local Z = math.random(1,1000)
                          local LP = game.Players.LocalPlayer.Character
                          TP(CFrame.new(X,LP.HumanoidRootPart.CFrame.Y,Z))
                      until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false
                      Teleport()
                  end
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if _G.Pole_Hop then
              if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                  TP(CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188))
                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                          if v.Name == "Thunder God [Lv. 575] [Boss]" then
                              if v.Humanoid.Health > 0 then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 16, 7)
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not v.Parent
                              end
                          end
                      else
                          TP(CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188))
                      end
                  end
              end
              if _G.Pole_Hop and Old_World and not game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                  if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false then
                      Teleport()
                      --SafeMode = true
                      TP(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000,0))
                  elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          local X = math.random(1,1000)
                          local Z = math.random(1,1000)
                          local LP = game.Players.LocalPlayer.Character
                          TP(CFrame.new(X,LP.HumanoidRootPart.CFrame.Y,Z))
                      until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false
                      Teleport()
                  end
              end
          end
      end
  end)
  
  --if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
  
  spawn(function()
      pcall(function()
          while wait() do
              if EliteHunter then
                  local QuestElite = string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre")
                  local ReplicatedStorage = game:GetService("ReplicatedStorage");
                  local Enemies = game:GetService("Workspace").Enemies
                  if ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") or Enemies:FindFirstChild("Diablo [Lv. 1750]") or ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or Enemies:FindFirstChild("Urban [Lv. 1750]") or ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or Enemies:FindFirstChild("Deadre [Lv. 1750]") then
                      Elite = true
                      Auto_Farm = false
                      if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                          TP(CFrame.new(-5418.392578125, 313.74130249023, -2824.9157714844))
                          if (Vector3.new(-5418.392578125, 313.74130249023, -2824.9157714844) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                              wait(1.1)
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                          end
                      elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                          if game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text == "Reward:\n$15,000\n60,000,000 Exp." then
                              for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                  if Elite and v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
                                      repeat game:GetService("RunService").Heartbeat:wait()
                                          if QuestElite then
                                              EquipWeapon(SelectToolWeapon)
                                              TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 4))
                                              require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                              game:GetService'VirtualUser':CaptureController()
                                              game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                          else
                                              TP(CFrame.new(-5418.392578125, 313.74130249023, -2824.9157714844))
                                              if (Vector3.new(-5418.392578125, 313.74130249023, -2824.9157714844) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                                  wait(1.5)
                                                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                              end
                                          end
                                      until not Elite or v.Humanoid.Health <= 0 or not v.Parent or not EliteHunter or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                  end
                              end
                          else
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonHunter")
                          end
                      end
                  else
                      Elite = false
                  end
                  if _G.AutoFarm and Elite == false then
                      Auto_Farm = true
                  end
                  if _G.Auto_Elite_Hop and Three_World and Elite == false then
                      if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false then
                          Teleport()
                          --SafeMode = true
                          TP(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000,0))
                      elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
                          repeat game:GetService("RunService").Heartbeat:wait()
                              local X = math.random(1,1000)
                              local Z = math.random(1,1000)
                              local LP = game.Players.LocalPlayer.Character
                              TP(CFrame.new(X,LP.HumanoidRootPart.CFrame.Y,Z))
                          until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false
                          Teleport()
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          if AutoCitizen then
              if game.Players.LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                  if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Forest Pirate [Lv. 1825]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      pcall(function()
                                          EquipWeapon(MiscFarmWeapon)
                                          TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                          game:GetService'VirtualUser':CaptureController()
                                          game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                          PosMonCitizen = v.HumanoidRootPart.CFrame
                                          CitizenMagnet = true
                                      end)
                                  until AutoCitizen == false or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                  CitizenMagnet = false
                              end
                          end
                      else
                          CitizenMagnet = false
                          TP(CFrame.new(-13459.065429688, 412.68927001953, -7783.1860351563))
                      end
                  else
                      TP(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                      if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                          wait(1.5)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)
                      end
                  end
              elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                  if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      pcall(function()
                                          EquipWeapon(MiscFarmWeapon)
                                          TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                          game:GetService("VirtualUser"):CaptureController()
                                          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                      end)
                                  until AutoCitizen == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              end
                          end
                      else
                          TP(CFrame.new(-13459.065429688, 412.68927001953, -7783.1860351563))
                      end
                  else
                      TP(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                      if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                          wait(1.5)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                      end
                  end
              elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                  TP(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if AutoObservationv2 then
              if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start") == 0 then
                  local args = {
                      [1] = "KenTalk2",
                      [2] = "Buy"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              else
                  if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") then
                      local args = {
                          [1] = "KenTalk2",
                          [2] = "Start"
                      }
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  else
                      for i,v in pairs(game:GetService("Workspace").AppleSpawner:GetChildren()) do
                          if v.Name == "Apple" then
                              v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                          end
                      end
                      for i,v in pairs(game:GetService("Workspace").BananaSpawner:GetChildren()) do
                          if v.Name == "Banana" then
                              v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                          end
                      end
                      for i,v in pairs(game:GetService("Workspace").PineappleSpawner:GetChildren()) do
                          if v.Name == "Pineapple" then
                              v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                          end
                      end
                      if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Apple") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple")) and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pineapple") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Banana") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana")) then
                          local args = {
                              [1] = "CitizenQuestProgress",
                              [2] = "Citizen"
                          }
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                      end
                  end
              end
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoRainbow then
                  if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                      TP(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                      if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                          wait(1.5)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                      end
                  elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Stone [Lv. 1550] [Boss]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService("VirtualUser"):CaptureController()
                                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                  until AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              end
                          end
                      else
                          TP(CFrame.new(-871.478455, 92.3782501, 6637.01514, -0.648528099, -2.65940674e-08, 0.761190772, -2.16472333e-08, 1, 1.64941927e-08, -0.761190772, -5.78073056e-09, -0.648528099))
                      end
                  elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService("VirtualUser"):CaptureController()
                                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                  until AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              end
                          end
                      else
                          TP(CFrame.new(5541.21338, 668.239258, 198.150391, -0.00426674541, 5.33843725e-09, -0.99999088, 3.50221967e-08, 1, 5.18905363e-09, 0.99999088, -3.49997364e-08, -0.00426674541))
                      end
                  elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService("VirtualUser"):CaptureController()
                                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                  until AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              end
                          end
                      else
                          TP(CFrame.new(2832.35449, 432.43573, -7122.49121, 0.734633088, -8.93899994e-08, -0.678464592, 6.01928107e-09, 1, -1.25235772e-07, 0.678464592, 8.79184725e-08, 0.734633088))
                      end
                  elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService("VirtualUser"):CaptureController()
                                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                  until AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              end
                          end
                      else
                          TP(CFrame.new(-13315.5381, 433.261169, -8078.44971, 0.998839259, 7.84328549e-08, -0.0481674224, -8.16301977e-08, 1, -6.44126743e-08, 0.0481674224, 6.82698271e-08, 0.998839259))
                      end
                  elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeapon)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                      game:GetService("VirtualUser"):CaptureController()
                                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                  until AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                              end
                          end
                      else
                          TP(CFrame.new(5314.58203, 22.536438, -125.942276, 1, 6.26807051e-09, 6.631647e-16, -6.26807051e-09, 1, 9.95202925e-08, -3.93644864e-17, -9.95202925e-08, 1))
                      end
                  else
                      TP(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                      if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                          wait(1.5)
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          if FarmMasteryFruit then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  MasteryBFMagnetActive = false
                  CheckLevel()
                  TP(CFrameQ)
                  if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                      wait(1.1)
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                  end
              elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                  CheckLevel()
                  if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                      pcall(function()
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == Ms then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                          HealthMin = v.Humanoid.MaxHealth * HealthPersen/100
                                          if v.Humanoid.Health <= HealthMin then
                                              EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                              v.Head.CanCollide = false
                                              v.HumanoidRootPart.CanCollide = false
                                              v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                              TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                              USEBF = true
                                          else
                                              USEBF = false
                                              EquipWeapon(WeaponMastery)
                                              TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                              game:GetService("VirtualUser"):CaptureController()
                                              game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                              v.Head.CanCollide = false
                                              v.HumanoidRootPart.CanCollide = false
                                              v.HumanoidRootPart.Size = Vector3.new(40,40,40)
                                          end
                                          MasteryBFMagnetActive = true
                                          PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                      else
                                          MasteryBFMagnetActive = false
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                      end
                                  until v.Humanoid.Health <= 0 or FarmMasteryFruit == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                  USEBF = false
                              end
                          end
                      end)
                  else
                      MasteryBFMagnetActive = false
                      TP(CFrameMon)
                  end 
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if FarmMasteryGun then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                  MasteryGunMagnetActive = false
                  CheckLevel()
                  TP(CFrameQ)
                  if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                      wait(1.1)
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                  end
              elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                  CheckLevel()
                  if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                      pcall(function()
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == Ms then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                          HealthMin = v.Humanoid.MaxHealth * HealthPersen/100
                                          if v.Humanoid.Health <= HealthMin then
                                              EquipWeapon(SelectToolWeaponGun)
                                              TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                                              local args = {
                                                  [1] = v.HumanoidRootPart.Position,
                                                  [2] = v.HumanoidRootPart
                                              }
                                              game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                          else
                                              EquipWeapon(WeaponMastery)
                                              require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
                                              TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                              game:GetService'VirtualUser':CaptureController()
                                              game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                          end
                                          MasteryGunMagnetActive = true 
                                          PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                      else
                                          MasteryGunMagnetActive = false
                                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                      end
                                  until v.Humanoid.Health <= 0 or FarmMasteryGun == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                  MasteryGunMagnetActive = false
                              end
                          end
                      end)
                  else
                      TP(CFrameMon)
                  end 
              end
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait() do
              if AutoBuyChiplawraid then
                  if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoLowRaid then
                  if not game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                      if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                          fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                      end
                  end
                  if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                      if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == "Order [Lv. 1250] [Raid Boss]" then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectToolWeaponLaw)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0,50,25))
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                      _G.FastAtttk = true
                                  until not v.Parent or v.Humanoid.Health <= 0 or AutoLowRaid == false
                                  RawFastAttack = false
                              end
                          end
                      elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                          RawFastAttack = false
                          TP(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait() do
          if LegebdarySword then
              local args = {
                  [1] = "LegendarySwordDealer",
                  [2] = "1"
              }
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              local args = {
                  [1] = "LegendarySwordDealer",
                  [2] = "2"
              }
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              local args = {
                  [1] = "LegendarySwordDealer",
                  [2] = "3"
              }
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              if _G.AutoLegendary_Hop and New_World then
                  wait(10)
                  Teleport()
              end
          end 
      end
  end)
  spawn(function()
      while wait() do
          if Enchancement then
              local args = {
                  [1] = "ColorsDealer",
                  [2] = "2"
              }
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              if _G.AutoEnchancement_Hop and not Old_World then
                  wait(10)
                  Teleport()
              end
          end 
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoAccessories or _G.AutoAccessory then
                  CheckAccessory = game:GetService("Players").LocalPlayer.Character
                  if CheckAccessory:FindFirstChild("BlackCape") or CheckAccessory:FindFirstChild("SwordsmanHat") or CheckAccessory:FindFirstChild("PinkCoat") or CheckAccessory:FindFirstChild("TomoeRing") or CheckAccessory:FindFirstChild("MarineCape") or CheckAccessory:FindFirstChild("PirateCape") or CheckAccessory:FindFirstChild("CoolShades") or CheckAccessory:FindFirstChild("UsoapHat") or CheckAccessory:FindFirstChild("MarineCap") or CheckAccessory:FindFirstChild("BlackSpikeyCoat") or CheckAccessory:FindFirstChild("Choppa") or CheckAccessory:FindFirstChild("SaboTopHat") or CheckAccessory:FindFirstChild("WarriorHelmet") or CheckAccessory:FindFirstChild("DarkCoat") or CheckAccessory:FindFirstChild("SwanGlasses") or CheckAccessory:FindFirstChild("ZebraCap") or CheckAccessory:FindFirstChild("GhoulMask") or CheckAccessory:FindFirstChild("BlueSpikeyCoat") or CheckAccessory:FindFirstChild("RedSpikeyCoat") or CheckAccessory:FindFirstChild("SantaHat") or CheckAccessory:FindFirstChild("ElfHat") or CheckAccessory:FindFirstChild("ValkyrieHelm") or CheckAccessory:FindFirstChild("Bandanna(Black)") or CheckAccessory:FindFirstChild("Bandanna(Green)") or CheckAccessory:FindFirstChild("Bandanna(Red)") or CheckAccessory:FindFirstChild("Huntercape(Black)") or CheckAccessory:FindFirstChild("Huntercape(Green)") or CheckAccessory:FindFirstChild("Huntercape(Red)") or CheckAccessory:FindFirstChild("PrettyHelmet") or CheckAccessory:FindFirstChild("JawShield") or CheckAccessory:FindFirstChild("MusketeerHat") or CheckAccessory:FindFirstChild("Pilothelmet") then
                  else
                      EquipWeapon(SelectTooAccessories)
                      wait(1)
                      game:GetService("Players").LocalPlayer.Character[SelectTooAccessories].RemoteFunction:InvokeServer()
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
              if v:IsA("Tool") then 
                  if v.ToolTip == "Wear" then    
                      SelectTooAccessories = v.Name
                  end
              end
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if Superhuman or AutoFullySuperhuman then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
                      local args = {
                          [1] = "BuyBlackLeg"
                      }
                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                  end
                  if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                          SelectToolWeapon = "Combat"
                          SelectToolWeaponOld = "Combat"
                      end
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") then
                          SelectToolWeapon = "Black Leg"
                          SelectToolWeaponOld = "Black Leg"
                      end
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                          SelectToolWeapon = "Electro"
                          SelectToolWeaponOld = "Electro"
                      end
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                          SelectToolWeapon = "Fishman Karate"
                          SelectToolWeaponOld = "Fishman Karate"
                      end
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                          SelectToolWeapon = "Dragon Claw"
                          SelectToolWeaponOld = "Dragon Claw"
                      end
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Superhuman") then
                          SelectToolWeapon = "Superhuman"
                          SelectToolWeaponOld = "Superhuman"
                      end
                      if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300) then
                          local args = {
                              [1] = "BuyElectro"
                          }
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                      end
                      if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300) then
                          local args = {
                              [1] = "BuyFishmanKarate"
                          }
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                      end
                      if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300) then
                          if AutoFullySuperhuman then
                              if game.Players.LocalPlayer.Data.Level.Value >= 1100 then
                                  if game.Players.LocalPlayer.Data.Fragments.Value <= 1499 then
                                      RaidSuperhuman = true
                                      _G.SelectRaid = "Flame"
                                      Auto_Farm = false
                                  elseif game.Players.LocalPlayer.Data.Fragments.Value >= 1500 then
                                      RaidSuperhuman = false
                                      if _G.AutoFarm and RaidSuperhuman == false then
                                          Auto_Farm = true
                                      end
                                      local args = {
                                          [1] = "BlackbeardReward",
                                          [2] = "DragonClaw",
                                          [3] = "1"
                                      }
                                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                      local args = {
                                          [1] = "BlackbeardReward",
                                          [2] = "DragonClaw",
                                          [3] = "2"
                                      }
                                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                  end
                              end
                          elseif not AutoFullySuperhuman then
                              local args = {
                                  [1] = "BlackbeardReward",
                                  [2] = "DragonClaw",
                                  [3] = "1"
                              }
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                              local args = {
                                  [1] = "BlackbeardReward",
                                  [2] = "DragonClaw",
                                  [3] = "2"
                              }
                              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                          end
                      end
                      if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300) then
                          local args = {
                              [1] = "BuySuperhuman"
                          }
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          if DeathStep then
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                  local args = {
                      [1] = "BuyDeathStep"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              end
              if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                  local args = {
                      [1] = "BuyDeathStep"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
              end
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                  SelectToolWeapon = "Black Leg"
              end
          end
      end
  end)
  
  function CheckBossQuest()
      if Old_World then
          if SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
              BossMon = "The Gorilla King [Lv. 25] [Boss]"
              NameQuestBoss = "JungleQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$2,000\n7,000 Exp."
              CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
              CFrameBoss = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
          elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
              BossMon = "Bobby [Lv. 55] [Boss]"
              NameQuestBoss = "BuggyQuest1"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$8,000\n35,000 Exp."
              CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
              CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
          elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
              BossMon = "The Saw [Lv. 100] [Boss]"
              CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
          elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
              BossMon = "Yeti [Lv. 110] [Boss]"
              NameQuestBoss = "SnowQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$10,000\n180,000 Exp."
              CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
              CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
          elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
              BossMon = "Mob Leader [Lv. 120] [Boss]"
              CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
          elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
              BossMon = "Vice Admiral [Lv. 130] [Boss]"
              NameQuestBoss = "MarineQuest2"
              QuestLvBoss = 2
              RewardBoss = "Reward:\n$10,000\n180,000 Exp."
              CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
              CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
          elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
              BossMon = "Warden [Lv. 175] [Boss]"
              NameQuestBoss = "ImpelQuest"
              QuestLvBoss = 1
              RewardBoss = "Reward:\n$6,000\n600,000 Exp."
              CFrameQBoss = CFrame.new(4853.283203125, 5.6783537864685, 745.13970947266)
              CFrameBoss = CFrame.new(5020.9438476563, 88.67887878418, 756.89392089844)
          elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
              BossMon = "Saber Expert [Lv. 200] [Boss]"
              CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
          elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
              BossMon = "Chief Warden [Lv. 200] [Boss]"
              NameQuestBoss = "ImpelQuest"
              QuestLvBoss = 2
              RewardBoss = "Reward:\n$10,000\n700,000 Exp."
              CFrameQBoss = CFrame.new(4853.283203125, 5.6783537864685, 745.13970947266)
              CFrameBoss = CFrame.new(5020.9438476563, 88.67887878418, 756.89392089844)
          elseif SelectBoss == "Flamingo [Lv. 225] [Boss]" then
              BossMon = "Flamingo [Lv. 225] [Boss]"
              NameQuestBoss = "ImpelQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$15,000\n1,300,000 Exp."
              CFrameQBoss = CFrame.new(4853.283203125, 5.6783537864685, 745.13970947266)
              CFrameBoss = CFrame.new(5020.9438476563, 88.67887878418, 756.89392089844)
          elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
              BossMon = "Magma Admiral [Lv. 350] [Boss]"
              NameQuestBoss = "MagmaQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
              CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
              CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
          elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
              BossMon = "Fishman Lord [Lv. 425] [Boss]"
              NameQuestBoss = "FishmanQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
              CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
              CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
          elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
              BossMon = "Wysper [Lv. 500] [Boss]"
              NameQuestBoss = "SkyExp1Quest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
              CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
              CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
          elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
              BossMon = "Thunder God [Lv. 575] [Boss]"
              NameQuestBoss = "SkyExp2Quest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
              CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
              CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
          elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
              BossMon = "Cyborg [Lv. 675] [Boss]"
              NameQuestBoss = "FountainQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
              CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
              CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
          elseif SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
              BossMon = "Greybeard [Lv. 750] [Raid Boss]"
              CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
          end
      end
      if New_World then
          if SelectBoss == "Diamond [Lv. 750] [Boss]" then
              BossMon = "Diamond [Lv. 750] [Boss]"
              NameQuestBoss = "Area1Quest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
              CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
              CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
          elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
              BossMon = "Jeremy [Lv. 850] [Boss]"
              NameQuestBoss = "Area2Quest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
              CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
              CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
          elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
              BossMon = "Fajita [Lv. 925] [Boss]"
              NameQuestBoss = "MarineQuest3"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
              CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
              CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
          elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
              BossMon = "Don Swan [Lv. 1000] [Boss]"
              CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
          elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
              BossMon = "Smoke Admiral [Lv. 1150] [Boss]"
              NameQuestBoss = "IceSideQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
              CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
              CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
          elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
              BossMon = "Awakened Ice Admiral [Lv. 1400] [Boss]"
              NameQuestBoss = "FrostQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
              CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
              CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
          elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
              BossMon = "Tide Keeper [Lv. 1475] [Boss]"
              NameQuestBoss = "ForgottenQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
              CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
              CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
          elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
              BossMon = "Darkbeard [Lv. 1000] [Raid Boss]"
              CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
          elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
              BossMon = "Cursed Captain [Lv. 1325] [Raid Boss]"
              CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
          elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
              BossMon = "Order [Lv. 1250] [Raid Boss]"
              CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
          end
      end
      if Three_World then
          if SelectBoss == "Stone [Lv. 1550] [Boss]" then
              BossMon = "Stone [Lv. 1550] [Boss]"
              NameQuestBoss = "PiratePortQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
              CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
              CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
          elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
              BossMon = "Island Empress [Lv. 1675] [Boss]"
              NameQuestBoss = "AmazonQuest2"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
              CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
              CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
          elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
              BossMon = "Kilo Admiral [Lv. 1750] [Boss]"
              NameQuestBoss = "MarineTreeIsland"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
              CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
              CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
          elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
              BossMon = "Captain Elephant [Lv. 1875] [Boss]"
              NameQuestBoss = "DeepForestIsland"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
              CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
              CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
          elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
              BossMon = "Beautiful Pirate [Lv. 1950] [Boss]"
              NameQuestBoss = "DeepForestIsland2"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
          elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
              BossMon = "Cake Queen [Lv. 2175] [Boss]"
              NameQuestBoss = "IceCreamIslandQuest"
              QuestLvBoss = 3
              RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
              CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
              CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
          elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
              BossMon = "Longma [Lv. 2000] [Boss]"
              CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
          elseif SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
              BossMon = "Soul Reaper [Lv. 2100] [Raid Boss]"
              CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
          elseif SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
              BossMon = "rip_indra True Form [Lv. 5000] [Raid Boss]"
              CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
          end
      end
  end
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoFarmBoss then
                  CheckBossQuest()
                  if SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or SelectBoss == "Longma [Lv. 2000] [Boss]" or SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Order [Lv. 1250] [Raid Boss]" or SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                      if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                              if v.Name == BossMon then
                                  repeat game:GetService("RunService").Heartbeat:wait()
                                      EquipWeapon(SelectWeaponBoss)
                                      TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                      game:GetService("VirtualUser"):CaptureController()
                                      game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                  until AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
                              end
                          end
                      else
                          TP(CFrameBoss)
                      end
                  else
                      if BossQuest then
                          if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                              TP(CFrameQBoss)
                              if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                  wait(1.1)
                                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
                              end
                          elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                              if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                                  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                      if v.Name == BossMon then
                                          repeat game:GetService("RunService").Heartbeat:wait()
                                              if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text, RewardBoss) then
                                                  EquipWeapon(SelectWeaponBoss)
                                                  TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                  v.HumanoidRootPart.CanCollide = false
                                                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                  game:GetService("VirtualUser"):CaptureController()
                                                  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                              else
                                                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                              end
                                          until AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
                                      end
                                  end
                              else
                                  TP(CFrameBoss)
                              end
                          end
                      else
                          if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                  if v.Name == BossMon then
                                      repeat game:GetService("RunService").Heartbeat:wait()
                                          EquipWeapon(SelectWeaponBoss)
                                          TP(v.HumanoidRootPart.CFrame * Farm_Mode)
                                          v.HumanoidRootPart.CanCollide = false
                                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                          game:GetService("VirtualUser"):CaptureController()
                                          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                      until AutoFarmBoss == false or not v.Parent or v.Humanoid.Health <= 0
                                  end
                              end
                          else
                              TP(CFrameBoss)
                          end
                      end
                  end
              end
          end
      end)
  end)
  
  function KillPlayerfunc()
      if KillPlayer and Aimbot then
          EquipWeapon(SelectToolWeaponGun)
          if HideHit then
              game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Transparency = 1
          else
              game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Transparency = 0.8
          end
          game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CanCollide = false
          game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
          TP(game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
          game:GetService("VirtualUser"):CaptureController()
          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
          if SkillZ then
              local args = {
                  [1] = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
              }
              game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteEvent:FireServer(unpack(args))
              local args = {
                  [1] = "Z",
                  [2] = Vector3.new(0,0,0)
              }
              game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunction:InvokeServer(unpack(args))
          end
          if SkillX  then
              local args = {
                  [1] = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
              }
              game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteEvent:FireServer(unpack(args))
              local args = {
                  [1] = "X",
                  [2] = Vector3.new(0,0,0)
              }
              game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunction:InvokeServer(unpack(args))
          end
      elseif KillPlayer then
          EquipWeapon(SelectKillWeapon)
          if HideHit then
              game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Transparency = 1
          else
              game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Transparency = .8
          end
          game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CanCollide = false
          game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
          TP(game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,13,7))
          game:GetService("VirtualUser"):CaptureController()
          game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
          if SkillZ then
              local args = {
                  [1] = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
              }
              game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
              local args = {
                  [1] = "Z",
                  [2] = Vector3.new(0,0,0)
              }
              game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunction:InvokeServer(unpack(args))
          end
          if SkillX  then
              local args = {
                  [1] = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
              }
              game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
              local args = {
                  [1] = "X",
                  [2] = Vector3.new(0,0,0)
              }
              game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunction:InvokeServer(unpack(args))
          end
          if SkillV then
              local args = {
                  [1] = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
              }
              game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
              local args = {
                  [1] = "V",
                  [2] = Vector3.new(0,0,0)
              }
              game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunction:InvokeServer(unpack(args))
          end
      end
  end
  
  spawn(function()
      pcall(function()
          while wait() do
              if SafeMode then
                  local X = math.random(1,100)
                  local Z = math.random(1,100)
                  TP(CFrame.new(X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y,Z))
              end
          end
      end)
  end)
  
  local lp = game:GetService('Players').LocalPlayer
  local mouse = lp:GetMouse()
  mouse.Button1Down:Connect(function()
      if AimbotRange and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) then
          for i,v in pairs(game:GetService("Players"):GetChildren()) do
              if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
                  if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3 <= RangeAimGun then
                      if v.Name == game.Players.LocalPlayer.Name then
                      else
                          local args = {
                              [1] = v.Character.HumanoidRootPart.Position,
                              [2] = v.Character.HumanoidRootPart
                          }
                          game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                      end
                  end
              end
          end
      end
  end)
  
  local lp = game:GetService('Players').LocalPlayer
  local mouse = lp:GetMouse()
  mouse.Button1Down:Connect(function()
      if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) then
          local args = {
              [1] = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
              [2] = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
          }
          game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
      end
  end)
  
  spawn(function()
      pcall(function()
          while game:GetService("RunService").Heartbeat:wait() do
              if KillPlayer then
                  KillPlayerfunc()
              end
          end
      end)
  end)
  
  spawn(function()
      game:GetService("RunService").Heartbeat:Connect(function()
          if SafeMode or PlayerHunt or KillPlayer or AutoRainbow or AutoCitizen or AutoFarmBoss or FarmAllBoss or Elite or AutoThird or AutoBartilo or AutoRengoku or Auto_Bone or AutoEcto or AutoFarmObservation or Auto_Farm or FarmMasteryGun or FarmMasteryFruit or _G.Auto_indra_Hop or _G.Auto_Dark_Dagger_Hop or _G.AutoDonSwan_Hop or _G.Pole_Hop or Core or noclip or AutoEvoRace or TPChest or NextIsland or RaidSuperhuman or _G.AutoRaid or AutoFarmBoss or SelectFarm or Clip or HolyTorch or AutoFarmSelectMonster or AutoLowRaid then
              if not game:GetService("Workspace"):FindFirstChild("LOL") then
                  local LOL = Instance.new("Part")
                  LOL.Name = "LOL"
                  LOL.Parent = game.Workspace
                  LOL.Anchored = true
                  LOL.Transparency = 1
                  LOL.Size = Vector3.new(30,-0.5,30)
              elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                  game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
              end
          else
              if game:GetService("Workspace"):FindFirstChild("LOL") then
                  game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
              end
          end
      end)
  end)
  
  spawn(function()
      game:GetService("RunService").Stepped:Connect(function()
          if SafeMode or PlayerHunt or KillPlayer or AutoRainbow or AutoCitizen or AutoFarmBoss or FarmAllBoss or Elite or AutoThird or AutoBartilo or AutoRengoku or Auto_Bone or AutoEcto or AutoFarmObservation or Auto_Farm or FarmMasteryGun or FarmMasteryFruit or _G.Auto_indra_Hop or _G.Auto_Dark_Dagger_Hop or _G.AutoDonSwan_Hop or _G.Pole_Hop or Core or noclip or AutoEvoRace or TPChest or NextIsland or RaidSuperhuman or _G.AutoRaid or SelectFarm or Clip or HolyTorch or AutoFarmSelectMonster or AutoLowRaid then
              for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                  if v:IsA("BasePart") then
                      v.CanCollide = false
                  end
              end
          end
      end)
  end)
  
  local Plr = game:GetService("Players").LocalPlayer
  local Mouse = Plr:GetMouse()
  Mouse.Button1Down:connect(function()
      if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
          return
      end
      if not Mouse.Target then
          return
      end
      if CTRL then
          Plr.Character:MoveTo(Mouse.Hit.p)
      end
  end)
  
  if _G.AutoFarm_Ken and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
      wait()
      game:GetService('VirtualUser'):CaptureController()
      game:GetService('VirtualUser'):SetKeyDown('0x65')
      wait(2)
      game:GetService('VirtualUser'):SetKeyUp('0x65')
  end
  
  spawn(function()
      while wait() do
          pcall(function()
              if AutoFarmObservation then
                  if New_World then
                      if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
                          if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                              repeat wait(.1)
                                  TP(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
                              until AutoFarmObservation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                              if _G.AutoFarm_Ken and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                  game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                              end
                          else
                              repeat wait(.1)
                                  TP(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
                              until AutoFarmObservation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                          end
                      else
                          TP(CFrame.new(5567.3129882813, 262.92590332031, -6780.9545898438))
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                      end
                  elseif Old_World then
                      if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                          if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                              repeat wait(.1)
                                  TP(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
                              until AutoFarmObservation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                              if _G.AutoFarm_Ken and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                  game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                              end
                          else
                              repeat wait(.1)
                                  TP(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
                              until AutoFarmObservation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                          end
                      else
                          TP(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                      end
                  elseif Three_World then
                      if game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
                          if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                              repeat wait(.1)
                                  TP(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
                              until AutoFarmObservation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                              if _G.AutoFarm_Ken and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                  game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                              end
                          else
                              repeat wait(.1)
                                  TP(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
                              until AutoFarmObservation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                          end
                      else
                          TP(CFrame.new(2445.59204, 273.184479, -7087.646))
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                      end
                  end
              end
          end)
      end
  end)
  
  spawn(function()
      while wait() do wait(Sec)
          pcall(function()
              if AutoFarmObservation and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                  game:GetService('VirtualUser'):CaptureController()
                  game:GetService('VirtualUser'):SetKeyDown('0x65')
                  wait(2)
                  game:GetService('VirtualUser'):SetKeyUp('0x65')
              end
          end)
      end
  end)
  
  spawn(function()
      while wait() do
          if AutoObservation then
              if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                  wait(1)
                  game:GetService('VirtualUser'):CaptureController()
                  game:GetService('VirtualUser'):SetKeyDown('0x65')
                     wait(2)
                     game:GetService('VirtualUser'):SetKeyUp('0x65')
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if Auto_Haki then
              if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
              end
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if Mad then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", SelectPoint)
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if Gan then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", SelectPoint)
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if Dap then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", SelectPoint)
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if Pun then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", SelectPoint)
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if DevilFruit then
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", SelectPoint)
          end
      end
  end)
  
  spawn(function()
      while wait(.1) do
          if _G.AutoStat then
              for i,v in pairs(_G.AutoStat) do
                  if v == "Melee" and game.Players.LocalPlayer.Data.Stats.Melee.Level.Value ~= 2300 then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", 1)
                      until game.Players.LocalPlayer.Data.Stats.Melee.Level.Value == 2300
                  elseif v == "Defense" and game.Players.LocalPlayer.Data.Stats.Defense.Level.Value ~= 2300 then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", 1)
                      until game.Players.LocalPlayer.Data.Stats.Defense.Level.Value == 2300
                  elseif v == "Sword" and game.Players.LocalPlayer.Data.Stats.Sword.Level.Value ~= 2300 then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", 1)
                      until game.Players.LocalPlayer.Data.Stats.Sword.Level.Value == 2300
                  elseif v == "Gun" and game.Players.LocalPlayer.Data.Stats.Gun.Level.Value ~= 2300 then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", 1)
                      until game.Players.LocalPlayer.Data.Stats.Gun.Level.Value == 2300
                  elseif v == "DevilFruit" and game.Players.LocalPlayer.Data.Stats["Demon Fruit"].Level.Value ~= 2300 then
                      repeat game:GetService("RunService").Heartbeat:wait()
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", 1)
                      until game.Players.LocalPlayer.Data.Stats.Gun.Level.Value == 2300
                  end
              end
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          while wait() do
              if _G.Redeem and game.Players.LocalPlayer.Data.Level.Value >= 850 then
                  function UseCode(Text)
                      game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
                  end
                  UseCode("UPD17")
                  UseCode("2BILLION")
                  UseCode("UPD15")
                  UseCode("FUDD10")
                  UseCode("BIGNEWS")
                  UseCode("THEGREATACE")
                  UseCode("SUB2GAMERROBOT_EXP1")
                  UseCode("StrawHatMaine")
                  UseCode("Sub2OfficialNoobie")
                  UseCode("SUB2NOOBMASTER123")
                  UseCode("Sub2Daigrock")
                  UseCode("Axiore")
                  UseCode("TantaiGaming")
                  UseCode("STRAWHATMAINE")
              end
          end
      end)
  end)
  
  if _G.BoostFPS then
      local decalsyeeted = true
      local g = game
      local w = g.Workspace
      local l = g.Lighting
      local t = w.Terrain
      t.WaterWaveSize = 0
      t.WaterWaveSpeed = 0
      t.WaterReflectance = 0
      t.WaterTransparency = 0
      l.GlobalShadows = false
      l.FogEnd = 9e9
      l.Brightness = 0
      settings().Rendering.QualityLevel = "Level01"
      for i, v in pairs(g:GetDescendants()) do
          if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
              v.Material = "Plastic"
              v.Reflectance = 0
          elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
              v.Transparency = 1
          elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
              v.Lifetime = NumberRange.new(0)
          elseif v:IsA("Explosion") then
              v.BlastPressure = 1
              v.BlastRadius = 1
          elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
              v.Enabled = false
          elseif v:IsA("MeshPart") then
              v.Material = "Plastic"
              v.Reflectance = 0
              v.TextureID = 10385902758728957
          end
      end
      for i, e in pairs(l:GetChildren()) do
          if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
              e.Enabled = false
          end
      end
  end
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if AutoSetSpawn and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
              end
          end
      end)
  end)
  
  spawn(function()
      while wait(.1) do
          if USEBF then
              pcall(function()
                  CheckLevel()
                  if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                      if SkillZ and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                          wait(.3)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                      end
                      if SkillX then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                      end
                      if SkillC then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                      end
                      if SkillV then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                      end
                  elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                      if SkillZ then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                      end
                      if SkillX then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                      end
                      if SkillC then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                      end
                      if SkillV then
                          local args = {
                              [1] = PosMonMasteryFruit.Position
                          }
                          game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                          game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                          game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                      end
                  end
              end)
          end
      end
  end)
  
  spawn(function()
      pcall(function()
          game:GetService("RunService").RenderStepped:Connect(function()
              if USEBF and PosMonMasteryFruit ~= nil then
                  local args = {
                      [1] = PosMonMasteryFruit.Position
                  }
                  game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
              end
          end)
      end)
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if PressHomeStopTween then
                  if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Home) then
                      TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      pcall(function()
          while wait() do
              for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                  if v:IsA("Tool") then
                      if v:FindFirstChild("RemoteFunctionShoot") then 
                          SelectToolWeaponGun = v.Name
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
                  if v:IsA("Tool") then
                      if v.ToolTip == "Melee" then
                          SelectToolWeaponMelee = v.Name
                      end
                  end
              end
          end
      end)
  end)
  
  spawn(function()
      pcall(function()
          while wait(.1) do
              if _G.AutoRaid or NextIsland then
                  workspace.Gravity = 0
              else
                  workspace.Gravity = 196
              end
          end
      end)
  end)
  
  spawn(function()
      while wait() do
          pcall(function()
              CheckLevel()
              for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                  if Auto_Farm and MagnetActive and Magnet then
                      if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                          if v.Name == "Factory Staff [Lv. 800]" then
                              if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
                                  v.Head.CanCollide = false
                                  v.HumanoidRootPart.CanCollide = false
                                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                  v.HumanoidRootPart.CFrame = PosMon
                                  sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                              end
                          elseif v.Name == Ms then
                              if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 400 then
                                  v.Head.CanCollide = false
                                  v.HumanoidRootPart.CanCollide = false
                                  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                  v.HumanoidRootPart.CFrame = PosMon
                                  sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                              end
                          end
                      end
                  elseif FarmMasteryFruit and MasteryBFMagnetActive and MasteryMagnet then
                      if v.Name == "Monkey [Lv. 14]" then
                          if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 then
                              v.Head.CanCollide = false
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                      elseif v.Name == "Factory Staff [Lv. 800]" then
                          if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 then
                              v.Head.CanCollide = false
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                      elseif v.Name == Ms then
                          if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 400 then
                              v.Head.CanCollide = false
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                      end
                  elseif FarmMasteryGun and MasteryGunMagnetActive and MasteryMagnet then
                      if v.Name == "Monkey [Lv. 14]" then
                          if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 then
                              v.Head.CanCollide = false
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              v.HumanoidRootPart.CFrame = PosMonMasteryGun
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                      elseif v.Name == "Factory Staff [Lv. 800]" then
                          if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 then
                              v.Head.CanCollide = false
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              v.HumanoidRootPart.CFrame = PosMonMasteryGun
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                      elseif v.Name == Ms then
                          if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 400 then
                              v.Head.CanCollide = false
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                              v.HumanoidRootPart.CFrame = PosMonMasteryGun
                              sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                          end
                      end
                  elseif AutoBartilo and MagnetBatilo and Magnet then
                      if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          v.HumanoidRootPart.CFrame = PosMonBartilo
                          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                  elseif AutoRengoku and RengokuMagnet and Magnet then
                      if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - PosMonRengoku.Position).Magnitude <= 350 then
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          v.HumanoidRootPart.CFrame = PosMonRengoku
                          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                  elseif Auto_Bone and BoneMagnet and Magnet then
                      if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 300 then
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          v.HumanoidRootPart.CFrame = MainMonBone
                          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                  elseif AutoEcto and EctoplasMagnet and Magnet then
                      if string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplas.Position).Magnitude <= 300 then
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          v.HumanoidRootPart.CFrame = PosMonEctoplas
                          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                  elseif AutoEvoRace and EvoMagnet and Magnet then
                      if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonZombie.Position).Magnitude <= 300 then
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          v.HumanoidRootPart.CFrame = PosMonZombie
                          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                  elseif AutoCitizen and CitizenMagnet and Magnet then
                      if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - PosMonCitizen.Position).Magnitude <= 300 then
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          v.HumanoidRootPart.CFrame = PosMonZombie
                          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                  elseif AutoFarmSelectMonster and AutoFarmSelectMonsterMagnet and Magnet then
                      if v.Name == Ms and (v.HumanoidRootPart.Position - PosMonSelectMonster.Position).Magnitude <= 400 then
                          v.Head.CanCollide = false
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          v.HumanoidRootPart.CFrame = PosMonSelectMonster
                          sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                  end
              end
          end)
      end
  end)
  
  warn("Anti AFK : Work")
  local vu = game:GetService("VirtualUser")
  game:GetService("Players").LocalPlayer.Idled:connect(function()
     vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
     wait(1)
     vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  end)
  
  if _G.HideUi then
      game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightControl",false,game)
  end
  
  return DiscordLib
  elseif game.PlaceId == 4520749081 or game.PlaceId == 6381829480 or game.PlaceId == 5931540094 or game.PlaceId == 5931540094 then
    game.StarterGui:SetCore("SendNotification", {
      Icon = "rbxassetid://128226597224894";
      Title = "SAMU HUB", 
      Text = "Welcome SAMU HUB!"
  })
  
  wait(1)
  
  game.StarterGui:SetCore("SendNotification", {
      Icon = "rbxassetid://128226597224894";
      Title = "SAMU HUB", 
      Text = "Loading Ui..."
  })
  
  wait(10)
      _G.Color = Color3.fromRGB(255,0,0)
      if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
      
      repeat wait() until game:GetService("Players")
      
      if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end
          
      wait(1)
      
      do
          local ui = game.CoreGui:FindFirstChild("UlLib")
          if ui then
              ui:Destroy()
          end
      end
      
      local UserInputService = game:GetService("UserInputService")
      local TweenService = game:GetService("TweenService")
      
      local function MakeDraggable(topbarobject, object)
          local Dragging = nil
          local DragInput = nil
          local DragStart = nil
          local StartPosition = nil
      
          local function Update(input)
              local Delta = input.Position - DragStart
              local pos =
                  UDim2.new(
                      StartPosition.X.Scale,
                      StartPosition.X.Offset + Delta.X,
                      StartPosition.Y.Scale,
                      StartPosition.Y.Offset + Delta.Y
                  )
              local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
              Tween:Play()
          end
      
          topbarobject.InputBegan:Connect(
              function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                      Dragging = true
                      DragStart = input.Position
                      StartPosition = object.Position
      
                      input.Changed:Connect(
                          function()
                              if input.UserInputState == Enum.UserInputState.End then
                                  Dragging = false
                              end
                          end
                      )
                  end
              end
          )
      
          topbarobject.InputChanged:Connect(
              function(input)
                  if
                      input.UserInputType == Enum.UserInputType.MouseMovement or
                      input.UserInputType == Enum.UserInputType.Touch
                  then
                      DragInput = input
                  end
              end
          )
      
          UserInputService.InputChanged:Connect(
              function(input)
                  if input == DragInput and Dragging then
                      Update(input)
                  end
              end
          )
      end
      
      local library = {}
      
      function library:AddWindow(text,keybind)
          local bind = keybind or Enum.KeyCode.RightControl
          local ff = false
          local currenttab = ""
      
          local DoctorShiba = Instance.new("ScreenGui")
          DoctorShiba.Name = "UlLib"
          DoctorShiba.Parent = game.CoreGui
          DoctorShiba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
      
          local Main = Instance.new("Frame")
          Main.Name = "Main"
          Main.Parent = DoctorShiba
          Main.AnchorPoint = Vector2.new(0.5, 0.5)
          Main.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
          Main.BackgroundTransparency = 0.100
          Main.BorderSizePixel = 0
          Main.ClipsDescendants = true
          Main.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
          Main.Size = UDim2.new(0, 600, 0, 350)
      
          local Top = Instance.new("Frame")
          Top.Name = "Top"
          Top.Parent = Main
          Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          Top.BackgroundTransparency = 1.000
          Top.BorderSizePixel = 0
          Top.Size = UDim2.new(0, 600, 0, 20)
      
          local Page = Instance.new("Frame")
          Page.Name = "Page"
          Page.Parent = Main
          Page.BackgroundColor3 = Color3.fromRGB(25, 23, 35)
          Page.BackgroundTransparency = 0.100
          Page.BorderSizePixel = 0
          Page.Size = UDim2.new(0, 125, 0, 350)
      
          local NameHub = Instance.new("TextLabel")
          NameHub.Name = "NameHub"
          NameHub.Parent = Page
          NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          NameHub.BackgroundTransparency = 1.000
          NameHub.Position = UDim2.new(0.113333493, 0, 0, 0)
          NameHub.Size = UDim2.new(0, 110, 0, 20)
          NameHub.Font = Enum.Font.GothamSemibold
          NameHub.Text = text
          NameHub.TextColor3 = Color3.fromRGB(225, 0, 0)
          NameHub.TextSize = 11.000
          NameHub.TextXAlignment = Enum.TextXAlignment.Left
      
          local User = Instance.new("Frame")
          User.Name = "User"
          User.Parent = Page
          User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          User.BackgroundTransparency = 1.000
          User.Position = UDim2.new(0, 0, 0.8, 30)
          User.Size = UDim2.new(0, 125, 0, 40)
      
          local UserText = Instance.new("TextLabel")
          UserText.Name = "UserText"
          UserText.Parent = User
          UserText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          UserText.BackgroundTransparency = 1.000
          UserText.Position = UDim2.new(0.354999989, 0, 0, 11)
          UserText.Size = UDim2.new(0, 80, 0, 20)
          UserText.Font = Enum.Font.Gotham
          UserText.Text = tostring(game.Players.LocalPlayer.Name) 
          spawn(function()
              while wait() do
                  pcall(function()
                      wait(0.1) 
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 0, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 155, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 255, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(0, 255, 0)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(0, 255, 255)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(0, 155, 255)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 0, 255)}
                      ):Play() 
                      wait(.5)            
                      game:GetService('TweenService'):Create(
                          UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                          {TextColor3 = Color3.fromRGB(255, 0, 155)}
                      ):Play() 
                      wait(.5)
                  end)
              end
          end)
          UserText.TextScaled = true
          UserText.TextSize = 11.000
          UserText.TextWrapped = true
          UserText.TextXAlignment = Enum.TextXAlignment.Left
      
          local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
          UITextSizeConstraint.Parent = UserText
          UITextSizeConstraint.MaxTextSize = 11
      
          local UserImage = Instance.new("ImageLabel")
          UserImage.Name = "UserImage"
          UserImage.Parent = User
          UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
          UserImage.Position = UDim2.new(0, 10, 0, 9)
          UserImage.Size = UDim2.new(0, 25, 0, 25)
          UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
      
          local UserImageCorner = Instance.new("UICorner")
          UserImageCorner.CornerRadius = UDim.new(0, 100)
          UserImageCorner.Name = "UserImageCorner"
          UserImageCorner.Parent = UserImage
      
          local ScrollPage = Instance.new("ScrollingFrame")
          ScrollPage.Name = "ScrollPage"
          ScrollPage.Parent = Page
          ScrollPage.Active = true
          ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ScrollPage.BackgroundTransparency = 1.000
          ScrollPage.BorderSizePixel = 0
          ScrollPage.Position = UDim2.new(0, 0, 0.086, 0)
          ScrollPage.Size = UDim2.new(0, 125, 0, 290)
          ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
          ScrollPage.ScrollBarThickness = 0
          local PageList = Instance.new("UIListLayout")
          PageList.Name = "PageList"
          PageList.Parent = ScrollPage
          PageList.SortOrder = Enum.SortOrder.LayoutOrder
          PageList.Padding = UDim.new(0, 7)
      
          local PagePadding = Instance.new("UIPadding")
          PagePadding.Name = "PagePadding"
          PagePadding.Parent = ScrollPage
          PagePadding.PaddingTop = UDim.new(0, 5)
          PagePadding.PaddingLeft = UDim.new(0, 28)
      
          local TabFolder = Instance.new("Folder")
          TabFolder.Name = "TabFolder"
          TabFolder.Parent = Main
      
          MakeDraggable(Top,Main)
      
          local uihide = false
      
          UserInputService.InputBegan:Connect(function(input)
              if input.KeyCode == bind then
                  if uihide == false then
                      uihide = true
                      Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
                  else
                      uihide = false
                      Main:TweenSize(UDim2.new(0, 600, 0, 350),"Out","Quad",0.2,true)
                  end
              end
          end)
      
          local uitab = {}
      
          function uitab:AddTab(text,image)
              local Image = image or 6023426915
      
              local PageButton = Instance.new("TextButton")
              PageButton.Name = "PageButton"
              PageButton.Parent = ScrollPage
              PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              PageButton.BackgroundTransparency = 1.000
              PageButton.BorderSizePixel = 0
              PageButton.Position = UDim2.new(0.224000007, 0, 0.029787235, 0)
              PageButton.Size = UDim2.new(0, 97, 0, 20)
              PageButton.AutoButtonColor = false
              PageButton.Font = Enum.Font.GothamSemibold
              PageButton.Text = text
              PageButton.TextColor3 = Color3.fromRGB(225, 225, 225)
              PageButton.TextSize = 11.000
              PageButton.TextXAlignment = Enum.TextXAlignment.Left
              
              local PageImage = Instance.new("ImageLabel")
              PageImage.Name = "PageImage"
              PageImage.Parent = PageButton
              PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              PageImage.BackgroundTransparency = 1.000
              PageImage.Position = UDim2.new(0, -20, 0, 3)
              PageImage.Size = UDim2.new(0, 15, 0, 15)
              PageImage.Image = "rbxassetid://"..tostring(Image)
      
              local MainTab = Instance.new("Frame")
              MainTab.Name = "MainTab"
              MainTab.Parent = TabFolder
              MainTab.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
              MainTab.BorderSizePixel = 0
              MainTab.Position = UDim2.new(0.208333328, 0, 0, 0)
              MainTab.Size = UDim2.new(0, 475, 0, 350)
              MainTab.Visible = false
      
              local ScrollTab = Instance.new("ScrollingFrame")
              ScrollTab.Name = "ScrollTab"
              ScrollTab.Parent = MainTab
              ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              ScrollTab.BackgroundTransparency = 1.000
              ScrollTab.BorderSizePixel = 0
              ScrollTab.Position = UDim2.new(0, 0, 0.057, 0)
              ScrollTab.Size = UDim2.new(0, 475, 0, 330)
              ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
              ScrollTab.ScrollBarThickness = 3
      
              local TabList = Instance.new("UIListLayout")
              TabList.Name = "TabList"
              TabList.Parent = ScrollTab
              TabList.SortOrder = Enum.SortOrder.LayoutOrder
              TabList.Padding = UDim.new(0, 5)
      
              local TabPadding = Instance.new("UIPadding")
              TabPadding.Name = "TabPadding"
              TabPadding.Parent = ScrollTab
              TabPadding.PaddingLeft = UDim.new(0, 10)
              TabPadding.PaddingTop = UDim.new(0, 10)
      
              PageButton.MouseButton1Click:Connect(function()
                  currenttab = MainTab.Name
                  for i,v in next, TabFolder:GetChildren() do 
                      if v.Name == "MainTab" then
                          v.Visible = false
                      end
                  end
                  MainTab.Visible = true
      
                  for i,v in next, ScrollPage:GetChildren() do 
                      if v:IsA("TextButton") then
                          TweenService:Create(
                              v,
                              TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                              {TextColor3 = Color3.fromRGB(225, 225, 225)}
                          ):Play()
                      end
                      TweenService:Create(
                          PageButton,
                          TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(255,0,0)}
                      ):Play()
                  end
              end)
      
              if ff == false then
                  TweenService:Create(
                      PageButton,
                      TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                      {TextColor3 = Color3.fromRGB(255,0,0)}
                  ):Play()
                  for i,v in next, TabFolder:GetChildren() do 
                      if v.Name == "MainTab" then
                          v.Visible = false
                      end
                      MainTab.Visible = true
                  end
                  ff = true
              end
      
              game:GetService("RunService").Stepped:Connect(function()
                  pcall(function()
                      ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 10)
                      ScrollTab.CanvasSize = UDim2.new(0,0,0,TabList.AbsoluteContentSize.Y + 30)
                  end)
              end)
              
              local main = {}
              
              function main:AddButton(text,callback)
                  local Button = Instance.new("TextButton")
      
                  Button.Name = "Button"
                  Button.Parent = ScrollTab
                  Button.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                  Button.BackgroundTransparency = 0.1
                  Button.BorderSizePixel = 0
                  Button.Size = UDim2.new(0, 455, 0, 30)
                  Button.AutoButtonColor = false
                  Button.Font = Enum.Font.Gotham
                  Button.Text = text
                  Button.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Button.TextSize = 11.000
                  Button.TextWrapped = true
                  
                  local ButtonCorner = Instance.new("UICorner")
                  ButtonCorner.Name = "ButtonCorner"
                  ButtonCorner.CornerRadius = UDim.new(0, 5)
                  ButtonCorner.Parent = Button
                  
                  Button.MouseEnter:Connect(function()
                      TweenService:Create(
                          Button,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(255,0,0)}
                      ):Play()
                  end)
                  
                  Button.MouseLeave:Connect(function()
                      TweenService:Create(
                          Button,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(225, 225, 225)}
                      ):Play()
                  end)
                  
                  Button.MouseButton1Click:Connect(function()
                      callback()
                      Button.TextSize = 0
                      TweenService:Create(
                          Button,
                          TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                          {TextSize = 11}
                      ):Play()
                  end)
              end
              
              function main:AddToggle(text,config,callback)
                  local ToggleImage = Instance.new("Frame")
                  
                  local Toggle = Instance.new("TextButton")
                  Toggle.Name = "Toggle"
                  Toggle.Parent = ScrollTab
                  Toggle.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                  Toggle.BackgroundTransparency = 0.1
                  Toggle.BorderSizePixel = 0
                  Toggle.AutoButtonColor = false
                  Toggle.Size = UDim2.new(0, 455, 0, 30)
                  Toggle.Font = Enum.Font.SourceSans
                  Toggle.Text = ""
                  Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                  Toggle.TextSize = 14.000
                  
                  local ToggleCorner = Instance.new("UICorner")
                  ToggleCorner.Name = "ToggleCorner"
                  ToggleCorner.CornerRadius = UDim.new(0, 5)
                  ToggleCorner.Parent = Toggle
      
                  local ToggleLabel = Instance.new("TextLabel")
                  ToggleLabel.Name = "ToggleLabel"
                  ToggleLabel.Parent = Toggle
                  ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  ToggleLabel.BackgroundTransparency = 1.000
                  ToggleLabel.Position = UDim2.new(0, 13, 0, 0)
                  ToggleLabel.Size = UDim2.new(0, 410, 0, 30)
                  ToggleLabel.Font = Enum.Font.Gotham
                  ToggleLabel.Text = text
                  ToggleLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                  ToggleLabel.TextSize = 11.000
                  ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
      
                  ToggleImage.Name = "ToggleImage"
                  ToggleImage.Parent = Toggle
                  ToggleImage.BackgroundColor3 = Color3.fromRGB(70, 68, 79)
                  ToggleImage.Position = UDim2.new(0, 425, 0, 5)
                  ToggleImage.BorderSizePixel = 0
                  ToggleImage.Size = UDim2.new(0, 20, 0, 20)
                  local ToggleImageCorner = Instance.new("UICorner")
                  ToggleImageCorner.Name = "ToggleImageCorner"
                  ToggleImageCorner.CornerRadius = UDim.new(0, 5)
                  ToggleImageCorner.Parent = ToggleImage
      
                  local ToggleImage2 = Instance.new("Frame")
                  ToggleImage2.Name = "ToggleImage2"
                  ToggleImage2.Parent = ToggleImage
                  ToggleImage2.AnchorPoint = Vector2.new(0.5, 0.5)
                  ToggleImage2.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  ToggleImage2.Position = UDim2.new(0, 10, 0, 10)
                  ToggleImage2.Visible = false
      
                  local ToggleImage2Corner = Instance.new("UICorner")
                  ToggleImage2Corner.Name = "ToggleImageCorner"
                  ToggleImage2Corner.CornerRadius = UDim.new(0, 5)
                  ToggleImage2Corner.Parent = ToggleImage2
                  
                  Toggle.MouseEnter:Connect(function()
                      TweenService:Create(
                          ToggleLabel,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(255,0,0)}
                      ):Play()
                  end)
      
                  Toggle.MouseLeave:Connect(function()
                      TweenService:Create(
                          ToggleLabel,
                          TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                          {TextColor3 = Color3.fromRGB(225, 225, 225)}
                      ):Play()
                  end)
                  if config == nil then config = false end
                  local toggled = config or false
                  Toggle.MouseButton1Click:Connect(function()
                      if toggled == false then
                          toggled = true
                          ToggleImage2.Visible = true
                          ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
                      else
                          toggled = false
                          ToggleImage2:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.1,true)
                          wait(0.1)
                          ToggleImage2.Visible = false
                      end
                      callback(toggled)
                  end)
                  
                  if config == true then
                      ToggleImage2.Visible = true
                      ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
                      toggled = true
                      callback(toggled)
                  end
              end
      
              function main:AddTextbox(text,holder,disappear,callback)
                  local Textboxx = Instance.new("Frame")
                  local TextboxxCorner = Instance.new("UICorner")
                  local TextboxTitle = Instance.new("TextLabel")
                  local Textbox = Instance.new("TextBox")
                  local TextboxCorner = Instance.new("UICorner")
      
                  Textboxx.Name = "Textboxx"
                  Textboxx.Parent = ScrollTab
                  Textboxx.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                  Textboxx.Size = UDim2.new(0, 455, 0, 30)
      
                  TextboxxCorner.CornerRadius = UDim.new(0, 5)
                  TextboxxCorner.Name = "TextboxxCorner"
                  TextboxxCorner.Parent = Textboxx
      
                  TextboxTitle.Name = "TextboxTitle"
                  TextboxTitle.Parent = Textboxx
                  TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  TextboxTitle.BackgroundTransparency = 1.000
                  TextboxTitle.Position = UDim2.new(0, 15, 0, 0)
                  TextboxTitle.Size = UDim2.new(0, 300, 0, 30)
                  TextboxTitle.Font = Enum.Font.Gotham
                  TextboxTitle.Text = text
                  TextboxTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                  TextboxTitle.TextSize = 11.000
                  TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
      
                  Textbox.Name = "Textbox"
                  Textbox.Parent = Textboxx
                  Textbox.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
                  Textbox.Position = UDim2.new(0, 310, 0, 5)
                  Textbox.Size = UDim2.new(0, 140, 0, 20)
                  Textbox.Font = Enum.Font.Gotham
                  Textbox.Text = holder
                  Textbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Textbox.TextSize = 11.000
      
                  Textbox.FocusLost:Connect(function()
                      if #Textbox.Text > 0 then
                          callback(Textbox.Text)
                      end
                      if disappear then
                          Textbox.Text = ""
                      else
                          Textbox.Text = holder
                      end
                  end)
      
                  TextboxCorner.Name = "TextboxCorner"
                  TextboxCorner.CornerRadius = UDim.new(0, 5)
                  TextboxCorner.Parent = Textbox
              end
      
              function main:AddDropdown(text,table,callback)
                  local Dropdown = Instance.new("Frame")
                  local UICorner = Instance.new("UICorner")
                  local DropButton = Instance.new("TextButton")
                  local Droptitle = Instance.new("TextLabel")
                  local DropScroll = Instance.new("ScrollingFrame")
                  local DropdownList = Instance.new("UIListLayout")
                  local DropdownPadding = Instance.new("UIPadding")
                  local DropImage = Instance.new("ImageLabel")
                  
                  Dropdown.Name = "Dropdown"
                  Dropdown.Parent = ScrollTab
                  Dropdown.Active = true
                  Dropdown.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                  Dropdown.ClipsDescendants = true
                  Dropdown.Size = UDim2.new(0, 455, 0, 30)
                  
                  UICorner.CornerRadius = UDim.new(0, 5)
                  UICorner.Parent = Dropdown
                  
                  DropButton.Name = "DropButton"
                  DropButton.Parent = Dropdown
                  DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  DropButton.BackgroundTransparency = 1.000
                  DropButton.Size = UDim2.new(0, 455, 0, 30)
                  DropButton.Font = Enum.Font.SourceSans
                  DropButton.Text = ""
                  DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                  DropButton.TextSize = 14.000
                  
                  Droptitle.Name = "Droptitle"
                  Droptitle.Parent = Dropdown
                  Droptitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  Droptitle.BackgroundTransparency = 1.000
                  Droptitle.Position = UDim2.new(0.0281690136, 0, 0, 0)
                  Droptitle.Size = UDim2.new(0, 410, 0, 30)
                  Droptitle.Font = Enum.Font.Gotham
                  Droptitle.Text = text.." : "
                  Droptitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Droptitle.TextSize = 11.000
                  Droptitle.TextXAlignment = Enum.TextXAlignment.Left
      
                  DropImage.Name = "DropImage"
                  DropImage.Parent = Dropdown
                  DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  DropImage.BackgroundTransparency = 1.000
                  DropImage.Position = UDim2.new(0, 425, 0, 5)
                  DropImage.Rotation = 0
                  DropImage.Size = UDim2.new(0, 20, 0, 20)
                  DropImage.Image = "rbxassetid://5012539403"
                  
                  DropScroll.Name = "DropScroll"
                  DropScroll.Parent = Droptitle
                  DropScroll.Active = true
                  DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  DropScroll.BackgroundTransparency = 1.000
                  DropScroll.BorderSizePixel = 0
                  DropScroll.Position = UDim2.new(-0.0317460336, 0, 1, 0)
                  DropScroll.Size = UDim2.new(0, 455, 0, 70)
                  DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
                  DropScroll.ScrollBarThickness = 2
                  
                  DropdownList.Name = "DropdownList"
                  DropdownList.Parent = DropScroll
                  DropdownList.SortOrder = Enum.SortOrder.LayoutOrder
                  DropdownList.Padding = UDim.new(0, 5)
                  
                  DropdownPadding.Name = "DropdownPadding"
                  DropdownPadding.Parent = DropScroll
                  DropdownPadding.PaddingTop = UDim.new(0, 5)
      
                  local isdropping = false
      
                  for i,v in next,table do
                      local DropButton2 = Instance.new("TextButton")
      
                      DropButton2.Name = "DropButton2"
                      DropButton2.Parent = DropScroll
                      DropButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                      DropButton2.BackgroundTransparency = 1.000
                      DropButton2.Size = UDim2.new(0, 455, 0, 30)
                      DropButton2.AutoButtonColor = false
                      DropButton2.Font = Enum.Font.Gotham
                      DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
                      DropButton2.TextSize = 11.000
                      DropButton2.Text = tostring(v)
      
                      DropButton2.MouseEnter:Connect(function()
                          TweenService:Create(
                              DropButton2,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {TextColor3 = Color3.fromRGB(255,0,0)}
                          ):Play()
                      end)
                      DropButton2.MouseLeave:Connect(function()
                          TweenService:Create(
                              DropButton2,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {TextColor3 = Color3.fromRGB(225, 225, 225)}
                          ):Play()
                      end)
      
                      DropButton2.MouseButton1Click:Connect(function()
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 30)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                              {Rotation = 0}
                          ):Play()
                          Droptitle.Text =  text.." : "..tostring(v)
                          callback(v)
                          isdropping = not isdropping
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      end)
                  end
      
                  DropButton.MouseButton1Click:Connect(function()
                      if isdropping == false then
                          isdropping = true
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 100)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Rotation = -180}
                          ):Play()
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      else
                          isdropping = false
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 30)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Rotation = 0}
                          ):Play()
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      end
                  end)
                  DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
      
                  local drop = {}
      
                  function drop:Clear()
                      Droptitle.Text = tostring(text).." :"
                      TweenService:Create(
                          Dropdown,
                          TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                          {Size = UDim2.new(0, 455, 0, 30)} 
                      ):Play()
                      isdropping = false
                      for i, v in next, DropScroll:GetChildren() do
                          if v:IsA("TextButton") then
                              v:Destroy()
                          end
                      end
                  end
                  function drop:Add(t)
                      local DropButton2 = Instance.new("TextButton")
      
                      DropButton2.Name = "DropButton2"
                      DropButton2.Parent = DropScroll
                      DropButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                      DropButton2.BackgroundTransparency = 1.000
                      DropButton2.Size = UDim2.new(0, 455, 0, 30)
                      DropButton2.AutoButtonColor = false
                      DropButton2.Font = Enum.Font.Gotham
                      DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
                      DropButton2.TextSize = 11.000
                      DropButton2.Text = tostring(t)
      
                      DropButton2.MouseButton1Click:Connect(function()
                          TweenService:Create(
                              Dropdown,
                              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                              {Size = UDim2.new(0, 455, 0, 30)}
                          ):Play()
                          TweenService:Create(
                              DropImage,
                              TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                              {Rotation = 0}
                          ):Play()
                          Droptitle.Text =  text.." : "..tostring(t)
                          callback(t)
                          isdropping = not isdropping
                          DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
                      end)
                  end
                  return drop
              end
      
              function main:AddSlider(text,min,max,set,callback)
                  set = (math.clamp(set,min,max))
                  if set > max then set = max end
      
                  local Slider = Instance.new("Frame")
                  local UICorner = Instance.new("UICorner")
                  local SliderTitle = Instance.new("TextLabel")
                  local SliderValue = Instance.new("TextLabel")
                  local SliderButton = Instance.new("TextButton")
                  local Bar1 = Instance.new("Frame")
                  local Bar = Instance.new("Frame")
                  local UICorner_2 = Instance.new("UICorner")
                  local CircleBar = Instance.new("Frame")
                  local UICorner_3 = Instance.new("UICorner")
                  local UICorner_4 = Instance.new("UICorner")
      
                  Slider.Name = "Slider"
                  Slider.Parent = ScrollTab
                  Slider.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
                  Slider.Size = UDim2.new(0, 455, 0, 40)
      
                  UICorner.CornerRadius = UDim.new(0, 5)
                  UICorner.Parent = Slider
      
                  SliderTitle.Name = "SliderTitle"
                  SliderTitle.Parent = Slider
                  SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SliderTitle.BackgroundTransparency = 1.000
                  SliderTitle.Position = UDim2.new(0.0283286124, 0, 0, 0)
                  SliderTitle.Size = UDim2.new(0, 290, 0, 20)
                  SliderTitle.Font = Enum.Font.Gotham
                  SliderTitle.Text = text
                  SliderTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
                  SliderTitle.TextSize = 11.000
                  SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
      
                  SliderValue.Name = "SliderValue"
                  SliderValue.Parent = Slider
                  SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SliderValue.BackgroundTransparency = 1.000
                  SliderValue.Position = UDim2.new(0.887778878, 0, 0, 0)
                  SliderValue.Size = UDim2.new(0, 40, 0, 20)
                  SliderValue.Font = Enum.Font.Gotham
                  SliderValue.Text =  tostring(set and math.floor( (set / max) * (max - min) + min) or 0)
                  SliderValue.TextColor3 = Color3.fromRGB(225, 225, 225)
                  SliderValue.TextSize = 11.000
      
                  SliderButton.Name = "SliderButton"
                  SliderButton.Parent = Slider
                  SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SliderButton.BackgroundTransparency = 1.000
                  SliderButton.Position = UDim2.new(0, 10, 0, 25)
                  SliderButton.Size = UDim2.new(0, 435, 0, 5)
                  SliderButton.AutoButtonColor = false
                  SliderButton.Font = Enum.Font.SourceSans
                  SliderButton.Text = ""
                  SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                  SliderButton.TextSize = 14.000
      
                  Bar1.Name = "Bar1"
                  Bar1.Parent = SliderButton
                  Bar1.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
                  Bar1.Size = UDim2.new(0, 435, 0, 5)
      
                  Bar.Name = "Bar"
                  Bar.Parent = Bar1
                  Bar.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  Bar.Size = UDim2.new(set/max, 0, 0, 5)
      
                  UICorner_2.CornerRadius = UDim.new(0, 100)
                  UICorner_2.Parent = Bar
      
                  CircleBar.Name = "CircleBar"
                  CircleBar.Parent = Bar
                  CircleBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  CircleBar.Position = UDim2.new(1, -2, 0, -2)
                  CircleBar.AnchorPoint = Vector2.new(0, 0.1)
                  CircleBar.Size = UDim2.new(0, 10, 0, 10)
      
                  UICorner_3.CornerRadius = UDim.new(0, 100)
                  UICorner_3.Parent = CircleBar
      
                  UICorner_4.CornerRadius = UDim.new(0, 100)
                  UICorner_4.Parent = Bar1
                  
                  local mouse = game.Players.LocalPlayer:GetMouse()
                  local uis = game:GetService("UserInputService")
      
                  if Value == nil then
                      Value = set
                      pcall(function()
                          callback(Value)
                      end)
                  end
                  
                  SliderButton.MouseButton1Down:Connect(function()
                      Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min)) or 0
                      pcall(function()
                          callback(Value)
                      end)
                      Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                      CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                      moveconnection = mouse.Move:Connect(function()
                          SliderValue.Text = Value
                          Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                          pcall(function()
                              callback(Value)
                          end)
                          Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                          CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                      end)
                      releaseconnection = uis.InputEnded:Connect(function(Mouse)
                          if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                              Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                              pcall(function()
                                  callback(Value)
                              end)
                              Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
                              CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
                              moveconnection:Disconnect()
                              releaseconnection:Disconnect()
                          end
                      end)
                  end)
                  releaseconnection = uis.InputEnded:Connect(function(Mouse)
                      if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                          Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
                          SliderValue.Text = Value
                      end
                  end)
              end
              function main:AddSeperator(text)
                  local Seperator = Instance.new("Frame")
                  local Sep1 = Instance.new("Frame")
                  local SepLabel = Instance.new("TextLabel")
                  local Sep2 = Instance.new("Frame")
      
                  Seperator.Name = "Seperator"
                  Seperator.Parent = ScrollTab
                  Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  Seperator.BackgroundTransparency = 1.000
                  Seperator.ClipsDescendants = true
                  Seperator.Size = UDim2.new(0, 455, 0, 20)
      
                  Sep1.Name = "Sep1"
                  Sep1.Parent = Seperator
                  Sep1.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  Sep1.BorderSizePixel = 0
                  Sep1.Position = UDim2.new(0, 0, 0, 10)
                  Sep1.Size = UDim2.new(0, 150, 0, 1)
      
                  SepLabel.Name = "SepLabel"
                  SepLabel.Parent = Seperator
                  SepLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  SepLabel.BackgroundTransparency = 1.000
                  SepLabel.Position = UDim2.new(0, 95, 0, 0)
                  SepLabel.Size = UDim2.new(0, 255, 0, 20)
                  SepLabel.Font = Enum.Font.Gotham
                  SepLabel.Text = text
                  SepLabel.TextColor3 = Color3.fromRGB(225,225,225)
                  SepLabel.TextSize = 11.000
      
                  Sep2.Name = "Sep2"
                  Sep2.Parent = Seperator
                  Sep2.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  Sep2.BorderSizePixel = 0
                  Sep2.Position = UDim2.new(0, 305, 0, 10)
                  Sep2.Size = UDim2.new(0, 150, 0, 1)
              end
              function main:AddLine()
                  local Line = Instance.new("Frame")
                  local Linee = Instance.new("Frame")
      
                  Line.Name = "Line"
                  Line.Parent = ScrollTab
                  Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  Line.BackgroundTransparency = 1.000
                  Line.ClipsDescendants = true
                  Line.Size = UDim2.new(0, 455, 0, 20)
      
                  Linee.Name = "Linee"
                  Linee.Parent = Line
                  Linee.BackgroundColor3 = Color3.fromRGB(255,0,0)
                  Linee.BorderSizePixel = 0
                  Linee.Position = UDim2.new(0, 0, 0, 10)
                  Linee.Size = UDim2.new(0, 455, 0, 1)
              end
              function main:AddLabel(text)
                  local Label = Instance.new("TextLabel")
                  local PaddingLabel = Instance.new("UIPadding")
                  local labell = {}
          
                  Label.Name = "Label"
                  Label.Parent = ScrollTab
                  Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                  Label.BackgroundTransparency = 1.000
                  Label.Size = UDim2.new(0, 455, 0, 20)
                  Label.Font = Enum.Font.Gotham
                  Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                  Label.TextSize = 11.000
                  Label.Text = text
                  Label.TextXAlignment = Enum.TextXAlignment.Left
      
                  PaddingLabel.PaddingLeft = UDim.new(0,10)
                  PaddingLabel.Parent = Label
                  PaddingLabel.Name = "PaddingLabel"
          
                  function labell:Set(newtext)
                      Label.Text = newtext
                  end
      
                  return labell
              end
              
              return main
          end
          return uitab
      end
      
      local ScreenGui = Instance.new("ScreenGui")
      local Toggle = Instance.new("TextButton")
      
      ScreenGui.Name = "ScreenGui"
      ScreenGui.Parent = game.CoreGui
      
      Toggle.Name = "Toggle"
      Toggle.Parent = ScreenGui
      Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
      Toggle.Position = UDim2.new(0.11, 0, 0.2, 0)
      Toggle.Size = UDim2.new(0, 50, 0, 50)
      Toggle.Font = Enum.Font.Code
      Toggle.Text = "Sx"
      Toggle.TextColor3 = Color3.fromRGB(0, 48, 255)
      Toggle.TextScaled = true
      Toggle.MouseButton1Down:connect(function()
          game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
          game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
      end)
      
      if game.PlaceId == 4520749081 then
         First_Sea = true
      elseif game.PlaceId == 6381829480 then
         Second_Sea = true
      elseif game.PlaceId == 5931540094 then
         Dungeon_Sea = true
      end
      function CheckQuest()
          QUEST = {}
          LVLREAL = {}
          local MyLevel = game.Players.LocalPlayer.PlayerStats.lvl.Value
          for i,v in pairs(game:GetService("Workspace").AntiTPNPC:GetChildren()) do 
              if string.find(v.Name,"QuestLvl") then
                  table.insert(QUEST,v.Name)
              end
          end
          for i,v in pairs(game:GetService("ReplicatedStorage").MAP:GetChildren()) do 
              if string.find(v.Name,"QuestLvl") then
                  table.insert(QUEST,v.Name)
              end
          end
          for i,v in pairs(QUEST) do
              values = v:split("QuestLvl")
              LVL = values[2]
              if MyLevel >= tonumber(LVL) then
                  table.insert(LVLREAL,LVL)
              end
          end
          LevelQuest = math.max(unpack(LVLREAL))
      end
      
      function fly()
          local mouse=game.Players.LocalPlayer:GetMouse''
          localplayer=game.Players.LocalPlayer
          game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
          local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
          local speedSET=25
          local keys={a=false,d=false,w=false,s=false}
          local e1
          local e2
          local function start()
              local pos = Instance.new("BodyPosition",torso)
              local gyro = Instance.new("BodyGyro",torso)
              pos.Name="EPIXPOS"
              pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
              pos.position = torso.Position
              gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
              gyro.CFrame = torso.CFrame
              repeat
                      wait()
                      localplayer.Character.Humanoid.PlatformStand=true
                      local new=gyro.CFrame - gyro.CFrame.p + pos.position
                      if not keys.w and not keys.s and not keys.a and not keys.d then
                      speed=1
                      end
                      if keys.w then
                      new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                      speed=speed+speedSET
                      end
                      if keys.s then
                      new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                      speed=speed+speedSET
                      end
                      if keys.d then
                      new = new * CFrame.new(speed,0,0)
                      speed=speed+speedSET
                      end
                      if keys.a then
                      new = new * CFrame.new(-speed,0,0)
                      speed=speed+speedSET
                      end
                      if speed>speedSET then
                      speed=speedSET
                      end
                      pos.position=new.p
                      if keys.w then
                      gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                      elseif keys.s then
                      gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                      else
                      gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                      end
              until not Fly
              if gyro then 
                      gyro:Destroy() 
              end
              if pos then 
                      pos:Destroy() 
              end
              flying=false
              localplayer.Character.Humanoid.PlatformStand=false
              speed=0
          end
          e1=mouse.KeyDown:connect(function(key)
              if not torso or not torso.Parent then 
                      flying=false e1:disconnect() e2:disconnect() return 
              end
              if key=="w" then
                  keys.w=true
              elseif key=="s" then
                  keys.s=true
              elseif key=="a" then
                  keys.a=true
              elseif key=="d" then
                  keys.d=true
              end
          end)
          e2=mouse.KeyUp:connect(function(key)
              if key=="w" then
                  keys.w=false
              elseif key=="s" then
                  keys.s=false
              elseif key=="a" then
                  keys.a=false
              elseif key=="d" then
                  keys.d=false
              end
          end)
          start()
      end
      
      function isnil(thing)
          return (thing == nil)
      end
      local function round(n)
          return math.floor(tonumber(n) + 0.5)
      end
      Number = math.random(1, 1000000)
      function UpdateEspPlayer()
          if ESPPlayer then
              pcall(function()
                  for i,v in pairs(game.Players:GetPlayers()) do
                      if not isnil(v.Character) then
                          if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                              local BillboardGui = Instance.new("BillboardGui")
                              local ESP = Instance.new("TextLabel")
                              local HealthESP = Instance.new("TextLabel")
                              BillboardGui.Parent = v.Character.Head
                              BillboardGui.Name = 'NameEsp'..v.Name
                              BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                              BillboardGui.Size = UDim2.new(1,200,1,30)
                              BillboardGui.Adornee = v.Character.Head
                              BillboardGui.AlwaysOnTop = true
                              ESP.Name = "ESP"
                              ESP.Parent = BillboardGui
                              ESP.TextTransparency = 0
                              ESP.BackgroundTransparency = 1
                              ESP.Size = UDim2.new(0, 200, 0, 30)
                              ESP.Position = UDim2.new(0,25,0,0)
                              ESP.Font = Enum.Font.Gotham
                              ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
                              ESP.TextColor3 = Color3.new(0, 255, 255)
                              ESP.TextSize = 14
                              ESP.TextStrokeTransparency = 0.500
                              ESP.TextWrapped = true
                              HealthESP.Name = "HealthESP"
                              HealthESP.Parent = ESP
                              HealthESP.TextTransparency = 0
                              HealthESP.BackgroundTransparency = 1
                              HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
                              HealthESP.Size = UDim2.new(0, 200, 0, 30)
                              HealthESP.Font = Enum.Font.Gotham
                              HealthESP.TextColor3 = Color3.fromRGB(80, 255, 245)
                              HealthESP.TextSize = 14
                              HealthESP.TextStrokeTransparency = 0.500
                              HealthESP.TextWrapped = true
                              HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                          else
                              v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                              v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                              v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
                              v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
                          end
                      end
                  end
              end)
          else
              for i,v in pairs(game.Players:GetPlayers()) do
                  if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                      pcall(function()
                          v.Character.Head:FindFirstChild('NameEsp'..v.Name):Destroy()
                      end)
                  end
              end
          end     
      end
      
      function UpdateBfEsp() 
          for i,v in pairs(game.Workspace:GetChildren()) do
              pcall(function()
                  if DevilFruitESP then
                      if string.find(v.Name, "Fruit") then   
                          if not v.Handle:FindFirstChild('NameEsp'..Number) then
                              local bill = Instance.new('BillboardGui',v.Handle)
                              bill.Name = 'NameEsp'..Number
                              bill.ExtentsOffset = Vector3.new(0, 1, 0)
                              bill.Size = UDim2.new(1,200,1,30)
                              bill.Adornee = v.Handle
                              bill.AlwaysOnTop = true
                              local name = Instance.new('TextLabel',bill)
                              name.Font = "GothamBold"
                              name.FontSize = "Size14"
                              name.TextWrapped = true
                              name.Size = UDim2.new(1,0,1,0)
                              name.TextYAlignment = 'Top'
                              name.BackgroundTransparency = 1
                              name.TextStrokeTransparency = 0.5
                              name.TextColor3 = Color3.fromRGB(255, 0, 0)
                              name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                          else
                              v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                          end
                      end
                  else
                      if v.Handle:FindFirstChild('NameEsp'..Number) then
                          v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                      end
                  end
              end)
          end
      end
      
      function Hop()
          local PlaceID = game.PlaceId
          local AllIDs = {}
          local foundAnything = ""
          local actualHour = os.date("!*t").hour
          local Deleted = false
          function TPReturner()
              local Site;
              if foundAnything == "" then
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
              else
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
              end
              local ID = ""
              if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                  foundAnything = Site.nextPageCursor
              end
              local num = 0;
              for i,v in pairs(Site.data) do
                  local Possible = true
                  ID = tostring(v.id)
                  if tonumber(v.maxPlayers) > tonumber(v.playing) then
                      for _,Existing in pairs(AllIDs) do
                          if num ~= 0 then
                              if ID == tostring(Existing) then
                                  Possible = false
                              end
                          else
                              if tonumber(actualHour) ~= tonumber(Existing) then
                                  local delFile = pcall(function()
                                      AllIDs = {}
                                      table.insert(AllIDs, actualHour)
                                  end)
                              end
                          end
                          num = num + 1
                      end
                      if Possible == true then
                          table.insert(AllIDs, ID)
                          wait()
                          pcall(function()
                              wait()
                              game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                          end)
                          wait(4)
                      end
                  end
              end
          end
          function Teleport() 
              while wait() do
                  pcall(function()
                      TPReturner()
                      if foundAnything ~= "" then
                          TPReturner()
                      end
                  end)
              end
          end
          Teleport()
      end
      
      spawn(function()
          game:GetService("RunService").RenderStepped:Connect(function()
              if _G.AutoGhostShip or _G.AutoSantaEvents or _G.AutoSecondSea or _G.AutoXmas or _G.AutoSeaking or _G.AutoBigMomBlade or _G.AutoBigMomBoss or _G.AutoKaido or _G.AutoSaber or _G.AutoKillply or _G.AutoFarm or _G.AutoBisento or _G.AutoFarmDungeon or _G.AutoKillply or _G.AutoEnma then
                  if not game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                      local Part = Instance.new("Part")
                      Part.Name = "TaiFoot"
                      Part.Parent = game.Workspace
                      Part.Anchored = true
                      Part.Transparency = 1
                      Part.Size = Vector3.new(30,0.5,30)
                  elseif game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                      game.Workspace["TaiFoot"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                  end
              else
                  if game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                      game:GetService("Workspace"):FindFirstChild("TaiFoot"):Destroy()
                  end
              end
          end)
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoGhostShip or _G.AutoSantaEvents or _G.AutoSecondSea or _G.AutoXmas or _G.AutoSeaking or _G.AutoBigMomBlade or _G.AutoBigMomBoss or _G.AutoKaido or _G.AutoSaber or _G.AutoKillply or _G.AutoFarm or _G.AutoBisento or _G.AutoFarmDungeon or _G.AutoKillply or _G.AutoEnma then
                  pcall(function()
                      game:GetService("Players").LocalPlayer.Character.Services.Client.KenEvent:InvokeServer(true)
                  end)
              end
          end
      end)
      
      spawn(function()
          pcall(function()
              game:GetService("RunService").Stepped:Connect(function()
                  if _G.AutoSantaEvents or _G.AutoSecondSea or _G.AutoXmas or _G.AutoSeaking or _G.AutoBigMomBlade or _G.AutoBigMomBoss or _G.AutoKaido or _G.AutoSaber or _G.AutoKillply or _G.AutoFarm or _G.AutoBisento or _G.AutoFarmDungeon or _G.AutoKillply or _G.AutoEnma or _G.NoClip then
                      for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                          if v:IsA("BasePart") then
                              v.CanCollide = false    
                          end
                      end
                  end
              end)
          end)
      end)
      
      function UseSkill(skill)
          Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
          game:GetService("VirtualInputManager"):SendKeyEvent(true,skill,false,game)
          task.wait()
          game:GetService("VirtualInputManager"):SendKeyEvent(false,skill,false,game)
      end
      
      function TP(pos)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
      end
      
      game:GetService("Players").LocalPlayer.Idled:connect(function()
          game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          wait(1)
          game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
      end)
      
      function EquipWeapon(ToolSe)
          if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
              getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
              wait()
              game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
          end
      end
      
      function Click()
          game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
          game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
      end
      
      function StopNoClip(Config)
          if Config == false then
              if game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                  game:GetService("Workspace"):FindFirstChild("TaiFoot"):Destroy()
              end
          end
      end
      
      function AutoHaki()
          pcall(function()
              if game.Players.LocalPlayer.Character.Haki.Value ~= 1 then
                  game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
                  wait(1.5)
              end
          end)
      end
      --
      local RenUi = library:AddWindow("SAMU HUB | King Legacy",Enum.KeyCode.RightControl)
      --
      local Main = RenUi:AddTab("Main","6026568198")
      local Stats = RenUi:AddTab("Stats","7040410130")
      local Combat = RenUi:AddTab("Combat","7251993295")
      local Teleport = RenUi:AddTab("Teleport","7044226690")
      local Dungeon = RenUi:AddTab("Dungeon","7044284832")
      local Misc = RenUi:AddTab("Misc","6034900727")
      local Settings = RenUi:AddTab("Settings","6034509993")
      --
      Main:AddSeperator("Main")
      
      Time = Main:AddLabel("Server Time")
      
      function UpdateTime()
          local GameTime = math.floor(workspace.DistributedGameTime+0.5)
          local Hour = math.floor(GameTime/(60^2))%24
          local Minute = math.floor(GameTime/(60^1))%60
          local Second = math.floor(GameTime/(60^0))%60
          Time:Set("Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second)
      end
      
  
      
      
      Main:AddToggle("Auto Farm Level",_G.AutoFarm,function(value)
          _G.AutoFarm = value
          StopNoClip(_G.AutoFarm)
      end)
      
      local LocalPlayer = game:GetService("Players").LocalPlayer
      local VirtualUser = game:GetService('VirtualUser')
      spawn(function()
          while wait() do
              if _G.AutoFarm then
                  pcall(function()
                      CheckQuest()
                      if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
                          if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..LevelQuest) then
                              TP(game:GetService("ReplicatedStorage").MAP["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                          else 
                              TP(game:GetService("Workspace").AntiTPNPC["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                          end
                          Click()
                          wait(.5)
                          for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                              if v.Name == "Dialogue" then
                                  v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                  v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                  v.Accept.ImageTransparency = 1
                                  game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer()
                              end
                          end
                      elseif game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
                          Mon = string.sub(game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.QuestCount.Text,5,#game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.QuestCount.Text)
                          if game:GetService("Workspace").Monster.Mon:FindFirstChild(Mon) then
                              for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                                  if v.Name == Mon then
                                      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                          repeat task.wait()
                                              AutoHaki()
                                              EquipWeapon(_G.SelectWeapon)
                                              VirtualUser:CaptureController()
                                              VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                              TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                              if _G.AutoSkill then 
                                                  UseSkill("Z")
                                                  UseSkill("X")
                                                  UseSkill("C")
                                                  UseSkill("V")
                                              end
                                          until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false
                                      else
                                          UseSkill("E")
                                          if Second_Sea and game.Players.LocalPlayer.PlayerStats.lvl.Value >= 3275 then
                                              TP(CFrame.new(30272.3203125, 65.4236068725586, 93207.0234375))
                                          else
                                              if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..LevelQuest) then
                                                  TP(game:GetService("ReplicatedStorage").MAP["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                              else 
                                                  TP(game:GetService("Workspace").AntiTPNPC["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                              end
                                          end
                                      end
                                  end
                              end
                          elseif game:GetService("Workspace").Monster.Boss:FindFirstChild(Mon) then
                              for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                  if v.Name == Mon then
                                      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                          repeat task.wait()
                                              AutoHaki()
                                              EquipWeapon(_G.SelectWeapon)
                                              VirtualUser:CaptureController()
                                              VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                              TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                              if _G.AutoSkill then 
                                                  UseSkill("Z")
                                                  UseSkill("X")
                                                  UseSkill("C")
                                                  UseSkill("V")
                                              end
                                          until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false
                                      else
                                          UseSkill("E")
                                          if Second_Sea and game.Players.LocalPlayer.PlayerStats.lvl.Value >= 3275 then
                                              TP(CFrame.new(30272.3203125, 65.4236068725586, 93207.0234375))
                                          else
                                              if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..LevelQuest) then
                                                  TP(game:GetService("ReplicatedStorage").MAP["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                              else 
                                                  TP(game:GetService("Workspace").AntiTPNPC["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                              end
                                          end
                                      end
                                  end
                              end
                          else 
                              UseSkill("E")
                              if Second_Sea and game.Players.LocalPlayer.PlayerStats.lvl.Value >= 3275 then
                                  TP(CFrame.new(30272.3203125, 65.4236068725586, 93207.0234375))
                              else
                                  if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..LevelQuest) then
                                      TP(game:GetService("ReplicatedStorage").MAP["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                  else 
                                      TP(game:GetService("Workspace").AntiTPNPC["QuestLvl"..LevelQuest].HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                  end
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
      Main:AddToggle("Auto Second Sea",_G.AutoSecondSea,function(value)
          _G.AutoSecondSea = value
      end)
      
      spawn(function()
          while wait() do
              pcall(function()
                  if _G.AutoSecondSea and First_Sea then
                      if game.Players.LocalPlayer.PlayerStats.IsSecondSea == Yes then
                          TP(CFrame.new(1798.5653076171875, 16.172266006469727, -1475.4083251953125))
                          Click()
                          wait(.5)
                          for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                              if v.Name == "Dialogue" then
                                  v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                  v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                  v.Accept.ImageTransparency = 1
                                  game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer()
                              end
                          end
                      else
                          if game.Players.LocalPlayer.PlayerStats.lvl.Value >= 1500 then
                              _G.AutoFarm = false
                              if game.Players.LocalPlayer.Character:FindFirstChild("Map") or game.Players.LocalPlayer.Backpack:FindFirstChild("Map") then
                                  TP(CFrame.new(6806.78662109375, 211.32806396484375, 1077.6700439453125))
                                  Click()
                                  wait(.5)
                                  for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                      if v.Name == "Dialogue" then
                                          v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                          v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                          v.Accept.ImageTransparency = 1
                                          game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer()
                                      end
                                  end
                              else
                                  if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
                                      TP(CFrame.new(6806.78662109375, 211.32806396484375, 1077.6700439453125))
                                      Click()
                                      wait(.5)
                                      for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                          if v.Name == "Dialogue" then
                                              v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                              v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                              v.Accept.ImageTransparency = 1
                                              game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer()
                                          end
                                      end
                                  else
                                      if game:GetService("Workspace").Monster.Boss:FindFirstChild("Seasoned Fishman [Lv. 2200]") then
                                          for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                              if v.Name == "Seasoned Fishman [Lv. 2200]" and v.Humanoid.Health > 0 then
                                                  repeat task.wait()
                                                      AutoHaki()
                                                      EquipWeapon(_G.SelectWeapon)
                                                      TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                      if _G.AutoSkill then 
                                                          UseSkill("Z")
                                                          UseSkill("X")
                                                          UseSkill("C")
                                                          UseSkill("V")
                                                      end
                                                      VirtualUser:CaptureController()
                                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                                  until v.Humanoid.Health <= 0 or not _G.AutoSecondSea or game.Players.LocalPlayer.Character:FindFirstChild("Map") or game.Players.LocalPlayer.Backpack:FindFirstChild("Map")
                                              end
                                          end
                                      else
                                          if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Seasoned Fishman [Lv. 2200]") then
                                              TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Seasoned Fishman [Lv. 2200]").HumanoidRootPart.CFrame * MethodFarm)
                                          end
                                      end
                                  end
                              end
                          end
                      end
                  end
              end)
          end
      end)
      
      
      Main:AddToggle("Auto Sea King",_G.AutoSeaking,function(value)
          _G.AutoSeaking = value
          StopNoClip(_G.AutoSeaking)
      end)
      
      Main:AddToggle("Auto Sea King Hop",_G.AutoSeaking_Hop,function(value)
          _G.AutoSeaking_Hop = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoSeaking then
                  pcall(function()
                      for i,v in pairs(game:GetService("Workspace").SeaMonster:GetChildren()) do
                          if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") and v.Humanoid.Health > 0 then
                              if v.Name == "SeaKing" then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) - Vector3.new(0,25,0))
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoSeaking or not game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing")                       
                              end
                          else
                              if game:GetService("Workspace").Island:FindFirstChild("Legacy Island1") then
                                  TP(game:GetService("Workspace").Island:FindFirstChild("Legacy Island1").ChestSpawner.CFrame * CFrame.new(0,0,2))
                              elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island2") then
                                  TP(game:GetService("Workspace").Island:FindFirstChild("Legacy Island2").ChestSpawner.CFrame * CFrame.new(0,0,2))
                              elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island3") then
                                  TP(game:GetService("Workspace").Island:FindFirstChild("Legacy Island3").ChestSpawner.CFrame * CFrame.new(0,0,2))
                              elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island4") then
                                  TP(game:GetService("Workspace").Island:FindFirstChild("Legacy Island4").ChestSpawner.CFrame * CFrame.new(0,0,2))
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoSeaking and _G.AutoSeaking_Hop then
                  pcall(function()
                      if not game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
                          wait(3)
                          Hop()
                      end
                  end)
              end
          end
      end)
      
    
      
      Main:AddToggle("Auto Saber",_G.AutoSaber,function(value)
          _G.AutoSaber = value
          StopNoClip(_G.AutoSaber)
      end)
      
      Main:AddToggle("Auto Saber Hop",_G.AutoSaber_Hop,function(value)
          _G.AutoSaber_Hop = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoSaber then
                  pcall(function()
                      if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
                          for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                              if v.Name == "Expert Swordman [Lv. 3000]" and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoSaber
                              end
                          end
                      else
                          if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Expert Swordman [Lv. 3000]") then
                              TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Expert Swordman [Lv. 3000]").HumanoidRootPart.CFrame * MethodFarm)
                          else
                              if _G.AutoSaber_Hop then
                                  Hop()
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
    
      
      Main:AddToggle("Auto Xmas",_G.AutoXmas,function(value)
          _G.AutoXmas = value
          StopNoClip(_G.AutoXmas)
      end)
      
      Main:AddToggle("Auto Xmas Hop",_G.AutoXmas_Hop,function(value)
          _G.AutoXmas_Hop = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoXmas then
                  pcall(function()
                      if game:GetService("Workspace").Monster.Boss:FindFirstChild("Santa [Lv. 5000]") then
                          for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                              if v.Name == "Santa [Lv. 5000]" and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoXmas
                              end
                          end
                      else
                          if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Santa [Lv. 5000]") then
                              TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Santa [Lv. 5000]").HumanoidRootPart.CFrame * MethodFarm)
                          else
                              if _G.AutoXmas_Hop then
                                  Hop()
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
    
      
      Main:AddToggle("Auto Santa Events",_G.AutoSantaEvents,function(value)
          _G.AutoSantaEvents = value
          StopNoClip(_G.AutoSantaEvents)
      end)
      
      Main:AddToggle("Auto Santa Events Hop",_G.AutoSantaEvents_Hop,function(value)
          _G.AutoSantaEvents_Hop = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoSantaEvents then
                  pcall(function()
                      if game:GetService("Workspace").Monster.Boss:FindFirstChild("Kris Kringle [Lv. 10000]") then
                          for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                              if v.Name == "Kris Kringle [Lv. 10000]" and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoSantaEvents
                              end
                          end
                      else
                          if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Kris Kringle [Lv. 10000]") then
                              TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Kris Kringle [Lv. 10000]").HumanoidRootPart.CFrame * MethodFarm)
                          else
                              if game.Players.LocalPlayer.Character:FindFirstChild("CandySanta") or game.Players.LocalPlayer.Backpack:FindFirstChild("CandySanta") then
                                  EquipWeapon("CandySanta")
                                  TP(CFrame.new(11059.3721, 60.9907608, 6062.66211, -0.545285046, -9.39939824e-08, -0.838250697, -6.01143739e-08, 1, -7.30264986e-08, 0.838250697, 1.0570659e-08, -0.545285046))
                              else
                                  if _G.AutoSantaEvents_Hop then
                                      Hop()
                                  end
                              end
                          end
                      end
                  end)
              end
          end
      end)
      --
   
      
      Main:AddToggle("Auto Ghost Ship",_G.AutoGhostShip,function(value)
          _G.AutoGhostShip = value
          StopNoClip(_G.AutoGhostShip)
      end)
      
      Main:AddToggle("Auto Ghost Ship Hop",_G.AutoGhostShip_Hop,function(value)
          _G.AutoGhostShip_Hop = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoGhostShip then
                  pcall(function()
                      if game:GetService("Workspace").GhostMonster:FindFirstChild("Ghost Ship") then
                          for i,v in pairs(game:GetService("Workspace"):FindFirstChild("GhostMonster"):GetChildren()) do
                              if v.Name == "Ghost Ship" and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoGhostShip or not game:GetService("Workspace").GhostMonster:FindFirstChild("Ghost Ship")
                              end
                          end
                      else
                          if game:GetService("Workspace"):FindFirstChild("Chest1") then
                              TP(game:GetService("Workspace"):FindFirstChild("Chest1").HumanoidRootPart.CFrame)
                          elseif game:GetService("Workspace"):FindFirstChild("Chest2") then
                              TP(game:GetService("Workspace"):FindFirstChild("Chest2").HumanoidRootPart.CFrame)
                          elseif game:GetService("Workspace"):FindFirstChild("Chest3") then
                              TP(game:GetService("Workspace"):FindFirstChild("Chest3").HumanoidRootPart.CFrame)
                          else
                              if _G.AutoGhostShip_Hop then
                                  Hop()
                              end
                          end
                      end
                  end)
              end
          end
      end)
    
      
      Main:AddToggle("Auto Enma",_G.AutoEnma,function(value)
          _G.AutoEnma = value
          StopNoClip(_G.AutoEnma)
      end)
      
      Main:AddToggle("Auto Enma Hop",_G.AutoEnma_Hop,function(value)
          _G.AutoEnma_Hop = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoEnma then
                  pcall(function()
                      if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
                          for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                              if v.Name == "King Samurai [Lv. 3500]" and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoEnma
                              end
                          end
                      else
                          if game:GetService("ReplicatedStorage").MOB:FindFirstChild("King Samurai [Lv. 3500]") then
                              TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("King Samurai [Lv. 3500]").HumanoidRootPart.CFrame * MethodFarm)
                          else
                              if _G.AutoEnma_Hop then
                                  Hop()
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
    
      
      Main:AddToggle("Auto Big Mom Boss",_G.AutoBigMomBoss,function(value)
          _G.AutoBigMomBoss = value
          StopNoClip(_G.AutoBigMomBoss)
      end)
      
      Main:AddToggle("Auto Big Mom Boss Hop",_G.AutoBigMomBoss_Hop,function(value)
          _G.AutoBigMomBoss_Hop = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoBigMomBoss then
                  pcall(function()
                      if game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv.7500]") then
                          for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                              if v.Name == "Ms. Mother [Lv.7500]" and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoBigMomBoss
                              end
                          end
                      else
                          if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Ms. Mother [Lv.7500]") then
                              TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Ms. Mother [Lv.7500]").HumanoidRootPart.CFrame * MethodFarm)
                          else 
                              if _G.AutoBigMomBoss_Hop then
                                  Hop()
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
  
      
      Main:AddToggle("Auto Big Mom Blade",_G.AutoBigMomBlade,function(value)
          _G.AutoBigMomBlade = value
          StopNoClip(_G.AutoBigMomBlade)
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoBigMomBlade then
                  pcall(function()
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Gem") or game.Players.LocalPlayer.Character:FindFirstChild("Gem") then
                          EquipWeapon("Gem")
                          TP(game:GetService("Workspace").Island["K - Zombie Island"].SummonAltar.Handle.CFrame)
                      elseif game:GetService("Workspace").Monster.Boss:FindFirstChild("Monster [Lv. 2500]") then
                          if game:GetService("Workspace").Monster.Boss:FindFirstChild("Monster [Lv. 2500]") then
                              for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                  if v.Name == "Monster [Lv. 2500]" and v.Humanoid.Health > 0 then
                                      repeat task.wait()
                                          AutoHaki()
                                          EquipWeapon(_G.SelectWeapon)
                                          TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                          if _G.AutoSkill then 
                                              UseSkill("Z")
                                              UseSkill("X")
                                              UseSkill("C")
                                              UseSkill("V")
                                          end
                                          VirtualUser:CaptureController()
                                          VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                      until _G.AutoBigMomBlade == false or v.Humanoid.Health <= 0
                                  end
                              end
                          else
                              if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Monster [Lv. 2500]") then
                                  TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Monster [Lv. 2500]").HumanoidRootPart.CFrame * MethodFarm)
                              end
                          end
                      elseif game:GetService("Workspace").Monster.Boss:FindFirstChild("Shadow Master [Lv. 1600]") then
                          if game:GetService("Workspace").Monster.Boss:FindFirstChild("Shadow Master [Lv. 1600]") then
                              for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                  if v.Name == "Shadow Master [Lv. 1600]" and v.Humanoid.Health > 0 then
                                      repeat task.wait()
                                          AutoHaki()
                                          EquipWeapon(_G.SelectWeapon)
                                          TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                          if _G.AutoSkill then 
                                              UseSkill("Z")
                                              UseSkill("X")
                                              UseSkill("C")
                                              UseSkill("V")
                                          end
                                          VirtualUser:CaptureController()
                                          VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                      until _G.AutoBigMomBlade == false or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Backpack:FindFirstChild("Gem") or game.Players.LocalPlayer.Character:FindFirstChild("Gem")
                                  end
                              end
                          else
                              if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Shadow Master [Lv. 1600]") then
                                  TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Shadow Master [Lv. 1600]").HumanoidRootPart.CFrame * MethodFarm)
                              end
                          end
                      else
                          TP(CFrame.new(1452.2967529297, 39.12340927124, 6998.6513671875))
                      end
                  end)
              end
          end
      end)
      
      Main:AddToggle("Auto Bisento",_G.AutoBisento,function(value)
          _G.AutoBisento = value
          StopNoClip(_G.AutoBisento)
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoBisento then
                  pcall(function()
                      if game:GetService("Workspace").Monster.Boss:FindFirstChild("Quake Woman [Lv. 1925]") then
                          for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                              if v.Name == "Quake Woman [Lv. 1925]" and v.Humanoid.Health > 0 then
                                  repeat task.wait()
                                      AutoHaki()
                                      EquipWeapon(_G.SelectWeapon)
                                      TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                      if _G.AutoSkill then 
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      end
                                      VirtualUser:CaptureController()
                                      VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                  until v.Humanoid.Health <= 0 or not _G.AutoBisento
                              end
                          end
                      else
                          if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Quake Woman [Lv. 1925]") then
                              TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Quake Woman [Lv. 1925]").HumanoidRootPart.CFrame * MethodFarm)
                          end
                      end
                  end)
              end
          end
      end)
      
      Main:AddToggle("Auto Kaido",_G.AutoKaido,function(value)
          _G.AutoKaido = value
          StopNoClip(_G.AutoKaido)
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoKaido then
                  pcall(function()
                      if game.Players.LocalPlayer.Backpack:FindFirstChild("Gem") or game.Players.LocalPlayer.Character:FindFirstChild("Gem") then
                          EquipWeapon("Gem")
                          TP(CFrame.new(1295.93237, 462.133698, 7368.77197, 0.945548892, -2.44059528e-08, 0.325480014, 3.26880851e-08, 1, -1.99773549e-08, -0.325480014, 2.95288842e-08, 0.945548892))
                      else
                          if game:GetService("Workspace").Monster.Boss:FindFirstChild("Dragon [Lv. 5000]") then
                              for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                  if v.Name == "Dragon [Lv. 5000]" and v.Humanoid.Health > 0 then
                                      repeat task.wait()
                                          AutoHaki()
                                          EquipWeapon(_G.SelectWeapon)
                                          TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                          if _G.AutoSkill then 
                                              UseSkill("Z")
                                              UseSkill("X")
                                              UseSkill("C")
                                              UseSkill("V")
                                          end
                                          VirtualUser:CaptureController()
                                          VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                      until _G.AutoKaido == false or v.Humanoid.Health <= 0
                                  end
                              end
                          else
                              if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Dragon [Lv. 5000]") then
                                  TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Dragon [Lv. 5000]").HumanoidRootPart.CFrame * MethodFarm)
                              else
                                  if game:GetService("Workspace").Monster.Boss:FindFirstChild("Elite Skeleton [Lv. 3100]") then
                                      for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                          if v.Name == "Elite Skeleton [Lv. 3100]" and v.Humanoid.Health > 0 then
                                              repeat task.wait()
                                                  AutoHaki()
                                                  EquipWeapon(_G.SelectWeapon)
                                                  TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                  if _G.AutoSkill then 
                                                      UseSkill("Z")
                                                      UseSkill("X")
                                                      UseSkill("C")
                                                      UseSkill("V")
                                                  end
                                                  VirtualUser:CaptureController()
                                                  VirtualUser:ClickButton1(Vector2.new(1280, 672))
                                              until _G.AutoKaido == false or v.Humanoid.Health <= 0
                                          end
                                      end
                                  else
                                      if game:GetService("ReplicatedStorage").MOB:FindFirstChild("Elite Skeleton [Lv. 3100]") then
                                          TP(game:GetService("ReplicatedStorage").MOB:FindFirstChild("Elite Skeleton [Lv. 3100]").HumanoidRootPart.CFrame * MethodFarm)
                                      else
                                          TP(CFrame.new(1295.93237, 462.133698, 7368.77197, 0.945548892, -2.44059528e-08, 0.325480014, 3.26880851e-08, 1, -1.99773549e-08, -0.325480014, 2.95288842e-08, 0.945548892))
                                      end
                                  end
                              end
                          end
                      end
                  end)
              end
          end
      end)
      spawn(function()
          while task.wait() do
              pcall(function()
                  UpdateTime()
                  if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("TopbarPlus") then
                      game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("TopbarPlus").Enabled = false
                  end
              end)
          end
      end)
      
      Main:AddDropdown("Select Method",{"Behind","Below","Upper"},function(value)
          _G.Method = value
      end)
      
      spawn(function()
          while wait() do 
              pcall(function()
                  if _G.Method == "Behind" then
                      MethodFarm = CFrame.new(0,0,_G.DistanceMob)
                  elseif _G.Method == "Below" then
                      MethodFarm = CFrame.new(0,-_G.DistanceMob,0) * CFrame.Angles(math.rad(90),0,0)
                  elseif _G.Method == "Upper" then
                      MethodFarm = CFrame.new(0,_G.DistanceMob,0)  * CFrame.Angles(math.rad(-90),0,0)
                  else
                      MethodFarm = CFrame.new(0,0,_G.DistanceMob)
                  end
              end)
          end
      end)
      
      _G.DistanceMob = 10
      Main:AddSlider("Distance",1,100,10,function(value)
          _G.DistanceMob = value
      end)
      
      Main:AddToggle("Auto Skill",_G.AutoSkill,function(value)
          _G.AutoSkill = value 
      end)
      
      Wapon = {}
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
              table.insert(Wapon,v.Name)
          end
      end
      
      local SelectWeapon = Main:AddDropdown("Select Weapon",Wapon,function(value)
          _G.SelectWeapon = value
      end)
      
      Main:AddButton("Refresh Weapon",function()
          SelectWeapon:Clear()
          for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
              if v:IsA("Tool") then
                  SelectWeapon:Add(v.Name)
              end
          end
          for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
              if v:IsA("Tool") then
                  SelectWeapon:Add(v.Name)
              end
          end
      end)    
  
  
      Stats:AddSeperator("Auto Stats")
      
      Stats:AddToggle("Auto Defense",_G.AutoDefense,function(value)
          _G.AutoDefense = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoDefense then
                  if game:GetService("Players")["LocalPlayer"].PlayerStats.Points.Value ~= 0 then
                      pcall(function()
                          game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Defense",PointStats)
                      end)
                  end
              end
          end
      end)
      
      Stats:AddToggle("Auto Melee",_G.AutoMelee,function(value)
          _G.AutoMelee = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoMelee then
                  if game:GetService("Players")["LocalPlayer"].PlayerStats.Points.Value ~= 0 then
                      pcall(function()
                          game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Melee",PointStats)
                      end)
                  end
              end
          end
      end)
      
      Stats:AddToggle("Auto Sword",_G.AutoSword,function(value)
          _G.AutoSword = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoSword then
                  if game:GetService("Players")["LocalPlayer"].PlayerStats.Points.Value ~= 0 then
                      pcall(function()
                          game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Sword",PointStats)
                      end)
                  end
              end
          end
      end)
      
      Stats:AddToggle("Auto Devil Fruit",_G.AutoDevilFruit,function(value)
          _G.AutoDevilFruit = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoDevilFruit then
                  if game:GetService("Players")["LocalPlayer"].PlayerStats.Points.Value ~= 0 then
                      pcall(function()
                          game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer("Devil Fruit",PointStats)
                      end)
                  end
              end
          end
      end)
      
      Stats:AddSeperator("Settings")
      
      local PointLabel = Stats:AddLabel("Point")
      
      spawn(function()
          while wait() do
              pcall(function()
                  PointLabel:Set("Points : "..game:GetService("Players")["LocalPlayer"].PlayerStats.Points.Value)
              end)
          end
      end)
      
      PointStats = 1
      Stats:AddSlider("Select Point",1,100,1,function(value)
          PointStats = value
      end)
      
      Combat:AddSeperator("Players")
      
      local plyserv = Combat:AddLabel("Players")
      
      spawn(function()
          while wait() do
              pcall(function()
                  for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                      if i == 12 then
                          plyserv:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                      elseif i == 1 then
                          plyserv:Set("Player :".." "..i.." ".."/".." ".."12")
                      else
                          plyserv:Set("Players :".." "..i.." ".."/".." ".."12")
                      end
                  end
              end)
          end
      end)
      
      PlayerName = {}
      for i,v in pairs(game.Players:GetChildren()) do  
          if v.Name ~= game.Players.LocalPlayer.Name then
              table.insert(PlayerName ,v.Name)
          end
      end
      
      local SelectedPly = Combat:AddDropdown("Select Players",PlayerName,function(value)
          _G.SelectPly = value
      end)
      
      Combat:AddButton("Refresh Player",function()
          PlayerName = {}
          SelectedPly:Clear()
          for i,v in pairs(game.Players:GetChildren()) do  
              if v.Name ~= game.Players.LocalPlayer.Name then
                  SelectedPly:Add(v.Name)
              end
          end
      end)
      
      Combat:AddToggle("Spectate Player",false,function(value)
          Spectate = value
          local plr1 = game.Players.LocalPlayer.Character.Humanoid
          local plr2 = game.Players:FindFirstChild(_G.SelectPly)
          repeat task.wait()
              game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
          until Spectate == false 
          game.Workspace.Camera.CameraSubject = plr1
      end)
      
      Combat:AddButton("Teleport",function()
          TP(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
      end)
      
      Combat:AddToggle("Auto Kill Player",false,function(value)
          _G.AutoKillply = value
          StopNoClip(_G.AutoKillply)
      end)
      spawn(function()
          while wait() do 
              pcall(function()
                  if _G.AutoKillply then
                      if game.Players:FindFirstChild(_G.SelectPly) and game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                          repeat task.wait()
                              AutoHaki()
                              EquipWeapon(_G.SelectWeaponKill)
                              TP(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * MethodKill)
                              game:GetService'VirtualUser':CaptureController()
                              game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                          until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not _G.AutoKillply or not game.Players:FindFirstChild(_G.SelectPly)
                      end
                  end
              end)
          end
      end)
      
      Combat:AddDropdown("Select Method",{"Behind","Below","Upper"},function(value)
          _G.Method2 = value
      end)
      
      spawn(function()
          while wait() do 
              pcall(function()
                  if _G.Method2 == "Behind" then
                      MethodKill = CFrame.new(0,0,Distanceply)
                  elseif _G.Method2 == "Below" then
                      MethodKill = CFrame.new(0,-Distanceply,0) * CFrame.Angles(math.rad(90),0,0)
                  elseif _G.Method2 == "Upper" then
                      MethodKill = CFrame.new(0,Distanceply,0)  * CFrame.Angles(math.rad(-90),0,0)
                  else
                      _G.Method2 = CFrame.new(0,0,Distanceply)
                  end
              end)
          end
      end)
      
      Distanceply = 1
      Combat:AddSlider("Distance",1,100,1,function(value)
          Distanceply = value
      end)
      
      Weaponply = {}
      for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
          if v:IsA("Tool") then
              table.insert(Weaponply,v.Name)
          end
      end
      
      local SelectWeaponply = Combat:AddDropdown("Select Weapon",Weaponply,function(value)
          _G.SelectWeaponKill = value
      end)
      
      Combat:AddButton("Refresh Weapon",function()
          SelectWeaponply:Clear()
          Weaponply = {}
          for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
              if v:IsA("Tool") then
                  SelectWeaponply:Add(v.Name)
              end
          end
          for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
              if v:IsA("Tool") then
                  SelectWeaponply:Add(v.Name)
              end
          end
      end)
      
      Teleport:AddSeperator("MaP")
      
      if Second_Sea then
          Teleport:AddButton("Old Wolrd",function()
              TeleporttoOldWorld = true
          end)
          spawn(function()
              while wait() do
                  if TeleporttoOldWorld then
                      pcall(function()
                          TP(CFrame.new(3947.696044921875, 16.74089813232422, 324.06292724609375))
                          Click()
                          wait(.5)
                          for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                              if v.Name == "Dialogue" then
                                  v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                  v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                  v.Accept.ImageTransparency = 1
                                  game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer()
                              end
                          end
                      end)
                  end
              end
          end)
      end
      
      if First_Sea then
          Teleport:AddButton("Second Sea",function()
              TeleporttoNewWorld = true
          end)
          spawn(function()
              while wait() do
                  if TeleporttoNewWorld then
                      pcall(function()
                          TP(CFrame.new(1798.5653076171875, 16.172266006469727, -1475.4083251953125))
                          Click()
                          wait(.5)
                          for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                              if v.Name == "Dialogue" then
                                  v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
                                  v.Accept.Position = UDim2.new(-2, 0, -5, 0)
                                  v.Accept.ImageTransparency = 1
                                  game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer()
                              end
                          end
                      end)
                  end
              end
          end)
      end
      
      Teleport:AddSeperator("Island")
      
      if Second_Sea then
          Teleport:AddButton("Floresco",function()
                 TP(CFrame.new(3709.0542, 56.4489174, 231.976654))
          end)
           Teleport:AddButton("Hibernus Land",function()
                 TP(CFrame.new(2763.18311, 134.725479, -819.026123))
          end)
          Teleport:AddButton("Torrefacio",function()
                 TP(CFrame.new(1779.29321, 56.12677, 1060.08374))
          end)
          Teleport:AddButton("Cercer",function()
                 TP(CFrame.new(3017.57373, 29.2057247, 1378.00024))
          end)
          Teleport:AddButton("Skull lsland",function()
                 TP(CFrame.new(1003.04968, 87.1491852, 6579.34277))
          end)
          Teleport:AddButton("Loaf lsland",function()
                 TP(CFrame.new(6552.32617, 28.6099815, 7612.51514))
          end)
          Teleport:AddButton("Dead Thudra",function()
                 TP(CFrame.new(8377.90527, 14.3858547, 969.619324))
          end)
          Teleport:AddButton("Santa Factory",function()
              TP(CFrame.new(10495.908203125, 61.35665512084961, 5763.68310546875))
          end)
      else
          Teleport:AddButton("Stone Rain Sea",function()
                 TP(CFrame.new(6210.5903320312, 50.080966949463, -2050.3303222656))
          end)
          Teleport:AddButton("Town",function()
                 TP(CFrame.new(2061.2985839844, 48.301433563232, -1572.8010253906))
          end)
           Teleport:AddButton("Pirate Island",function()
                 TP(CFrame.new(3751.3720703125, 42.429008483887, -479.09103393555))
          end)
          Teleport:AddButton("Soldier Town",function()
                 TP(CFrame.new(1734.4392089844, 68.61457824707, 233.17127990723))
          end)
          Teleport:AddButton("Shark Island",function()
                 TP(CFrame.new(3507.51171875, 10.541933059692, 1499.6036376953))
          end)
          Teleport:AddButton("Chef Ship",function()
                 TP(CFrame.new(32.638660430908, 149.17311096191, -37.506324768066))
          end)
          Teleport:AddButton("Snow Island",function()
                 TP(CFrame.new(-1242.2866210938, 18.07179069519, 1587.9304199219))
          end)
          Teleport:AddButton("Desert Island",function()
                 TP(CFrame.new(1536.3891601562, 12.834725379944, 2125.1857910156))
          end)
          Teleport:AddButton("Skyland",function()
                 TP(CFrame.new(89.631294250488, 386.47360229492, 4216.4599609375))
          end)
          Teleport:AddButton("Bubbleland",function()
                 TP(CFrame.new(5783.2954101562, 11.971294403076, 3483.4353027344))
          end)
          Teleport:AddButton("Stone Arena",function()
                 TP(CFrame.new(9555.916015625, 37.722194671631, -3841.9360351562))
          end)
          Teleport:AddButton("War Island",function()
                 TP(CFrame.new(6510.5747070312, 49.603099822998, 937.15655517578))
          end)
          Teleport:AddButton("Lobby Island",function()
                 TP(CFrame.new(3032.4575195312, 13.059648513794, 5632.8969726562))
          end)
          Teleport:AddButton("Zombie Island",function()
                 TP(CFrame.new(1641.8089599609, 26.438592910767, 6653.8837890625))
          end)
          Teleport:AddButton("Fishland",function()
                 TP(CFrame.new(2412.5144042969, 40.273021697998, 9371.54296875))
          end)
      end
      
      Teleport:AddSeperator("SHOP")
      
      if First_Sea then
          Teleport:AddButton("Buso Shop",function()
              TP(CFrame.new(5841.32080078125, 12.240174293518066, 3603.513671875))
          end)
      elseif Second_Sea then
          Teleport:AddButton("Electro Shop",function()
              TP(CFrame.new(2462.47412109375, 173.04458618164062, -1099.1248779296875))
          end)
      end
      
      if First_Sea then
          Teleport:AddButton("Ken Shop",function()
              TP(CFrame.new(65.57159423828125, 386.49786376953125, 4064.0361328125))
          end)
      elseif Second_Sea then
          Teleport:AddButton("Dragon Claw Shop",function()
              TP(CFrame.new(2719.325927734375, 430.6570739746094, 721.2157592773438))
          end)
      end
      
      Teleport:AddButton("Black Leg Shop",function()
          if First_Sea then
              TP(CFrame.new(6457.87548828125, 168.47467041015625, -2376.072509765625))
          elseif Second_Sea then
              TP(CFrame.new(2367.072265625, 57.30705261230469, 135.1882781982422))
          end
      end)
      
      Teleport:AddButton("Cybrog Shop",function()
          if First_Sea then
              TP(CFrame.new(6457.87548828125, 168.47467041015625, -2376.072509765625))
          elseif Second_Sea then
              TP(CFrame.new(2325.837158203125, 57.26703643798828, 235.82777404785156))
          end
      end)
      
      Teleport:AddButton("Water Style Shop",function()
          if First_Sea then
              TP(CFrame.new(3944.12646484375, 123.67578125, 1489.2821044921875))
          elseif Second_Sea then
              TP(CFrame.new(2455.255859375, 57.30705261230469, 224.07823181152344))
          end
      end)
      
      if First_Sea then
          Teleport:AddButton("Sword Shop",function()
              TP(CFrame.new(2360.398681640625, 40.2966423034668, 9683.9658203125))
          end)
      elseif Second_Sea then
          Teleport:AddButton("ReStat Shop",function()
              TP(CFrame.new(2433.724609375, 57.30705261230469, 142.7527618408203))
          end)
      end
      
      Dungeon:AddSeperator("Dungeon")
      
      Dungeon:AddButton("Teleport to Dungeon",function()
          if First_Sea then
              TP(CFrame.new(6729.3916015625, 103.67321777344, 952.03881835938))
          elseif Second_Sea then
              TP(CFrame.new(2698.6772460938, 223.11566162109, 6.6630764007568))
          end
      end)
      
      if not Dungeon_Sea then
          Dungeon:AddLabel("In Dungeon Only!")
      end
      
      if Dungeon_Sea then
          Dungeon:AddToggle("Auto Farm Dungeon",_G.AutoFarmDungeon,function(value)
              _G.AutoFarmDungeon = value
          end)
      
          _G.SaveAt = 30
          Dungeon:AddSlider("Save At",1,100,30,function(value)
              _G.SaveAt = value
          end)
      
          DistanceDungeon = 2
          Dungeon:AddSlider("Distance",1,100,2,function(value)
              DistanceDungeon = value
          end)
      
          spawn(function()
              while wait() do
                  if _G.AutoFarmDungeon then
                      if not _G.NotEquip then
                          pcall(function()
                              for i,v in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                  if v:IsA("Tool") then
                                      game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                  end
                              end
                          end)
                      end
                  end
              end
          end)
      
          spawn(function()
              while wait() do
                  pcall(function()
                      if _G.AutoFarmDungeon then
                          if game.Players.LocalPlayer.Character.Humanoid.Health > game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 100 * _G.SaveAt then 
                              AutoFarmMobDungeon = true
                              AutoSaveModeDungeon = false
                          else
                              AutoFarmMobDungeon = false
                              AutoSaveModeDungeon = true
                          end
                      end
                  end)
              end
          end)
      
          spawn(function()
              while wait() do
                  if _G.AutoFarmDungeon and AutoFarmMobDungeon then
                      pcall(function()
                          if game.Players.LocalPlayer.Character.Humanoid.Health > game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 100 * _G.SaveAt then
                              for i,v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                                  if v:FindFirstChild("HumanoidRootPart") then
                                      repeat task.wait()
                                          _G.NotEquip = false
                                          AutoHaki()
                                          TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,DistanceDungeon))
                                          UseSkill("Z")
                                          UseSkill("X")
                                          UseSkill("C")
                                          UseSkill("V")
                                      until v.Humanoid.Health <= 0 or not _G.AutoFarmDungeon or not AutoFarmMobDungeon or game.Players.LocalPlayer.Character.Humanoid.Health <= game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 100 * _G.SaveAt
                                  end
                              end
                          end
                      end)
                  end
              end
          end)
          
          spawn(function()
              while wait() do
                  if _G.AutoFarmDungeon and AutoSaveModeDungeon then
                      pcall(function()
                          if game.Players.LocalPlayer.Character.Humanoid.Health <= game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 100 * _G.SaveAt then                                                     
                              repeat task.wait()
                                  _G.NotEquip = true
                                  if game:GetService("Workspace").Island:FindFirstChild("Arena1") then
                                      TP(CFrame.new(-9.393295288085938, 201.8232879638672, 16.94792366027832))
                                  else
                                      TP(CFrame.new(-19.639192581176758, 182.88330078125, 6.57674503326416))
                                  end
                                  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                                      if v:IsA("Tool") then
                                          if v.ToolTip == "Combat" then
                                              EquipWeapon(v.Name)
                                          end
                                      end
                                  end
                                  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                                      if v:IsA("Tool") then
                                          if v.ToolTip == "Combat" then
                                              EquipWeapon(v.Name)
                                          end
                                      end
                                  end   
                                  game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                              until game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth or not AutoSaveModeDungeon or not _G.AutoFarmDungeon
                              _G.NotEquip = false
                              game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                          end
                      end)
                  end
              end
          end)
      end
      
      Misc:AddSeperator("Server")
      
      Misc:AddButton("Rejoin Server",function()
          game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
      end)
      
      Misc:AddButton("Server Hop",function()
          Hop()
      end)
      
      Misc:AddButton("Hop To Lower Player",function()
          getgenv().AutoTeleport = true
          getgenv().DontTeleportTheSameNumber = true 
          getgenv().CopytoClipboard = false
          if not game:IsLoaded() then
              print("Game is loading waiting...")
          end
          local maxplayers = math.huge
          local serversmaxplayer;
          local goodserver;
          local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
          function serversearch()
              for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                  if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                      serversmaxplayer = v.maxPlayers
                      maxplayers = v.playing
                      goodserver = v.id
                  end
              end       
          end
          function getservers()
              serversearch()
              for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                  if i == "nextPageCursor" then
                      if gamelink:find("&cursor=") then
                          local a = gamelink:find("&cursor=")
                          local b = gamelink:sub(a)
                          gamelink = gamelink:gsub(b, "")
                      end
                      gamelink = gamelink .. "&cursor=" ..v
                      getservers()
                  end
              end
          end 
          getservers()
          if AutoTeleport then
              if DontTeleportTheSameNumber then 
                  if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                      return warn("It has same number of players (except you)")
                  elseif goodserver == game.JobId then
                      return warn("Your current server is the most empty server atm") 
                  end
              end
              game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
          end
      end)
      
      Misc:AddSeperator("Devil Fruits")
      
      Misc:AddToggle("Auto Random Fruit Beli",_G.AutoRandomFruitBeli,function(value)
          _G.AutoRandomFruitBeli = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoRandomFruitBeli then
                  pcall(function()
                      if First_Sea then
                          TP(CFrame.new(2027.9697265625, 48.14053726196289, -1737.6326904296875))
                      elseif Second_Sea then
                          TP(CFrame.new(2362.600341796875, 57.83930969238281, 259.5265808105469))
                      end
                      wait(.5)
                      game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AntiTPNPC.ARandomFruit)
                      if game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Beli.Visible == true then
                          Click()
                          wait(.1)
                          for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                              if v.Name == "Dialogue" then
                                  v.Beli.Size = UDim2.new(0, 10000, 0, 10000)
                                  v.Beli.Position = UDim2.new(-2, 0, -5, 0)
                                  v.Beli.ImageTransparency = 1
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
      Misc:AddToggle("Auto Random Fruit Gem",_G.AutoRandomFruitGem,function(value)
          _G.AutoRandomFruitGem = value
      end)
      
      spawn(function()
          while wait() do
              if _G.AutoRandomFruitGem then
                  pcall(function()
                      if First_Sea then
                          TP(CFrame.new(2027.9697265625, 48.14053726196289, -1737.6326904296875))
                      elseif Second_Sea then
                          TP(CFrame.new(2362.600341796875, 57.83930969238281, 259.5265808105469))
                      end
                      wait(.5)
                      game:GetService("ReplicatedStorage").Remotes.Functions.CheckQuest:InvokeServer(workspace.AntiTPNPC.ARandomFruit)
                      if game:GetService("Players").LocalPlayer.PlayerGui.ARandomFruit.Dialogue.Gem.Visible == true then
                          Click()
                          wait(.1)
                          for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                              if v.Name == "Dialogue" then
                                  v.Gem.Size = UDim2.new(0, 10000, 0, 10000)
                                  v.Gem.Position = UDim2.new(-2, 0, -5, 0)
                                  v.Gem.ImageTransparency = 1
                              end
                          end
                      end
                  end)
              end
          end
      end)
      
      Misc:AddToggle("Bring Fruit",_G.BringFruit,function(value)
          _G.BringFruit = value
      end)
      
      spawn(function()
          while wait() do
              if _G.BringFruit then
                  pcall(function()
                      for i,v in pairs(game.Workspace:GetChildren()) do
                          if v:IsA("Tool") then
                              v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                          end
                      end	
                  end)
              end
          end
      end)
      
      Misc:AddSeperator("Abilities")
      
      OldCanGeppo = game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value
      Misc:AddToggle("Inf Geppo",false,function(value)
          if value == true then
              game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 1000000000000000000
          elseif value == false then
              game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = OldCanGeppo
          end
      end)
      
      Misc:AddToggle("Fly",false,function(value)
          Fly = value
      end)
      
      spawn(function()
          while wait() do
              pcall(function()
                  if Fly then
                      fly()
                  end
              end)
          end
      end)
      
      Misc:AddToggle("No Clip",false,function(value)
          _G.NoClip = value
      end)
      
      Misc:AddSeperator("ESP")
      
      Misc:AddToggle("Player ESP",ESPPlayer,function(value)
          ESPPlayer = value
          while ESPPlayer do wait()
              UpdateEspPlayer()
          end
      end)
      
      Misc:AddToggle("Devil Fruit ESP",DevilFruitESP,function(value)
          DevilFruitESP = value
          while DevilFruitESP do wait()
              UpdateBfEsp() 
          end
      end)
      
      Settings:AddSeperator("Ui")
      
      Settings:AddButton("Destroy Ui",function()
          if game.CoreGui:FindFirstChild("UlLib") then
              game.CoreGui:FindFirstChild("UlLib"):Destroy()
          end
      end)
      
      Settings:AddTextbox("Level","",true,function(value)
          _G.LockAt = value
      end)
      
      Settings:AddToggle("Lock Level",_G.LockLevel,function(value)
          _G.LockLevel = value
      end)
      
      spawn(function()
          while wait() do 
              if _G.LockLevel then
                  pcall(function()
                      if game.Players.LocalPlayer.PlayerStats.lvl.Value >= tonumber(_G.LockAt) then
                          game.Players.LocalPlayer:Kick("\nSuccessfully Farm!")
                      end
                  end)
              end
          end
      end)
  else
  game.Players.LocalPlayer:kick("No Support lol Eror Code 555+")
  end
