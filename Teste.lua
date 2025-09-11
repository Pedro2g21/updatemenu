local imgui = require 'mimgui'

local newFrame = imgui.OnFrame(
    function() return true end,
    function(player)
        imgui.Begin("Main Window")
        imgui.Text("daaa")
        imgui.End()
    end
)

function main()
    wait(1)
end

