# 🖌️ nord.nvim

Neovim theme using the [Nord palette](https://www.nordtheme.com/) that tries to
be as close as possible to the [official vim theme](https://github.com/arcticicestudio/nord-vim/)
and [the official vscode theme](https://github.com/arcticicestudio/nord-visual-studio-code).

**This colorscheme still under developement, please, keep calm and report issues**

> "Arctic, north-bluish clean and elegant" - arcticicestudio


![2022-12-01-142011_1277x703_scrot](https://user-images.githubusercontent.com/3751019/205092735-ced8ba05-d15d-4751-9a88-17cefef5ec52.png)
![2022-12-01-142157_1270x700_scrot](https://user-images.githubusercontent.com/3751019/205092727-a266d2c8-35fd-4272-b90f-c1f063591e58.png)
![2022-12-01-142111_1276x700_scrot](https://user-images.githubusercontent.com/3751019/205092730-9874369f-d045-47c6-8b07-5371cf344223.png)
![2022-12-01-142044_1265x634_scrot](https://user-images.githubusercontent.com/3751019/205092733-3aebea83-c5a8-4e96-ab2e-a4646cc9e3ea.png)

## ✨ Features {#features}

- supports TreeSitter and LSP
- vim terminal colors
- **lualine** theme

### Plugin Support

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Leap](https://github.com/ggandor/leap.nvim)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [Cmp](https://github.com/hrsh7th/nvim-cmp/)
- [Navic](https://github.com/SmiteshP/nvim-navic)
- [Aerial](https://github.com/stevearc/aerial.nvim)

You're preferred plugin is missing ? Open an issue or, even better, open a pull
request 😉.

## ⚡️ Requirements

- Neovim >= 0.8.0

## 📦 Installation

Install the theme with your preferred package manager:

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'gbprod/nord.nvim'
```

## 🚀 Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme nord
```

```lua
-- Lua
vim.cmd[[colorscheme nord]]
```

To enable the `nord` theme for `Lualine`, simply specify it in your
lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'nord'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with
> `colorscheme nord`

Nord.nvim will use the default options, unless you call `setup`.

```lua
require("nord").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  diff = { mode = "bg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
  borders = true, -- Enable the border between verticaly split windows visible
  errors = { mode = "bg" }, -- Display mode for errors and diagnostics
                            -- values : [bg|fg|none]
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
})
```

## 🎉 Credits

- [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim): pretty good
  Nord theme for Neovim but too far from original and requires too much
  customisation for me.
- [arcticicestudio/nord-visual-studio-code](https://github.com/arcticicestudio/nord-visual-studio-code): For color picking
- [arcticicestudio/nord-vim](https://github.com/arcticicestudio/nord-vim): For
  his years of good and loyal service.
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim): For a lot
  of code inspiration.
