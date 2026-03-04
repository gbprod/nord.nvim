-- Delegate to the main nord theme which handles both dark and light styles.
local path = vim.api.nvim_get_runtime_file("lua/lualine/themes/nord.lua", false)[1]
return dofile(path)
