local config = {}

local defaults = {
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim

  diff = { mode = "bg" }, -- [bg|fg]
  borders = true,
  errors = { mode = "bg" }, -- [bg|fg|none]

  styles = {
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    errors = {},
  },
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
