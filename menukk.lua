local imgui = require 'imgui' 
function imgui.OnDrawFrame()
  imgui.Begin('One modz viado')
  imgui.End() 
end

function main()
  imgui.Process = true 
end
