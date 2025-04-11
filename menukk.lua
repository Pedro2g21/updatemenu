local imgui = require 'imgui' 
function imgui.OnDrawFrame()
  imgui.Begin('My window')
  imgui.End() 
end

function main()
  imgui.Process = true 
end
