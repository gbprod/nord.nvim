local config = require("nord.config")
local utils = require("nord.utils")

local nord = {}

function nord.load(opts)
  if opts then
    require("nord.config").extend(opts)
  end

  vim.o.termguicolors = true

  if config.options.colorblind.enable then
    require("nord.colors").daltonize(config.options.colorblind.severity)
  end

  require("nord.config").options.on_colors(require("nord.colors").palette)

  vim.cmd([[ highlight clear ]])

  if config.options.terminal_colors then
    require("nord.terminal").apply()
  end

  utils.load(function()
    return require("nord.defaults").highlights(),
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
      require("nord.plugins.neogit").highlights(),
      require("nord.plugins.glance").highlights(),
      require("nord.plugins.mini").highlights(),
      require("nord.plugins.markview").highlights()
  end)

  vim.g.colors_name = "nord"
end

nord.setup = config.setup

return nord
