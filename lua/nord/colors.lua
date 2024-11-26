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

colors.palette = defaults
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

return colors
