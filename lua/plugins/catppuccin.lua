return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup {
      flavour = "mocha", -- opções: "latte", "frappe", "macchiato", "mocha"
      transparent_background = false,
      integrations = {
        treesitter = true,
        telescope = true,
        which_key = true,
        indent_blankline = { enabled = true },
        cmp = true,
        gitsigns = true,
        mason = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
      },
    }
    vim.cmd.colorscheme "catppuccin"
  end,
}
