local notify = {}

local c = require("nord.colors")

function notify.highlights()
  return {
    NotifyERRORBorder = { fg = c.aurora.red },
    NotifyERRORIcon = { fg = c.aurora.red },
    NotifyERRORTitle = { fg = c.aurora.red },
    NotifyERRORBody = { link = "Normal" },

    NotifyWARNBorder = { fg = c.aurora.yellow },
    NotifyWARNIcon = { fg = c.aurora.yellow },
    NotifyWARNTitle = { fg = c.aurora.yellow },
    NotifyWARNBody = { link = "Normal" },

    NotifyINFOBorder = { fg = c.frost.ice },
    NotifyINFOIcon = { fg = c.frost.ice },
    NotifyINFOTitle = { fg = c.frost.ice },
    NotifyINFOBody = { link = "Normal" },

    NotifyDEBUGBorder = { fg = c.polar_night.brightest },
    NotifyDEBUGIcon = { fg = c.polar_night.brightest },
    NotifyDEBUGTitle = { fg = c.polar_night.brightest },
    NotifyDEBUGBody = { link = "Normal" },

    NotifyTRACEBorder = { fg = c.aurora.purple },
    NotifyTRACEIcon = { fg = c.aurora.purple },
    NotifyTRACETitle = { fg = c.aurora.purple },
    NotifyTRACEBody = { link = "Normal" },
  }
end

return notify
