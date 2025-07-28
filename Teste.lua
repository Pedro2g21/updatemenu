local imgui = require 'imgui'
local key = require 'vkeys'


local main_window_state = imgui.ImBool(false)
function imgui.OnDrawFrame()
  if main_window_state.v then 
    imgui.SetNextWindowSize(imgui.ImVec2(150, 200), imgui.Cond.FirstUseEver) 

    imgui.Begin('My window', main_window_state)
    imgui.End()
  end
end

function main()
  while true do
    wait(0)
    if wasKeyPressed(key.VK_X) then 
        main_window_state.v = not main_window_state.v 
    end
    imgui.Process = main_window_state.v 
  end
end

