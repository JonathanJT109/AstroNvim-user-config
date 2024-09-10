return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    if not opts.experimental then opts.experimental = {} end
    opts.experimental.ghost_text = { hl_group = "CmpGhostText" }
  end,
}
