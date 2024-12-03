local utils = {}
local c = require("nord.colors").palette

local function get_cachable_config()
  local options = require("nord.config").options
  local cached_options = vim.deepcopy(options)
  cached_options.on_highlights = nil
  cached_options.on_colors = nil
  return {
    opts = cached_options,
    colors = c,
  }
end

function utils.load(func)
  local options = require("nord.config").options
  local cacheable_config = get_cachable_config()
  local ok, tbl = pcall(utils.load_from_file, "config")
  local highlights = nil
  if ok and tbl and vim.deep_equal(tbl.config, cacheable_config) then
    highlights = tbl.highlights
  else
    highlights = vim.tbl_extend("force", func())
    local ok, err = pcall(utils.save_to_file, "config", { config = cacheable_config, highlights = highlights })
    if not ok then
      vim.notify("Failed to save cache: " .. err, vim.log.levels.WARN)
    end
  end
  options.on_highlights(highlights, c)
  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

function utils.make_diff(color)
  local options = require("nord.config").options

  return { fg = color, bg = c.polar_night.bright, reverse = options.diff.mode ~= "fg" }
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
  local darken = utils.blend(hex, bg or c.polar_night.origin, amount)

  local options = require("nord.config").options
  if not options.colorblind.enabled then
    return darken
  end

  return require("nord.utils.colorblind").daltonize(darken, options.colorblind.severity)
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

function utils.make_global_bg(transparent)
  local options = require("nord.config").options

  if options.transparent and transparent then
    return c.none
  end

  if options.colorblind.enable and options.colorblind.preserve_background then
    return require("nord.colors").default_bg
  end

  return c.polar_night.origin
end

local function cache_filename(filename)
  return vim.fn.stdpath("cache") .. "/nord-" .. filename .. ".json"
end

function utils.save_to_file(filename, object)
  filename = cache_filename(filename)
  local file, err = io.open(filename, "w")
  if not file then
    error("Failed to open file for writing: " .. err)
  end
  local success, encoded = pcall(vim.json.encode, object)
  if not success then
    error("Failed to encode cache: " .. encoded)
  end
  file:write(encoded)
  file:close()
end

function utils.load_from_file(filename)
  filename = cache_filename(filename)
  local file, err = io.open(filename, "r")
  if not file then
    error("Failed to open file for reading: " .. err)
  end
  local content = file:read("*a")
  file:close()
  local success, decoded = pcall(vim.json.decode, content, {
    object = true,
    array = true,
  })
  if not success then
    error("Failed to decode file content: " .. decoded)
  end
  return decoded
end

return utils
