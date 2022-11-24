local filetree = {}

local config = require("nord.config")
local c = require("nord.colors")

function filetree.highlights()
  return {
    -- NvimTree
    NvimTreeNormal = { fg = c.snow_storm.origin },
    NvimTreeWinSeparator = { fg = config.options.borders and c.polar_night.bright or c.none },
    NvimTreeNormalNC = { fg = c.snow_storm.origin },
    NvimTreeRootFolder = { fg = c.snow_storm.origin, bold = true },
    NvimTreeGitDirty = { fg = c.aurora.yellow },
    NvimTreeGitNew = { fg = c.aurora.green },
    NvimTreeGitDeleted = { fg = c.aurora.red },
    NvimTreeGitIgnored = { fg = c.polar_night.light },
    NvimTreeSpecialFile = { fg = c.aurora.yellow, underline = true },
    NvimTreeIndentMarker = { fg = c.frost.artic_water },
    NvimTreeImageFile = { fg = c.snow_storm.origin },
    NvimTreeSymlink = { fg = c.frost.artic_water },
    NvimTreeFolderIcon = { fg = c.frost.artic_water },
    NvimTreeOpenedFolderName = { fg = c.snow_storm.origin },
  }
end

return filetree
