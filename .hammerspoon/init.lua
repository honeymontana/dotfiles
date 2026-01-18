-- OPEN APPS USE OPT + [1..9]
-- opt + enter "ghostty"


local app_map = {
	["1"] = "firefox",
	["2"] = "zed",
	["3"] = "Anytype",
	["4"] = "Telegram",
	["5"] = "Discord",
}

for key, app_name in pairs(app_map) do
	hs.hotkey.bind({ "alt" }, key, function()
		hs.application.launchOrFocus(app_name)
	end)
end

hs.hotkey.bind({ "alt" }, "return", function()
	hs.application.launchOrFocus("ghostty")
end)

hs.hotkey.bind({ "alt" }, "o", function()
	hs.urlevent.openURL("https://chatgpt.com/")
end)

hs.hotkey.bind({ "alt" }, "m", function()
	hs.urlevent.openURL("https://music.youtube.com/")
end)

hs.hotkey.bind({ "alt" }, "g", function()
	hs.urlevent.openURL("https://mail.google.com/mail/u/3/#inbox")
end)

hs.hotkey.bind({ "alt" }, "c", function()
	hs.urlevent.openURL("https://www.youtube.com/")
end)

-- Создаём таблицу с переназначениями
local arrowKeys = { "up", "down", "right", "left" }

 -- 1280×720 (HD)
  -- - 1366×768
  -- - 1600×900
-- Создать маленькое центрированное окно
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    local max = screen:frame()

    -- Размер окна (например, 800x600)
    local windowWidth = 1366
    local windowHeight = 768

    -- Вычисляем координаты для центрирования
    local f = win:frame()
    f.x = max.x + (max.w - windowWidth) / 2
    f.y = max.y + (max.h - windowHeight) / 2
    f.w = windowWidth
    f.h = windowHeight

    win:setFrame(f)
  end)
