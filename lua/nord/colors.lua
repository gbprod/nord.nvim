local colors = {}

---@class Nord.Palette.PolarNight
---@field origin string nord 0
---@field bright string nord 1
---@field brighter string nord 2
---@field brightest string  nord 3
---@field light string out of palette
---@field comment string out of palette, light-mode comment color

---@class Nord.Palette.SnowStorm
---@field origin string  nord 4
---@field brighter string nord 5
---@field brightest string  nord 6

---@class Nord.Palette.Frost
---@field polar_water string nord 7
---@field ice string nord 8
---@field artic_water string nord 9
---@field artic_ocean string nord 10

---@class Nord.Palette.Aurora
---@field red string nord 11
---@field orange string nord 12
---@field yellow string nord 13
---@field green string nord 14
---@field purple string nord 15

---@class Nord.Palette
---@field polar_night Nord.Palette.PolarNight
---@field snow_storm Nord.Palette.SnowStorm
---@field frost Nord.Palette.Frost
---@field aurora Nord.Palette.Aurora
---@field none string

---@type Nord.Palette
local defaults = {
  polar_night = {
    origin = "#2E3440", -- nord0
    bright = "#3B4252", -- nord1
    brighter = "#434C5E", -- nord2
    brightest = "#4C566A", -- nord3
    light = "#616E88", -- out of palette
  },
  snow_storm = {
    origin = "#D8DEE9", -- nord4
    brighter = "#E5E9F0", -- nord5
    brightest = "#ECEFF4", -- nord6
  },
  frost = {
    polar_water = "#8FBCBB", -- nord7
    ice = "#88C0D0", -- nord8
    artic_water = "#81A1C1", -- nord9
    artic_ocean = "#5E81AC", -- nord10
  },
  aurora = {
    red = "#BF616A", -- nord11
    orange = "#D08770", -- nord12
    yellow = "#EBCB8B", -- nord13
    green = "#A3BE8C", -- nord14
    purple = "#B48EAD", -- nord15
  },
  none = "NONE",
}

-- Light palette: polar_night/snow_storm are semantically swapped so that
-- polar_night fields = light backgrounds and snow_storm fields = dark text.
-- Frost is identical. Aurora uses darkened variants readable on light bg.
---@type Nord.Palette
local light_palette = {
  polar_night = {
    origin = "#ECEFF4",  -- lightest bg
    bright = "#E5E9F0",
    brighter = "#D8DEE9",
    brightest = "#D8DEE9",
    light = "#D8DEE9",
    comment = "#60728A", -- muted blue-grey, readable on light bg
  },
  snow_storm = {
    origin = "#434C5E",  -- darkest text
    brighter = "#3B4252",
    brightest = "#2E3440",
  },
  frost = vim.tbl_extend("force", {}, defaults.frost),
  aurora = {
    red = "#A3253F",
    orange = "#B85C3C",
    yellow = "#B39A00",
    green = "#6B7C3A",
    purple = "#8B4E6C",
  },
  none = "NONE",
}

colors.palette = defaults
colors.light_palette = light_palette
colors.default_bg = defaults.polar_night.origin

-- Built once at module load; maps dark palette hex values to their light
-- equivalents and vice-versa for use in invert_highlight_for_light().
local color_map = {
  -- Polar Night (dark backgrounds) -> Snow Storm (light backgrounds)
  [defaults.polar_night.origin]   = light_palette.polar_night.origin,
  [defaults.polar_night.bright]   = light_palette.polar_night.bright,
  [defaults.polar_night.brighter] = light_palette.polar_night.brighter,
  [defaults.polar_night.brightest]= light_palette.polar_night.brightest,
  [defaults.polar_night.light]    = light_palette.polar_night.comment,

  -- Snow Storm (light text) -> Polar Night (dark text)
  [defaults.snow_storm.origin]    = light_palette.snow_storm.origin,
  [defaults.snow_storm.brighter]  = light_palette.snow_storm.brighter,
  [defaults.snow_storm.brightest] = light_palette.snow_storm.brightest,
}

function colors.daltonize(severity)
  local daltonize = require("nord.utils.colorblind").daltonize

  for group, color in pairs(defaults) do
    if type(color) == "table" then
      for sub_group, sub_color in pairs(color) do
        colors.palette[group][sub_group] = daltonize(sub_color, severity)
      end
    end
  end
end

function colors.apply_style()
  if require("nord.config").options.style == "light" then
    colors.default_bg = light_palette.polar_night.origin
    -- Switch to darkened aurora colors readable on a light background.
    colors.palette.aurora = light_palette.aurora
  end
end

function colors.invert_highlight_for_light(highlight)
  if require("nord.config").options.style ~= "light" then
    return highlight
  end

  local inverted = vim.tbl_extend("force", {}, highlight)

  if inverted.fg and color_map[inverted.fg] then
    inverted.fg = color_map[inverted.fg]
  end
  if inverted.bg and color_map[inverted.bg] then
    inverted.bg = color_map[inverted.bg]
  end

  return inverted
end

return colors
