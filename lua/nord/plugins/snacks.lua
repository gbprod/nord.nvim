local snacks = {}

local c = require("nord.colors").palette

function snacks.highlights()
  return {
    SnacksDashboardDir = { link = "Comment" },

    SnacksPickerTotals = { link = "Comment" },
    SnacksPickerDir = { link = "Comment" },
    SnacksPickerBufFlags = { link = "Comment" },
    SnacksPickerKeymapRhs = { link = "Comment" },
    SnacksPickerGitStatus = { link = "Comment" },
  }
end

return snacks
