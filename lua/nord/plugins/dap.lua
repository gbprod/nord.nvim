local dap = {}

local c = require("nord.colors").palette
local utils = require("nord.utils")

function dap.highlights()
  return {
    DapUIStop = { fg = c.aurora.red },
    DapUIType = { fg = c.aurora.purple },
    DapUIScope = { fg = c.frost.ice },
    DapUISource = { fg = c.aurora.purple },
    DapUIThread = { fg = c.aurora.green },
    DapUIRestart = { fg = c.aurora.green },
    DapUIStepOut = { fg = c.frost.ice },
    DapUIStepBack = { fg = c.frost.ice },
    DapUIStepInto = { fg = c.frost.ice },
    DapUIStepOver = { fg = c.frost.ice },
    DapUIPlayPause = { fg = c.aurora.green },
    DapUIDecoration = { fg = c.frost.ice },
    DapUILineNumber = { fg = c.frost.ice },
    DapUIFloatBorder = { fg = c.frost.ice },
    DapUIUnavailable = { fg = c.polar_night.light },
    DapUIWatchesEmpty = { fg = c.aurora.red },
    DapUIWatchesError = { fg = c.aurora.red },
    DapUIWatchesValue = { fg = c.aurora.green },
    DapUIStoppedThread = { fg = c.frost.ice },
    DapUIBreakpointsInfo = { fg = c.aurora.green },
    DapUIBreakpointsPath = { fg = c.frost.ice },
    DapUIBreakpointsDisabledLine = { fg = c.polar_night.light },
    DapUIModifiedValue = { fg = c.frost.ice, bold = true },
    DapUIBreakpointsCurrentLine = { fg = c.aurora.green, bold = true },
    DapUIWinSelect = { fg = c.frost.ice, bold = true },
    DapUIStopNC = { fg = utils.darken(c.aurora.red, 0.6), bg = utils.make_global_bg() },
    DapUIRestartNC = { fg = utils.darken(c.aurora.green, 0.6), bg = utils.make_global_bg() },
    DapUIStepOutNC = { fg = utils.darken(c.frost.ice, 0.6), bg = utils.make_global_bg() },
    DapUIStepBackNC = { fg = utils.darken(c.frost.ice, 0.6), bg = utils.make_global_bg() },
    DapUIStepIntoNC = { fg = utils.darken(c.frost.ice, 0.6), bg = utils.make_global_bg() },
    DapUIStepOverNC = { fg = utils.darken(c.frost.ice, 0.6), bg = utils.make_global_bg() },
    DapUIPlayPauseNC = { fg = utils.darken(c.aurora.green, 0.6), bg = utils.make_global_bg() },
    DapUIUnavailableNC = { fg = c.polar_night.brightest, bg = utils.make_global_bg() },
    DapUIEndofBuffer = { fg = c.polar_night.brightest, bg = utils.make_global_bg() },
  }
end

return dap
