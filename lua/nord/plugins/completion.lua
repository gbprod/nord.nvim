local cmp = {}

local c = require("nord.colors").palette

function cmp.highlights()
  return {
    CmpItemAbbrDeprecated = { fg = c.polar_night.light },
    CmpItemAbbrMatch = { fg = c.frost.ice, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.frost.ice, bold = true },
    CmpItemKind = { fg = c.frost.artic_water },
    CmpItemKindVariable = { fg = c.frost.ice },
    CmpItemKindInterface = { fg = c.frost.ice },
    CmpItemKindClass = { fg = c.frost.ice },
    CmpItemKindFunction = { fg = c.aurora.purple },
    CmpItemKindMethod = { fg = c.aurora.purple },
    CmpItemKindSnippet = { fg = c.aurora.green },
    CmpItemKindText = { fg = c.snow_storm.origin },

    CodeiumSuggestion = { fg = c.polar_night.light },
  }
end

return cmp
