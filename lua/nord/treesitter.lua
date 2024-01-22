local c = require("nord.colors").palette
local utils = require("nord.utils")

local treesitter = {}

function treesitter.highlights()
  local options = require("nord.config").options

  return {
    -- Misc
    ["@comment"] = vim.tbl_extend("force", { fg = c.polar_night.light }, options.styles.comments), --  line and block comments
    ["@error"] = utils.make_error(c.aurora.red), --  syntax/parser errors
    -- ["@none"]     --  completely disable the highlight
    ["@preproc"] = { fg = c.frost.artic_water }, --  various preprocessor directives & shebangs
    ["@define"] = { fg = c.frost.artic_water }, --  preprocessor definition directives
    ["@operator"] = { fg = c.frost.artic_water }, --  symbolic operators (e.g. `+` / `*`)

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.snow_storm.brightest }, --  delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.bracket"] = { fg = c.frost.ice }, --  brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.special"] = { fg = c.frost.artic_water }, --  special symbols (e.g. `{}` in string interpolation)

    -- Literals
    ["@string"] = { fg = c.aurora.green }, --  string literals
    ["@string.regex"] = { fg = c.aurora.yellow }, --  regular expressions
    ["@string.escape"] = { fg = c.aurora.yellow }, --  escape sequences
    ["@string.special"] = { fg = c.aurora.yellow }, --  other special strings (e.g. dates)
    ["@character"] = { fg = c.aurora.green }, --  character literals
    ["@character.special"] = { fg = c.aurora.yellow }, --  special characters (e.g. wildcards)
    ["@boolean"] = { fg = c.frost.artic_water }, --  boolean literals
    ["@number"] = { fg = c.aurora.purple }, --  numeric literals
    ["@float"] = { fg = c.aurora.purple }, --  floating-point number literals

    -- Functions
    ["@function"] = vim.tbl_extend("force", { fg = c.frost.ice }, options.styles.functions), --  function definitions
    ["@function.builtin"] = { fg = c.frost.ice }, --  built-in functions
    ["@function.call"] = { fg = c.frost.ice }, --  function calls
    ["@function.macro"] = { fg = c.frost.artic_water }, --  preprocessor macros
    ["@method"] = { fg = c.frost.ice }, --  method definitions
    ["@method.call"] = { fg = c.frost.ice }, --  method calls
    ["@constructor"] = { fg = c.frost.ice }, --  constructor calls and definitions
    ["@parameter"] = { fg = c.frost.ice }, --  parameters of a function

    -- Keywords
    ["@keyword"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  various keywords
    ["@keyword.function"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.functions), --  keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.operator"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  operators that are English words (e.g. `and` / `or`)
    ["@keyword.return"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords like `return` and `yield`
    ["@conditional"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to conditionals (e.g. `if` / `else`)
    ["@repeat"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to loops (e.g. `for` / `while`)
    ["@debug"] = vim.tbl_extend("force", { fg = c.snow_storm.origin }, options.styles.keywords), --  keywords related to debugging
    ["@label"] = vim.tbl_extend("force", { fg = c.frost.polar_water }, options.styles.keywords), --  GOTO and other labels (e.g. `label:` in C)
    ["@include"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords for including modules (e.g. `import` / `from` in Python)
    ["@exception"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, options.styles.keywords), --  keywords related to exceptions (e.g. `throw` / `catch`)

    -- Types
    ["@type"] = { fg = c.frost.polar_water }, --  type or class definitions and annotations
    ["@type.builtin"] = { fg = c.frost.artic_water }, --  built-in types
    ["@type.definition"] = { fg = c.frost.polar_water }, --  type definitions (e.g. `typedef` in C)
    ["@type.qualifier"] = { fg = c.frost.artic_water }, --  type qualifiers (e.g. `const`)
    ["@storageclass"] = { fg = c.frost.artic_water }, --  visibility/life-time modifiers
    ["@attribute"] = { fg = c.snow_storm.origin }, --  attribute annotations (e.g. Python decorators)
    ["@field"] = { fg = c.snow_storm.origin }, --  object and struct fields
    ["@property"] = { fg = c.snow_storm.origin }, --  similar to `@field`

    -- Identifiers
    ["@variable"] = vim.tbl_extend("force", { fg = c.snow_storm.origin }, options.styles.variables), --  various variable names
    ["@variable.builtin"] = { fg = c.frost.artic_water }, --  built-in variable names (e.g. `this`)
    ["@constant"] = { fg = c.snow_storm.origin }, --  constant identifiers
    ["@constant.builtin"] = { fg = c.frost.artic_water }, --  built-in constant values
    ["@constant.macro"] = { fg = c.frost.artic_water }, --  constants defined by the preprocessor
    ["@namespace"] = { fg = c.snow_storm.origin }, --  modules or namespaces
    ["@symbol"] = { fg = c.snow_storm.origin }, --  symbols or atoms

    -- Text
    ["@text"] = { fg = c.snow_storm.origin }, --  non-structured text
    ["@text.strong"] = { bold = true }, --  bold text
    ["@text.emphasis"] = { italic = true }, --  text with emphasis
    ["@text.underline"] = { underline = true }, --  underlined text
    ["@text.strike"] = { strikethrough = true }, --  strikethrough text
    ["@text.title"] = { fg = c.frost.ice }, --  text that is part of a title
    ["@text.literal"] = { fg = c.frost.polar_water }, --  literal or verbatim text
    ["@text.uri"] = { fg = c.aurora.green, underline = true, sp = c.aurora.green }, --  URIs (e.g. hyperlinks)
    ["@text.math"] = { fg = c.frost.polar_water }, --  math environments (e.g. `$ ... $` in LaTeX)
    ["@text.environment"] = { fg = c.frost.polar_water }, --  text environments of markup languages
    ["@text.environment.name"] = { fg = c.frost.artic_water }, --  text indicating the type of an environment
    ["@text.reference"] = { fg = c.frost.polar_water }, --  text references, footnotes, citations, etc.
    ["@text.todo"] = { fg = c.frost.artic_water }, --  todo notes
    ["@text.note"] = { fg = c.frost.artic_water }, --  info notes
    ["@text.warning"] = { fg = c.aurora.yellow }, --  warning notes
    ["@text.danger"] = { fg = c.aurora.red }, --  danger/error notes
    ["@text.diff.add"] = { link = "DiffAdd" }, --  added text (for diff files)
    ["@text.diff.delete"] = { link = "DiffDelete" }, --  deleted text (for diff files)

    -- Tags
    ["@tag"] = { fg = c.frost.artic_water }, --  XML tag names
    ["@tag.attribute"] = { fg = c.frost.polar_water }, --  XML tag attributes
    ["@tag.delimiter"] = { fg = c.frost.artic_water }, --  XML tag delimiters

    -- Conceal
    ["@conceal"] = { fg = c.none, bg = c.none }, --  for captures that are only used for concealing

    -- Spell
    -- ["@spell"] = {}, --  for defining regions to be spellchecked
    -- ["@nospell"] = {}, --  for defining regions that should NOT be spellchecked

    -- Language specific
    ["@constant.git_rebase"] = { fg = c.frost.polar_water },
    ["@field.yaml"] = { fg = c.frost.polar_water },
    ["@text.phpdoc"] = { fg = c.polar_night.light },
    ["@attribute.phpdoc"] = { fg = c.frost.artic_water },
    ["@module.php"] = { fg = c.snow_storm.origin },

    -- LSP Semantic Token Groups
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.field"] = { link = "@field" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@structure" },
    ["@lsp.type.typeParameter"] = { link = "@parameter" },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
  }
end

return treesitter
