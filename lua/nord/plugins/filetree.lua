local filetree = {}

local config = require("nord.config")
local utils = require("nord.utils")
local c = require("nord.colors").palette

function filetree.highlights()
  local global_bg = utils.make_global_bg()
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

    NeoTreeDimText = { fg = c.polar_night.brightest },
    NeoTreeDirectoryIcon = { fg = c.frost.artic_water },
    NeoTreeDirectoryName = { fg = c.snow_storm.origin },
    NeoTreeDotfile = { fg = c.polar_night.light },
    NeoTreeFadeText1 = { fg = c.polar_night.brightest },
    NeoTreeFadeText2 = { fg = c.polar_night.brighter },
    NeoTreeFileIcon = { fg = c.snow_storm.origin },
    NeoTreeFileName = { fg = c.snow_storm.origin },
    NeoTreeGitUnstaged = { fg = c.aurora.orange, italic = true },
    NeoTreeGitUntracked = { fg = c.aurora.green, italic = true },
    NeoTreeGitConflict = { fg = c.aurora.red },
    NeoTreeIndentMarker = { fg = c.polar_night.brighter },
    NeoTreeMessage = { fg = c.polar_night.brightest, italic = true },
    NeoTreeModified = { fg = c.aurora.yellow },
    NeoTreeRootName = { fg = c.snow_storm.origin, bold = true },
    NeoTreeSymbolicLinkTarget = { fg = c.frost.artic_water },
    NeoTreeTabActive = { fg = c.snow_storm.origin, bg = c.polar_night.brighter, bold = true },
    NeoTreeTabInactive = { fg = c.polar_night.light, bg = global_bg },
    NeoTreeTabSeparatorActive = { fg = c.polar_night.brighter, bg = global_bg },
    NeoTreeTabSeparatorInactive = { fg = c.polar_night.origin, bg = global_bg },
  }
end

return filetree
