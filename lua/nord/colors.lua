local colors = {}

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

  colors.palette = {
    polar_night = {
      origin = daltonize(defaults.polar_night.origin, severity),
      bright = daltonize(defaults.polar_night.bright, severity),
      brighter = daltonize(defaults.polar_night.brighter, severity),
      brightest = daltonize(defaults.polar_night.brightest, severity),
      light = daltonize(defaults.polar_night.light, severity),
    },
    snow_storm = {
      origin = daltonize(defaults.snow_storm.origin, severity),
      brighter = daltonize(defaults.snow_storm.brighter, severity),
      brightest = daltonize(defaults.snow_storm.brightest, severity),
    },
    frost = {
      polar_water = daltonize(defaults.frost.polar_water, severity),
      ice = daltonize(defaults.frost.ice, severity),
      artic_water = daltonize(defaults.frost.artic_water, severity),
      artic_ocean = daltonize(defaults.frost.artic_ocean, severity),
    },
    aurora = {
      red = daltonize(defaults.aurora.red, severity),
      orange = daltonize(defaults.aurora.orange, severity),
      yellow = daltonize(defaults.aurora.yellow, severity),
      green = daltonize(defaults.aurora.green, severity),
      purple = daltonize(defaults.aurora.purple, severity),
    },
    none = "NONE",
  }
end

return colors
