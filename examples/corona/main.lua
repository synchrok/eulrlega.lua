
---------------------------------------------------------------------------------
-- Corona (Simple Console)
---------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

local p_y, p_arr = 10, {}
local function p(text, size)
	text = text or ""
	size = size or 20
	table.insert(p_arr, display.newText(text, 5, p_y, "NanumGothic", size))
	p_y = p_y + size
end

---------------------------------------------------------------------------------
-- Test Code
---------------------------------------------------------------------------------

require("eulrlega")

p("eulrlega.lua Test", 40) p()

local a, b = "테스트", "타겟"
p(a .. get_ega(a) .. " " .. b .. get_eulrl(b) .. " 공격했습니다!")

p(string.format("오늘%s 치킨%s 시켜먹었는데 맛%s.. 치느님%s 역시 날 실망시키지 않으셨다", 
    get_eunnn("오늘"), get_eulrl("치킨"), get_ega("맛"), get_eunnn("치느님")), 17)