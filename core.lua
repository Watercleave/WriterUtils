wUtils = {} -- Namespace

workingDir = [[C:\Users\Reynolds\Desktop\James\Writing\Test\]] -- The directory in which the script will run

-- Merge multiple titled .txt files into a single markdown-format file.
-- Provide files as a list of strings
function wUtils.merge(filename, file)
  
  
  
end

-- Lua implementation of PHP scandir function
function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('dir "'..directory..'" /b')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end