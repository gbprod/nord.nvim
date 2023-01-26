local picker = {}

local c = require("nord.colors").palette

function picker.highlights()
  return {
    TelescopeBorder = { fg = c.polar_night.light, bg = c.polar_night.origin },
    TelescopeTitle = { fg = c.snow_storm.origin, bold = true },
    TelescopePromptCounter = { fg = c.polar_night.light },
    TelescopeMatching = { fg = c.frost.ice, bold = true },
  }
end

return picker
