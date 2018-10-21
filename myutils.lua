dofile("core.lua") -- Load core functions

-- Create a .txt file for a new section.
function wUtils.NewSection(name)
  
  local currentdir = workingDir
  local files = scandir(currentdir)
  
  local scenenumber = 0
  
  for _, v in pairs(files) do
    if string.sub(v, -4, -1) == ".txt" and string.sub(v, 1, 2) == "sc" then
      local thisnum = tonumber(string.sub(v, 3, 6))
      scenenumber = thisnum + 1
    end
  end
  
  local filename = string.format("sc%04d - %s.txt", scenenumber, name)
  
  io.close(io.open(currentdir .. filename, 'w'))
  print("File " .. currentdir .. filename .. " created")
  
end
