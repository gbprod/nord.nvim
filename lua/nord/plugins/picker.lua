local picker = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function picker.highlights()
  return {
    TelescopeBorder = { fg = c.polar_night.light, bg = utils.make_global_bg(true) },
    TelescopeTitle = { fg = c.snow_storm.origin, bold = true },
    TelescopePromptCounter = { fg = c.polar_night.light },
    TelescopeMatching = { fg = c.frost.ice, bold = true },

    FzfLuaBorder = { fg = c.polar_night.light, bg = utils.make_global_bg() },
    FzfLuaTitle = { fg = c.snow_storm.origin, bold = true },
    FzfLuaHeaderBind = { fg = c.frost.ice },
    FzfLuaHeaderText = { fg = c.frost.artic_ocean },
    FzfLuaPathColNr = { fg = c.frost.ice },
    FzfLuaPathLineNr = { fg = c.aurora.green },
    FzfLuaBufNr = { fg = c.aurora.yellow },
    FzfLuaBufFlagCur = { fg = c.aurora.red },
    FzfLuaBufFlagAlt = { fg = c.frost.ice },
    FzfLuaTabTitle = { fg = c.frost.artic_water },
    FzfLuaTabMarker = { fg = c.aurora.yellow },
    FzfLuaLiveSym = { fg = c.aurora.red },
  }
end

return picker
