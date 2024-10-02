local config = {}

local defaults = {
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  diff = { mode = "bg" }, -- [bg|fg]
  search = { theme = "vim" }, -- [vim|vscode]
  borders = true,
  errors = { mode = "bg" }, -- [bg|fg|none]
  -- Value is any valid attr-list value for `:help nvim_set_hl`
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    errors = {},

    -- To customize lualine/bufferline
    bufferline = {
      current = {},
      modified = { italic = true },
    },
  },
  colorblind = {
    enable = false,
    preserve_background = false,
    severity = {
      protan = 0,
      deutan = 0,
      tritan = 0,
    },
  },
  -- You can override colors
  on_colors = function(colors) end,

  -- You can override specific highlights to use other groups or a hex color
  on_highlights = function(highlights, colors) end,
}

config.options = {}

function config.setup(options)
  config.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

function config.extend(options)
  config.options = vim.tbl_deep_extend("force", {}, config.options or defaults, options or {})
end

config.setup()

return config
