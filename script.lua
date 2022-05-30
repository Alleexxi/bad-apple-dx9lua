loadstring(dx9.Get("https://raw.githubusercontent.com/soupg/DXLib/main/main.lua"))()
if _G.badappleframecount == nil then
    _G.badappleframecount = {1}
end

local pixel = loadstring(dx9.Get("https://raw.githubusercontent.com/Alleexxi/bad-apple-dx9lua/main/frames/".. _G.badappleframecount[1] ..".png.txt"))()

local width = 0
local height = 1
for i,v in ipairs(pixel) do
    width = width + 1
    dx9.DrawFilledBox({40+(20 * width),40+(20 * height)},{60+(20 * width),60+(20 * height)},v)
    if width == 51 then
        width = 0
        height = height + 1
    end
end

_G.badappleframecount[1] = _G.badappleframecount[1] + 1

