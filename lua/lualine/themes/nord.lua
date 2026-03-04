local function get_colors()
  local colors = require("nord.colors")
  local config = require("nord.config")
  return config.options.style == "light" and colors.light_palette or colors.palette
end

local function get_theme()
  local c = get_colors()
  local config = require("nord.config")

  local nord = {}

  nord.normal = {
    a = { fg = c.polar_night.bright, bg = c.frost.ice },
    b = { fg = c.snow_storm.brighter, bg = c.polar_night.bright },
    c = { fg = c.snow_storm.brighter, bg = c.polar_night.brighter },
  }

  nord.insert = {
    a = { fg = c.polar_night.bright, bg = c.snow_storm.origin },
  }

  nord.visual = {
    a = { fg = c.polar_night.bright, bg = c.frost.polar_water },
  }

  nord.replace = {
    a = { fg = c.polar_night.bright, bg = c.aurora.yellow },
  }

  nord.command = {
    a = { fg = c.polar_night.bright, bg = c.aurora.purple },
  }

  nord.inactive = {
    a = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
    b = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
    c = { fg = c.snow_storm.origin, bg = c.polar_night.bright },
  }

  if config.options.styles and config.options.styles.lualine_bold then
    for _, mode in pairs(nord) do
      mode.a.gui = "bold"
    end
  end

  return nord
end

return get_theme()
