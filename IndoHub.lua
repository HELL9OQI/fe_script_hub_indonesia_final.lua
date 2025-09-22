-- IndoHub - FE Script Hub Indonesia (Mobile & PC Support)
-- Dibuat oleh: HELL9OQI
-- Info: Script ini adalah hub GUI yang berisi script FE yang aman dan berguna untuk R6 & R15.

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "IndoHub"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 310, 0, 460)
main.Position = UDim2.new(0.5, -155, 0.5, -230)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.Active = true
main.Draggable = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 32)
title.BackgroundTransparency = 1
title.Text = "IndoHub Script Library - Script FE Indonesia"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 18

local scroll = Instance.new("ScrollingFrame", main)
scroll.Size = UDim2.new(1, 0, 1, -32)
scroll.Position = UDim2.new(0, 0, 0, 32)
scroll.CanvasSize = UDim2.new(0, 0, 0, 1000)
scroll.ScrollBarThickness = 6
scroll.BackgroundTransparency = 1

local UIList = Instance.new("UIListLayout", scroll)
UIList.Padding = UDim.new(0, 6)

-- Fungsi untuk membuat tombol
local function createButton(nama, url, deskripsi)
	local btn = Instance.new("TextButton", scroll)
	btn.Size = UDim2.new(1, -12, 0, 42)
	btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 15
	btn.Text = nama .. " - " .. deskripsi
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	btn.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(url))()
	end)
end

-- Tombol Script (Nama, URL, Deskripsi Singkat)
createButton("PShade Ultimate", "https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua", "Shader (Visual FX)")
createButton("Brookhaven Script", "https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Brookhaven", "Auto Tools Brookhaven")
createButton("Menace Sus GUI", "https://raw.githubusercontent.com/M-E-N-A-C-E/Menace-Hub/refs/heads/main/Free%20Sus%20Missile", "FE Sus Menu")
createButton("FE Emotes", "https://rawscripts.net/raw/Universal-Script-Fe-emotes-15813", "Emote FE")
createButton("Fly GUI", "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt", "FE Fly Support Mobile")
createButton("Infinite Yield", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", "Admin FE Commands")
createButton("Ace Aimlock", "https://raw.githubusercontent.com/Totocoems/Ace/main/Ace", "FE Aimlock (Ace)")

-- Tombol Sembunyikan / Munculkan GUI
local toggleBtn = Instance.new("TextButton", gui)
toggleBtn.Size = UDim2.new(0, 80, 0, 32)
toggleBtn.Position = UDim2.new(0, 12, 0, 12)
toggleBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleBtn.Text = "Sembunyi GUI"
toggleBtn.Font = Enum.Font.Gotham
toggleBtn.TextColor3 = Color3.new(1, 1, 1)
toggleBtn.TextSize = 14
Instance.new("UICorner", toggleBtn).CornerRadius = UDim.new(0, 6)

local visible = true
toggleBtn.MouseButton1Click:Connect(function()
	visible = not visible
	main.Visible = visible
	toggleBtn.Text = visible and "Sembunyi GUI" or "Muncul GUI"
end)

-- Tombol Close
local close = Instance.new("TextButton", main)
close.Size = UDim2.new(0, 24, 0, 24)
close.Position = UDim2.new(1, -28, 0, 4)
close.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
close.Text = "X"
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", close).CornerRadius = UDim.new(0, 5)
close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
