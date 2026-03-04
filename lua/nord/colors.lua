local colors = {}

---@class Nord.Palette.PolarNight
---@field origin string nord 0
---@field bright string nord 1
---@field brighter string nord 2
---@field brightest string  nord 3
---@field light string out of palette

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

---@type Nord.Palette
local light_palette = {
  polar_night = {
    origin = "#ECEFF4",
    bright = "#E5E9F0",
    brighter = "#D8DEE9",
    brightest = "#D8DEE9",
    light = "#D8DEE9",
  },
  snow_storm = {
    origin = "#434C5E",
    brighter = "#3B4252",
    brightest = "#2E3440",
  },
  frost = vim.tbl_extend("force", {}, defaults.frost),
  aurora = {
    red = "#BF616A",
    orange = "#D08770",
    yellow = "#EBCB8B",
    green = "#A3BE8C",
    purple = "#B48EAD",
  },
  none = "NONE",
}

colors.palette = defaults
colors.light_palette = light_palette
colors.default_bg = "#2E3440" -- nord0

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

    -- Use darkened aurora colors for light background
    colors.palette.aurora = {
      red = "#A3253F",
      orange = "#B85C3C",
      yellow = "#B39A00",
      green = "#6B7C3A",
      purple = "#8B4E6C",
    }
  end
end

function colors.invert_highlight_for_light(highlight)
  if require("nord.config").options.style ~= "light" then
    return highlight
  end

  local inverted = vim.tbl_extend("force", {}, highlight)

  -- Bidirectional color mapping for light mode
  local color_map = {
    -- Polar Night to Snow Storm
    ["#2E3440"] = "#ECEFF4", -- polar_night.origin -> snow_storm.brightest
    ["#3B4252"] = "#E5E9F0", -- polar_night.bright -> snow_storm.brighter
    ["#434C5E"] = "#D8DEE9", -- polar_night.brighter -> snow_storm.origin
    ["#4C566A"] = "#D8DEE9", -- polar_night.brightest -> snow_storm.origin

    -- Snow Storm to Polar Night
    ["#D8DEE9"] = "#434C5E", -- snow_storm.origin -> polar_night.brighter
    ["#E5E9F0"] = "#3B4252", -- snow_storm.brighter -> polar_night.bright
    ["#ECEFF4"] = "#2E3440", -- snow_storm.brightest -> polar_night.origin
  }

  if inverted.fg and color_map[inverted.fg] then
    inverted.fg = color_map[inverted.fg]
  end
  if inverted.bg and color_map[inverted.bg] then
    inverted.bg = color_map[inverted.bg]
  end

  return inverted
end

return colors
