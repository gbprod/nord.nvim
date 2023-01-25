local utils = {}
local c = require("nord.colors")

function utils.load(...)
  local highlights = vim.tbl_extend("force", ...)
  local options = require("nord.config").options
  options.on_highlights(highlights, c)
  highlights = require("nord.utils.colorblind").make_up(highlights)
  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

function utils.make_diff(color)
  local options = require("nord.config").options

  return { fg = color, bg = c.none, reverse = options.diff.mode ~= "fg" }
end

function utils.make_error(color)
  local options = require("nord.config").options
  if options.errors.mode == "bg" then
    return vim.tbl_extend("force", { bg = color }, options.styles.errors)
  elseif options.errors.mode == "fg" then
    return vim.tbl_extend("force", { undercurl = true, sp = color, fg = color }, options.styles.errors)
  else
    return vim.tbl_extend("force", { undercurl = true, sp = color }, options.styles.errors)
  end
end

function utils.darken(hex, amount, bg)
  return utils.blend(hex, bg or c.polar_night.origin, amount)
end

local function hexToRgb(color)
  color = string.lower(color)
  return { tonumber(color:sub(2, 3), 16), tonumber(color:sub(4, 5), 16), tonumber(color:sub(6, 7), 16) }
end

function utils.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = hexToRgb(background)
  local fg = hexToRgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

return utils
