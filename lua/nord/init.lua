local config = require("nord.config")
local utils = require("nord.utils")
local colors = require("nord.colors")
local terminal = require("nord.terminal")

local nord = {}

function nord.load(opts)
  if opts then
    config.extend(opts)
  end

  vim.o.termguicolors = true

  if config.options.colorblind.enable then
    colors.daltonize(config.options.colorblind.severity)
  end

  colors.apply_style()
  config.options.on_colors(colors.palette)

  -- Silence lualine's ColorScheme/OptionSet autocmds while we apply the theme,
  -- so intermediate events (highlight clear, background change) don't trigger
  -- a premature lualine reload with stale highlights.
  vim.cmd([[augroup lualine | exe "autocmd!" | augroup END]])

  -- Set background before highlight clear so Neovim resets to the correct
  -- base defaults (light or dark) and downstream plugins know the variant.
  vim.o.background = config.options.style == "light" and "light" or "dark"

  vim.cmd([[highlight clear]])

  if config.options.terminal_colors then
    terminal.apply()
    terminal.apply_light_adjustments()
  end

  utils.load(
    utils.apply_light_mode(require("nord.defaults").highlights()),
    utils.apply_light_mode(require("nord.lsp").highlights()),
    utils.apply_light_mode(require("nord.syntax").highlights()),
    utils.apply_light_mode(terminal.highlights()),
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

  -- Always "nord" so lualine's auto theme resolves to lualine/themes/nord.lua.
  vim.g.colors_name = "nord"

  -- Re-register lualine's ColorScheme/OptionSet autocmds (cleared above) and
  -- reload its theme once all highlights are in place. Deferred so plugins
  -- like Snacks that lualine may reference are guaranteed to be loaded.
  vim.schedule(function()
    local ok, lualine = pcall(require, "lualine")
    if ok and lualine.get_config then
      lualine.setup(lualine.get_config())
    end
  end)
end

nord.setup = config.setup

return nord
