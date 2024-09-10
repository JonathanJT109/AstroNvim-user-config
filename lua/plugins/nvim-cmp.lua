return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    if not opts.experimental then opts.experimental = {} end
    opts.window.completion.winblend = vim.o.pumblend
    opts.window.documentation.winblend = vim.o.pumblend
    opts.experimental.ghost_text = { hl_group = "CmpGhostText" }
  end,
}
