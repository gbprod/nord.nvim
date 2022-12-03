local config = require("nord.config")
local utils = require("nord.utils")

local nord = {}

function nord.load(opts)
  if opts then
    require("nord.config").extend(opts)
  end

  vim.cmd([[ highlight clear ]])

  if config.options.terminal_colors then
    require("nord.terminal").apply()
  end

  utils.load(require("nord.defaults").highlights())
  utils.load(require("nord.syntax").highlights())
  utils.load(require("nord.treesitter").highlights())
  utils.load(require("nord.terminal").highlights())
  utils.load(require("nord.lsp").highlights())

  utils.load(require("nord.plugins.bufferline").highlights())
  utils.load(require("nord.plugins.git").highlights())
  utils.load(require("nord.plugins.completion").highlights())
  utils.load(require("nord.plugins.filetree").highlights())
  utils.load(require("nord.plugins.motion").highlights())
  utils.load(require("nord.plugins.picker").highlights())
  utils.load(require("nord.plugins.ui").highlights())
  utils.load(require("nord.plugins.notify").highlights())
  utils.load(require("nord.plugins.rainbow").highlights())
end

nord.setup = config.setup
nord.bufferline_highlights = require("bufferline.theme").highlights

return nord
