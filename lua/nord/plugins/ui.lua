local ui = {}

local c = require("nord.colors")

function ui.highlights()
  return {
    -- WhichKey
    WhichKey = { fg = c.frost.ice, bold = true },
    WhichKeyGroup = { fg = c.frost.artic_water },
    WhichKeyDesc = { fg = c.snow_storm.origin },
    WhichKeyFloat = { bg = c.polar_night.bright },

    -- Navic
    NavicIconsFile = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsModule = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsNamespace = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsPackage = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsClass = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsMethod = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsProperty = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsField = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsConstructor = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsEnum = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsInterface = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsFunction = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsVariable = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsConstant = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsString = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsNumber = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsBoolean = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsArray = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsObject = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsKey = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsKeyword = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsNull = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsEnumMember = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsStruct = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsEvent = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsOperator = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicIconsTypeParameter = { fg = c.frost.polar_water, bg = c.polar_night.brightest },
    NavicText = { fg = c.snow_storm.origin, bg = c.polar_night.brightest },
    NavicSeparator = { fg = c.frost.artic_water, bg = c.polar_night.brightest },
  }
end

return ui
