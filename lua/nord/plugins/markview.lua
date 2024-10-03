local M = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function M.highlights()
  return {
    MarkviewCode = { bg = c.polar_night.bright },
    MarkviewInlineCode = { bg = c.polar_night.bright },

    MarkviewHeading1 = { fg = c.aurora.green, bg = utils.darken(c.aurora.green, 0.1) },
    MarkviewHeading2 = { fg = c.aurora.yellow, bg = utils.darken(c.aurora.yellow, 0.1) },
    MarkviewHeading3 = { fg = c.aurora.purple, bg = utils.darken(c.aurora.purple, 0.1) },
    MarkviewHeading4 = { fg = c.frost.polar_water, bg = utils.darken(c.frost.polar_water, 0.1) },
    MarkviewHeading5 = { fg = c.frost.ice, bg = utils.darken(c.frost.ice, 0.1) },
    MarkviewHeading6 = { fg = c.frost.artic_ocean, bg = utils.darken(c.frost.artic_ocean, 0.1) },

    MarkviewHeading1Sign = { fg = c.aurora.green },
    MarkviewHeading2Sign = { fg = c.aurora.yellow },
    MarkviewHeading3Sign = { fg = c.aurora.purple },
    MarkviewHeading4Sign = { fg = c.frost.polar_water },
    MarkviewHeading5Sign = { fg = c.frost.ice },
    MarkviewHeading6Sign = { fg = c.frost.artic_ocean },
  }
end

return M
