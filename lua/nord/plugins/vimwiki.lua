local vimwiki = {}

local c = require("nord.colors").palette

function vimwiki.highlights()
  return {
    VimwikiLink = { fg = c.aurora.green, bg = c.none },
    VimwikiHeaderChar = { fg = c.polar_night.light, bg = c.none },
    VimwikiHR = { fg = c.aurora.yellow, bg = c.none },
    VimwikiList = { fg = c.frost.artic_water, bg = c.none },
    VimwikiTag = { fg = c.aurora.green, bg = c.none },
    VimwikiMarkers = { fg = c.frost.artic_ocean, bg = c.none },
    VimwikiHeader1 = { fg = c.frost.artic_ocean, bg = c.none, bold = true },
    VimwikiHeader2 = { fg = c.frost.artic_water, bg = c.none, bold = true },
    VimwikiHeader3 = { fg = c.frost.ice, bg = c.none, bold = true },
    VimwikiHeader4 = { fg = c.frost.polar_water, bg = c.none, bold = true },
    VimwikiHeader5 = { fg = c.polar_night.light, bg = c.none, bold = true },
    VimwikiHeader6 = { fg = c.polar_night.brightest, bg = c.none, bold = true },
  }
end

return vimwiki
