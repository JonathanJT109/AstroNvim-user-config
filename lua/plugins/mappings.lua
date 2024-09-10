return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {},
        v = {
          ["J"] = { "<Cmd>m '>+1<CR>gv=gv", desc = "Move text up 1 row" },
          ["V"] = { "<Cmd>m '<-2<CR>gv=gv", desc = "Move text down 1 row" },
        },
      },
    },
  },
}
