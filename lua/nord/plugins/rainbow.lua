local c = require("nord.colors")

local rainbow = {}

function rainbow.highlights()
  return {
    rainbowcol1 = { fg = c.frost.artic_water },
    rainbowcol2 = { fg = c.aurora.green },
    rainbowcol3 = { fg = c.aurora.red },
    rainbowcol4 = { fg = c.aurora.yellow },
    rainbowcol5 = { fg = c.frost.polar_water },
    rainbowcol6 = { fg = c.aurora.purple },
    rainbowcol7 = { fg = c.snow_storm.origin },
  }
end

return rainbow
