local utils = require("nord.utils")
local config = require("nord.config").options.styles.bufferline

local bufferline = {}

local c = require("nord.colors").palette

function bufferline.highlights()
  local current_hi = vim.tbl_extend("force", { bg = c.polar_night.brighter }, config.current)
  local global_bg = utils.make_global_bg()

  return {
    -- Barbar
    BufferTabpageFill = { bg = global_bg, fg = c.polar_night.origin },
    BufferCurrent = current_hi,
    BufferCurrentIndex = current_hi,
    BufferCurrentMod = vim.tbl_extend("force", { bg = c.polar_night.brighter, fg = c.aurora.yellow }, config.modified),
    BufferCurrentSign = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
    BufferCurrentTarget = vim.tbl_extend(
      "force",
      { bg = c.polar_night.brighter, fg = c.aurora.red, bold = true },
      config.current
    ),
    BufferCurrentHINT = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
    BufferCurrentINFO = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
    BufferCurrentWARN = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
    BufferCurrentERROR = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
    BufferVisible = { bg = c.polar_night.bright },
    BufferVisibleIndex = { bg = c.polar_night.bright },
    BufferVisibleMod = vim.tbl_extend("force", { bg = c.polar_night.bright, fg = c.aurora.yellow }, config.modified),
    BufferVisibleSign = { bg = c.polar_night.bright, fg = c.frost.artic_water },
    BufferVisibleTarget = { bg = c.polar_night.bright, fg = c.aurora.red, bold = true },
    BufferVisibleHINT = { bg = c.polar_night.bright, fg = c.frost.artic_water },
    BufferVisibleINFO = { bg = c.polar_night.bright, fg = c.frost.ice },
    BufferVisibleWARN = { bg = c.polar_night.bright, fg = c.aurora.yellow },
    BufferVisibleERROR = { bg = c.polar_night.bright, fg = c.aurora.red },
    BufferInactive = { bg = global_bg, fg = c.polar_night.light },
    BufferInactiveIndex = { bg = global_bg, fg = c.polar_night.light },
    BufferInactiveMod = vim.tbl_extend(
      "force",
      { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) },
      config.modified
    ),
    BufferInactiveSign = { bg = global_bg, fg = c.polar_night.origin },
    BufferInactiveTarget = { bg = global_bg, fg = c.aurora.red, bold = true },
    BufferInactiveHINT = { bg = global_bg, fg = utils.darken(c.frost.artic_water, 0.4) },
    BufferInactiveINFO = { bg = global_bg, fg = utils.darken(c.frost.ice, 0.4) },
    BufferInactiveWARN = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) },
    BufferInactiveERROR = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.4) },
    BufferTabpages = { bg = global_bg, fg = c.none },
    BufferTabpage = { bg = global_bg, fg = c.none },
  }
end

function bufferline.akinsho()
  local current_hi =
    vim.tbl_extend("force", { bg = c.polar_night.brighter, italic = false, bold = false }, config.current)
  local global_bg = utils.make_global_bg()

  return {
    fill = { bg = global_bg, fg = c.polar_night.light },
    background = { bg = global_bg, fg = c.polar_night.light },
    numbers = { bg = global_bg },
    close_button = { bg = global_bg },
    separator = { bg = global_bg, fg = c.polar_night.origin },
    duplicate = { bg = global_bg },
    modified = vim.tbl_extend("force", { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.4) }, config.modified),
    pick = { bg = global_bg, bold = true, italic = false },
    diagnostic = { bg = global_bg },
    hint = { bg = global_bg, fg = utils.darken(c.frost.artic_water, 0.6) },
    hint_diagnostic = { bg = global_bg, fg = utils.darken(c.frost.artic_water, 0.6) },
    info = { bg = global_bg, fg = utils.darken(c.frost.ice, 0.6) },
    info_diagnostic = { bg = global_bg, fg = utils.darken(c.frost.ice, 0.6) },
    warning = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.6) },
    warning_diagnostic = { bg = global_bg, fg = utils.darken(c.aurora.yellow, 0.6) },
    error_diagnostic = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.6) },
    error = { bg = global_bg, fg = utils.darken(c.aurora.red, 0.6) },
    buffer_selected = current_hi,
    numbers_selected = current_hi,
    close_button_selected = current_hi,
    modified_selected = vim.tbl_extend("force", { bg = c.polar_night.brighter, fg = c.aurora.yellow }, config.modified),
    separator_selected = { bg = c.polar_night.brighter, fg = c.polar_night.origin },
    duplicate_selected = current_hi,
    pick_selected = vim.tbl_extend("force", current_hi, { bold = true }),
    indicator_selected = { fg = c.frost.artic_water, bg = c.polar_night.brighter },
    indicator_visible = { fg = c.frost.artic_ocean, bg = c.polar_night.bright },
    diagnostic_selected = current_hi,
    hint_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
    hint_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
    info_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
    info_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
    warning_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
    warning_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
    error_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
    error_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
    buffer_visible = { bg = c.polar_night.bright },
    numbers_visible = { bg = c.polar_night.bright },
    close_button_visible = { bg = c.polar_night.bright },
    modified_visible = vim.tbl_extend("force", { bg = c.polar_night.bright, fg = c.aurora.yellow }, config.modified),
    separator_visible = { bg = global_bg, fg = c.polar_night.origin },
    duplicate_visible = { bg = c.polar_night.bright },
    pick_visible = { bg = c.polar_night.bright, bold = true, italic = false },
    diagnostic_visible = { bg = c.polar_night.bright },
    hint_visible = { bg = c.polar_night.bright, fg = c.frost.artic_water },
    hint_diagnostic_visible = { bg = c.polar_night.bright, fg = c.frost.artic_water },
    info_visible = { bg = c.polar_night.bright, fg = c.frost.ice },
    info_diagnostic_visible = { bg = c.polar_night.bright, fg = c.frost.ice },
    warning_visible = { bg = c.polar_night.bright, fg = c.aurora.yellow },
    warning_diagnostic_visible = { bg = c.polar_night.bright, fg = c.aurora.yellow },
    error_visible = { bg = c.polar_night.bright, fg = c.aurora.red },
    error_diagnostic_visible = { bg = c.polar_night.bright, fg = c.aurora.red },
    tab = { fg = c.snow_storm.origin, bg = global_bg },
    tab_selected = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },
    tab_separator = { fg = c.polar_night.origin, bg = global_bg },
    tab_separator_selected = { fg = c.aurora.purple, bg = c.polar_night.brighter },
    tab_close = { fg = c.snow_storm.origin, bg = global_bg },
    trunc_marker = { bg = global_bg, fg = c.polar_night.light },
  }
end

return bufferline
