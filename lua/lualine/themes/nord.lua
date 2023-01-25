local c = require("nord.colors")

local nord = {}

nord.normal = {
  a = { fg = c.polar_night.bright, bg = c.frost.ice },
  b = { fg = c.snow_storm.brighter, bg = c.polar_night.bright },
  c = { fg = c.snow_storm.brighter, bg = c.polar_night.brighter },
}

nord.insert = {
  a = { fg = c.polar_night.bright, bg = c.snow_storm.brightest },
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

local make_up = require("nord.utils.colorblind").make_up

nord.normal = make_up(nord.normal)
nord.insert = make_up(nord.insert)
nord.visual = make_up(nord.visual)
nord.replace = make_up(nord.replace)
nord.command = make_up(nord.command)
nord.inactive = make_up(nord.inactive)

return nord
