local terminal = {}

local c = require("nord.colors").palette

function terminal.apply()
  -- dark
  vim.g.terminal_color_0 = c.polar_night.bright
  vim.g.terminal_color_8 = c.polar_night.brightest

  -- light
  vim.g.terminal_color_7 = c.snow_storm.brighter
  vim.g.terminal_color_15 = c.snow_storm.brightest

  -- colors
  vim.g.terminal_color_1 = c.aurora.red
  vim.g.terminal_color_9 = c.aurora.red

  vim.g.terminal_color_2 = c.aurora.green
  vim.g.terminal_color_10 = c.aurora.green

  vim.g.terminal_color_3 = c.aurora.yellow
  vim.g.terminal_color_11 = c.aurora.yellow

  vim.g.terminal_color_4 = c.frost.artic_water
  vim.g.terminal_color_12 = c.frost.artic_water

  vim.g.terminal_color_5 = c.aurora.purple
  vim.g.terminal_color_13 = c.aurora.purple

  vim.g.terminal_color_6 = c.frost.ice
  vim.g.terminal_color_14 = c.frost.polar_water
end

function terminal.apply_light_adjustments()
  if require("nord.config").options.style ~= "light" then
    return
  end

  -- In light mode swap the dark/light terminal base colors using light_palette,
  -- which is the semantic inverse of the dark palette.
  local light_c = require("nord.colors").light_palette
  vim.g.terminal_color_0 = light_c.snow_storm.origin    -- dark terminal bg -> light text
  vim.g.terminal_color_8 = light_c.snow_storm.brighter
  vim.g.terminal_color_7 = light_c.polar_night.bright   -- light terminal bg -> dark bg
  vim.g.terminal_color_15 = light_c.polar_night.origin
end

function terminal.highlights()
  return {
    TermCursor = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- cursor in a focused terminal
    TermCursorNC = { fg = c.polar_night.brightest, bg = c.none, reverse = true }, -- cursor in an unfocused terminal
  }
end

return terminal
