local toggleterm = {}

function toggleterm.make_opts(options)
  return vim.tbl_deep_extend("force", {}, {
    highlights = {
      FloatBorder = {
        link = "FloatBorder",
      },
    },
  }, options or {})
end

return toggleterm
