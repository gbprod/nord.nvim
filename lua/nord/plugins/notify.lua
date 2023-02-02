local utils = require("nord.utils")
local notify = {}

local c = require("nord.colors").palette

function notify.highlights()
  return {
    -- rcarriga/nvim-notify
    NotifyERRORBorder = { fg = utils.darken(c.aurora.red, 0.5, c.polar_night.origin) },
    NotifyERRORIcon = { fg = c.aurora.red },
    NotifyERRORTitle = { fg = c.aurora.red },

    NotifyWARNBorder = { fg = utils.darken(c.aurora.yellow, 0.5, c.polar_night.origin) },
    NotifyWARNIcon = { fg = c.aurora.yellow },
    NotifyWARNTitle = { fg = c.aurora.yellow },

    NotifyINFOBorder = { fg = utils.darken(c.frost.artic_water, 0.5, c.polar_night.origin) },
    NotifyINFOIcon = { fg = c.frost.artic_water },
    NotifyINFOTitle = { fg = c.frost.artic_water },

    NotifyDEBUGBorder = { fg = c.polar_night.bright },
    NotifyDEBUGIcon = { fg = c.snow_storm.origin },
    NotifyDEBUGTitle = { fg = c.snow_storm.origin },

    NotifyTRACEBorder = { fg = utils.darken(c.aurora.purple, 0.5, c.polar_night.origin) },
    NotifyTRACEIcon = { fg = c.aurora.purple },
    NotifyTRACETitle = { fg = c.aurora.purple },

    NotifyBackground = { bg = utils.make_global_bg() },

    -- vigoux/notifier.nvim
    NotifierTitle = { fg = c.frost.polar_water, bold = true },
    NotifierContentDim = { fg = c.polar_night.light },
  }
end

return notify
