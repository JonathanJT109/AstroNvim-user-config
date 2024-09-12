return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
    vim.o.pumblend = 10
    local utils = require "astrocore"
    local luasnip = require "luasnip"
    local cmp = require "cmp"

    return utils.extend_tbl(opts, {
      mapping = {
        ["<C-y>"] = cmp.mapping.confirm { select = false },
        ["<CR>"] = cmp.config.disable,
        -- ["<C-j>"] = cmp.config.disable,
        -- ["<C-k>"] = cmp.config.disable,
        -- ["<Tab>"] = cmp.config.disable,
        ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
        ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
        ["<Tab>"] = cmp.mapping(function(fallback)
          if luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      },
      experimental = {
        ghost_text = {
          hl_group = "CmpGhostText",
        },
      },
      window = {
        completion = {
          winhighlight = "Normal:CmpNormal",
          winblend = vim.o.pumblend,
        },
        documentation = {
          winhighlight = "Normal:CmpNormal",
          winblend = vim.o.pumblend,
        },
      },
    })
  end,
}
