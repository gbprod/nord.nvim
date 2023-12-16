local config = require("nord.config")
local utils = require("nord.utils")

local nord = {}

function nord.load(opts)
  if opts then
    require("nord.config").extend(opts)
  end

  if config.options.colorblind.enable then
    require("nord.colors").daltonize(config.options.colorblind.severity)
  end

  vim.cmd([[ highlight clear ]])

  if config.options.terminal_colors then
    require("nord.terminal").apply()
  end

  utils.load(
    require("nord.defaults").highlights(),
    require("nord.lsp").highlights(),
    require("nord.syntax").highlights(),
    require("nord.terminal").highlights(),
    require("nord.treesitter").highlights(),
    require("nord.plugins.bufferline").highlights(),
    require("nord.plugins.completion").highlights(),
    require("nord.plugins.filetree").highlights(),
    require("nord.plugins.git").highlights(),
    require("nord.plugins.motion").highlights(),
    require("nord.plugins.notify").highlights(),
    require("nord.plugins.picker").highlights(),
    require("nord.plugins.ui").highlights(),
    require("nord.plugins.diffview").highlights(),
    require("nord.plugins.neogit").highlights()
  )

  vim.g.colors_name = "nord"
end

nord.setup = config.setup

return nord
