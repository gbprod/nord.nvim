local c = require("nord.colors").palette
local utils = require("nord.utils")

local defaluts = {}

function defaluts.highlights()
  local options = require("nord.config").options
  local global_bg = utils.make_global_bg()

  return {
    ColorColumn = { bg = c.polar_night.bright }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.none, bg = c.none }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- the character under the cursor
    CursorIM = { fg = c.snow_storm.brighter, bg = c.none, reverse = true }, -- like Cursor, but used when in IME mode
    CursorColumn = { bg = c.polar_night.bright }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.polar_night.bright }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = c.frost.ice }, -- directory names (and other special names in listings)
    EndOfBuffer = { fg = c.polar_night.bright }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = c.snow_storm.origin, bg = c.aurora.red }, -- error messages on the command line
    VertSplit = { fg = options.borders and c.polar_night.bright or c.polar_night.origin, bg = c.none }, -- the column separating vertically split windows
    WinSeparator = {
      fg = options.borders and c.polar_night.bright or c.polar_night.origin,
      bg = c.none,
    }, -- Separators between window splits.
    Folded = { fg = c.snow_storm.brightest, bg = c.polar_night.bright }, -- line used for closed folds
    FoldColumn = { fg = c.polar_night.brightest, bg = global_bg }, -- 'foldcolumn'
    SignColumn = { fg = c.polar_night.bright, bg = utils.make_global_bg(true) }, -- column where |signs| are displayed
    -- Substitute = { link = "Search" }, -- |:substitute| replacement text highlighting
    LineNr = { fg = c.polar_night.brightest, bg = c.none }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.snow_storm.origin, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { bg = c.polar_night.brightest, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.snow_storm.origin }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = {}, -- Area for messages and cmdline
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.frost.ice }, -- |more-prompt|
    NonText = { fg = c.polar_night.brighter }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.snow_storm.origin, bg = utils.make_global_bg(true) }, -- normal text
    NormalFloat = { fg = c.snow_storm.origin, bg = global_bg }, -- Normal text in floating windows.
    FloatBorder = { fg = c.polar_night.brightest, bg = global_bg }, -- Borders of floating windows
    Pmenu = { fg = c.snow_storm.origin, bg = c.polar_night.bright }, -- Popup menu: normal item.
    PmenuSel = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- Popup menu: selected item.
    PmenuSbar = { fg = c.snow_storm.origin, bg = c.polar_night.brighter }, -- Popup menu: scrollbar.
    PmenuThumb = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.snow_storm.origin }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = options.search.theme == "vscode" and { fg = c.none, bg = utils.darken(c.frost.ice, 0.2) }
      or { fg = c.frost.ice, bg = c.none, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = options.search.theme == "vscode" and { fg = c.snow_storm.origin, bg = utils.darken(c.frost.ice, 0.5) }
      or { fg = c.snow_storm.brightest, bg = c.frost.ice }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = "IncSearch" },
    SpecialKey = { fg = c.polar_night.brightest }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.aurora.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.aurora.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.snow_storm.brighter, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { fg = c.snow_storm.brightest, bg = global_bg, sp = c.snow_storm.brightest, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.frost.ice, bg = c.polar_night.brighter }, -- status line of current window
    StatusLineNC = { fg = c.snow_storm.origin, bg = c.polar_night.brightest }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = c.snow_storm.origin, bg = c.fg_gutter }, -- tab pages line, not active tab page label
    TabLineFill = { fg = c.snow_storm.origin, bg = c.polar_night.bright }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.frost.ice, bg = c.polar_night.brightest }, -- tab pages line, active tab page label
    Title = { fg = c.snow_storm.origin, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { fg = c.none, bg = c.polar_night.brighter }, -- Visual mode selection
    VisualNOS = { fg = c.none, bg = c.polar_night.brighter }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.polar_night.origin, bg = c.aurora.yellow }, -- warning messages
    Whitespace = { fg = c.polar_night.brighter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { fg = c.frost.ice, bg = c.polar_night.bright }, -- current match in 'wildmenu' completion
    qfLineNr = { fg = c.frost.artic_water },
    qfFileName = { fg = c.frost.ice },
    DiffAdd = utils.make_diff(c.aurora.green), -- diff mode: Added line
    DiffChange = utils.make_diff(c.aurora.yellow), --  diff mode: Changed line
    DiffDelete = utils.make_diff(c.aurora.red), -- diff mode: Deleted line
    DiffText = utils.make_diff(c.frost.artic_water), -- diff mode: Changed text within a changed line
    diffAdded = { link = "DiffAdd" },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
    Added = { link = "DiffAdd" },
    Changed = { link = "DiffChange" },
    Removed = { link = "DiffDelete" },
    healthError = { fg = c.aurora.red },
    healthSuccess = { fg = c.aurora.green },
    healthWarning = { fg = c.aurora.yellow },
    WinBar = { bg = c.polar_night.origin },
    WinBarNC = { bg = c.polar_night.origin },
  }
end

return defaluts
