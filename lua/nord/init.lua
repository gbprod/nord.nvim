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

  require("nord.colors").apply_style()
  require("nord.config").options.on_colors(require("nord.colors").palette)

  vim.cmd([[ highlight clear ]])

  if config.options.terminal_colors then
    require("nord.terminal").apply()
    require("nord.terminal").apply_light_adjustments()
  end

  utils.load(
    utils.apply_light_mode(require("nord.defaults").highlights()),
    utils.apply_light_mode(require("nord.lsp").highlights()),
    utils.apply_light_mode(require("nord.syntax").highlights()),
    utils.apply_light_mode(require("nord.terminal").highlights()),
    utils.apply_light_mode(require("nord.treesitter").highlights()),
    utils.apply_light_mode(require("nord.plugins.bufferline").highlights()),
    utils.apply_light_mode(require("nord.plugins.completion").highlights()),
    utils.apply_light_mode(require("nord.plugins.filetree").highlights()),
    utils.apply_light_mode(require("nord.plugins.git").highlights()),
    utils.apply_light_mode(require("nord.plugins.motion").highlights()),
    utils.apply_light_mode(require("nord.plugins.notify").highlights()),
    utils.apply_light_mode(require("nord.plugins.picker").highlights()),
    utils.apply_light_mode(require("nord.plugins.ui").highlights()),
    utils.apply_light_mode(require("nord.plugins.diffview").highlights()),
    utils.apply_light_mode(require("nord.plugins.neogit").highlights()),
    utils.apply_light_mode(require("nord.plugins.glance").highlights()),
    utils.apply_light_mode(require("nord.plugins.mini").highlights()),
    utils.apply_light_mode(require("nord.plugins.markview").highlights()),
    utils.apply_light_mode(require("nord.plugins.snacks").highlights()),
    utils.apply_light_mode(require("nord.plugins.dap").highlights()),
    utils.apply_light_mode(require("nord.plugins.vimwiki").highlights()),
    utils.apply_light_mode(require("nord.plugins.render-markdown").highlights())
  )

  local style = config.options.style == "light" and "-light" or ""
  vim.g.colors_name = "nord" .. style
end

nord.setup = config.setup

return nord
