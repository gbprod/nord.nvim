local c = require("nord.colors").palette
local utils = require("nord.utils")

local base = {}

function base.highlights()
  local options = require("nord.config").options

  return {
    Bold = { bold = true },
    Boolean = { fg = c.frost.artic_water }, --  a boolean constant: TRUE, false
    Character = { fg = c.aurora.green }, --  a character constant: 'c', '\n'
    Conditional = { fg = c.frost.artic_water }, --  if, then, else, endif, switch, etc.
    Constant = { fg = c.snow_storm.origin }, -- (preferred) any constant
    Comment = vim.tbl_extend("force", { fg = c.polar_night.light }, options.styles.comments), -- any comment
    Debug = { fg = c.snow_storm.origin }, --    debugging statements
    Define = { fg = c.frost.artic_water }, --   preprocessor #define
    Delimiter = { fg = c.snow_storm.brightest }, --  character that needs attention
    -- Error = { fg = c.snow_storm.origin, bg = c.aurora.red }, -- (preferred) any erroneous construct
    Error = utils.make_error(c.aurora.red), -- (preferred) any erroneous construct
    Exception = { fg = c.frost.artic_water }, --  try, catch, throw
    Float = { fg = c.aurora.purple }, --    a floating point constant: 2.3e10
    Function = vim.tbl_extend("force", { fg = c.frost.ice }, options.styles.functions), -- function name (also: methods for classes)
    Identifier = vim.tbl_extend("force", { fg = c.snow_storm.origin }, options.styles.variables), -- (preferred) any variable name
    Include = { fg = c.frost.artic_water }, --  preprocessor #include
    Italic = { italic = true },
    Keyword = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  any other keyword
    Label = { fg = c.frost.artic_water }, --    case, default, etc.
    Macro = { link = "Define" }, --    same as Define
    Number = { fg = c.aurora.purple }, --   a number constant: 234, 0xff
    Operator = { fg = c.frost.artic_water }, -- "sizeof", "+", "*", etc.
    PreCondit = { link = "PreProc" }, --  preprocessor #if, #else, #endif, etc.
    PreProc = { fg = c.frost.artic_water }, -- (preferred) generic Preprocessor
    Repeat = { fg = c.frost.artic_water }, --   for, do, while, etc.
    Special = { fg = c.snow_storm.origin }, -- (preferred) any special symbol
    SpecialChar = { fg = c.aurora.yellow }, --  special character in a constant
    SpecialComment = { fg = c.frost.ice }, -- special things inside a comment
    Statement = { fg = c.frost.artic_water }, -- (preferred) any statement
    StorageClass = { fg = c.frost.artic_water }, -- static, register, volatile, etc.
    String = { fg = c.aurora.green }, --   a string constant: "this is a string"
    Structure = { fg = c.frost.artic_water }, --  struct, union, enum, etc.
    Tag = { fg = c.snow_storm.origin }, --    you can use CTRL-] on this
    Todo = { fg = c.aurora.yellow, bg = c.none }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type = { fg = c.frost.artic_water }, -- (preferred) int, long, char, etc.
    Typedef = { fg = c.frost.artic_water }, --  A typedef
    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    htmlH1 = { fg = c.frost.ice, bold = true },
    htmlH2 = { fg = c.frost.ice },

    markdownHeadingDelimiter = { fg = c.frost.polar_water },
    markdownCode = { fg = c.frost.polar_water },
    markdownCodeBlock = { fg = c.snow_storm.origin },
    markdownH1 = { fg = c.frost.ice, bold = true },
    markdownH2 = { fg = c.frost.ice },
    markdownLinkText = { fg = c.frost.ice, underline = true },
    markdownBlockquote = { fg = c.frost.polar_water },
    markdownFootnote = { fg = c.frost.polar_water },
    markdownId = { fg = c.frost.polar_water },
    markdownIdDeclaration = { fg = c.frost.polar_water },
    markdownUrl = { fg = c.snow_storm.origin },

    debugPC = { bg = c.frost.artic_water }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = c.frost.artic_ocean, fg = c.frost.artic_water }, -- used for breakpoint colors in terminal-debug
  }
end

return base
