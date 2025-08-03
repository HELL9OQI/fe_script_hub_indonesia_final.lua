-- FE Script Hub (Versi Mobile + Bahasa Indonesia)
-- Dibuat untuk memudahkan akses script FE dan mobile
-- Kredit: Tim Kamu

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "FE_Hub"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 300, 0, 420)
main.Position = UDim2.new(0.5, -150, 0.5, -210)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.Active = true
main.Draggable = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "FE Script Hub - Indo"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 18

local scroll = Instance.new("ScrollingFrame", main)
scroll.Size = UDim2.new(1, 0, 1, -30)
scroll.Position = UDim2.new(0, 0, 0, 30)
scroll.CanvasSize = UDim2.new(0, 0, 0, 800)
scroll.ScrollBarThickness = 6
scroll.BackgroundTransparency = 1

local UIList = Instance.new("UIListLayout", scroll)
UIList.Padding = UDim.new(0, 6)

-- Fungsi membuat tombol script
local function createButton(nama, url, info)
	local btn = Instance.new("TextButton", scroll)
	btn.Size = UDim2.new(1, -12, 0, 40)
	btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 14
	btn.Text = nama .. " - " .. info
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	btn.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(url))()
	end)
end

-- === Tombol Script (dengan info singkat) ===
createButton("PShade Ultimate", "https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua", "Efek Visual Bagus")
createButton("Brookhaven Script", "https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Brookhaven", "Hack Map Brookhaven")
createButton("Menace Sus GUI", "https://raw.githubusercontent.com/M-E-N-A-C-E/Menace-Hub/refs/heads/main/Free%20Sus%20Missile", "Tembakan Missile Sus")
createButton("FE Emotes", "https://rawscripts.net/raw/Universal-Script-Fe-emotes-15813", "Emote Bebas FE")
createButton("Fly (FE, Mobile)", "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt", "Terbang di Mobile")
createButton("Infinite Yield", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", "Admin FE Komplit")
createButton("Ace Aimlock", "https://raw.githubusercontent.com/Totocoems/Ace/main/Ace", "Aimlock Auto Head - FE")

-- Tombol X / Tutup
local close = Instance.new("TextButton", main)
close.Size = UDim2.new(0, 24, 0, 24)
close.Position = UDim2.new(1, -28, 0, 2)
close.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
close.Text = "X"
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", close).CornerRadius = UDim.new(0, 5)
close.MouseButton1Click:Connect(function()
	gui.Enabled = false
end)

-- Tombol Munculkan / Sembunyikan GUI (pojok kiri atas)
local toggleButton = Instance.new("TextButton", gui)
toggleButton.Size = UDim2.new(0, 80, 0, 30)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.BackgroundColor3 = Color3.fromRGB(60, 120, 200)
toggleButton.Text = "Tampilkan Hub"
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 14
toggleButton.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", toggleButton).CornerRadius = UDim.new(0, 6)

toggleButton.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
	if main.Visible then
		toggleButton.Text = "Sembunyikan Hub"
	else
		toggleButton.Text = "Tampilkan Hub"
	end
end)
