local utils = require("nord.utils")

local bufferline = {}

local c = require("nord.colors")

function bufferline.highlights()
  return {
    -- Barbar
    BufferTabpageFill = { bg = c.polar_night.origin },

    BufferCurrent = { bg = c.polar_night.brighter },
    BufferCurrentIndex = { bg = c.polar_night.brighter },
    BufferCurrentMod = { bg = c.polar_night.brighter, fg = c.aurora.yellow },
    BufferCurrentSign = { bg = c.polar_night.brighter },
    BufferCurrentTarget = { bg = c.polar_night.brighter, fg = c.aurora.red },

    BufferVisible = { bg = c.polar_night.bright },
    BufferVisibleIndex = { bg = c.polar_night.bright },
    BufferVisibleMod = { bg = c.polar_night.bright, fg = c.aurora.yellow },
    BufferVisibleSign = { bg = c.polar_night.bright },
    BufferVisibleTarget = { bg = c.polar_night.bright, fg = c.aurora.red },

    BufferInactive = { bg = c.polar_night.origin, fg = utils.darken(c.snow_storm.origin, 0.4) },
    BufferInactiveIndex = { bg = c.polar_night.origin, fg = utils.darken(c.snow_storm.origin, 0.4) },
    BufferInactiveMod = { bg = c.polar_night.origin, fg = utils.darken(c.aurora.yellow, 0.4) },
    BufferInactiveSign = { bg = c.polar_night.origin, fg = utils.darken(c.snow_storm.origin, 0.4) },
    BufferInactiveTarget = { bg = c.polar_night.origin, fg = c.aurora.red },
    BufferTabpages = { bg = c.bg_statusline, fg = c.none },
    BufferTabpage = { bg = c.bg_statusline, fg = c.border_highlight },
  }
end

return bufferline
