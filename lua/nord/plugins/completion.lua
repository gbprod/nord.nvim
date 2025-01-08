local cmp = {}

local c = require("nord.colors").palette

function cmp.highlights()
  return {
    CmpItemAbbrDeprecated = { fg = c.polar_night.light },
    CmpItemAbbrMatch = { fg = c.frost.ice, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.frost.ice, bold = true },
    CmpItemKind = { fg = c.frost.artic_water },
    CmpItemKindVariable = { fg = c.frost.ice },
    CmpItemKindInterface = { fg = c.frost.ice },
    CmpItemKindClass = { fg = c.frost.ice },
    CmpItemKindFunction = { fg = c.aurora.purple },
    CmpItemKindMethod = { fg = c.aurora.purple },
    CmpItemKindSnippet = { fg = c.aurora.green },
    CmpItemKindText = { fg = c.snow_storm.origin },

    CodeiumSuggestion = { fg = c.polar_night.light },

    BlinkCmpMenuBorder = { fg = c.polar_night.bright },
    BlinkCmpMenuSelection = { fg = c.none, bg = c.polar_night.brighter },
    BlinkCmpLabelDeprecated = { fg = c.polar_night.light },
    BlinkCmpLabelMatch = { fg = c.polar_night.ice, bold = true },
    BlinkCmpGhostText = { fg = c.polar_night.light },
    BlinkCmpDocBorder = { fg = c.polar_night.bright },
    BlinkCmpSignatureHelpBorder = { fg = c.polar_night.bright },
    BlinkCmpKindArray = { link = "@lsp.type.array" },
    BlinkCmpKindBoolean = { link = "@lsp.type.boolean" },
    BlinkCmpKindClass = { link = "@lsp.type.class" },
    BlinkCmpKindColor = { link = "@lsp.type.color" },
    BlinkCmpKindConstant = { link = "@lsp.type.constant" },
    BlinkCmpKindConstructor = { link = "@lsp.type.constructor" },
    BlinkCmpKindEnum = { link = "@lsp.type.enum" },
    BlinkCmpKindEnumMember = { link = "@lsp.type.enumMember" },
    BlinkCmpKindEvent = { link = "@lsp.type.event" },
    BlinkCmpKindField = { link = "@lsp.type.field" },
    BlinkCmpKindFile = { link = "@lsp.type.file" },
    BlinkCmpKindFolder = { link = "@lsp.type.folder" },
    BlinkCmpKindFunction = { link = "@lsp.type.function" },
    BlinkCmpKindInterface = { link = "@lsp.type.interface" },
    BlinkCmpKindKey = { link = "@lsp.type.key" },
    BlinkCmpKindKeyword = { link = "@lsp.type.keyword" },
    BlinkCmpKindMethod = { link = "@lsp.type.method" },
    BlinkCmpKindModule = { link = "@lsp.type.module" },
    BlinkCmpKindNamespace = { link = "@lsp.type.namespace" },
    BlinkCmpKindNull = { link = "@lsp.type.null" },
    BlinkCmpKindNumber = { link = "@lsp.type.number" },
    BlinkCmpKindObject = { link = "@lsp.type.object" },
    BlinkCmpKindOperator = { link = "@lsp.type.operator" },
    BlinkCmpKindPackage = { link = "@lsp.type.package" },
    BlinkCmpKindProperty = { link = "@lsp.type.property" },
    BlinkCmpKindReference = { link = "@lsp.type.reference" },
    BlinkCmpKindSnippet = { fg = c.aurora.green },
    BlinkCmpKindString = { link = "@lsp.type.string" },
    BlinkCmpKindStruct = { link = "@lsp.type.struct" },
    BlinkCmpKindText = { link = "@lsp.type.text" },
    BlinkCmpKindTypeParameter = { link = "@lsp.type.typeParameter" },
    BlinkCmpKindUnit = { link = "@lsp.type.unit" },
    BlinkCmpKindValue = { link = "@lsp.type.value" },
    BlinkCmpKindVariable = { link = "@lsp.type.variable" },

    BlinkCmpKindCodeium = { fg = c.aurora.green },
    BlinkCmpKindCopilot = { fg = c.aurora.green },
    BlinkCmpKind = { fg = c.frost.artic_water },
  }
end

return cmp
