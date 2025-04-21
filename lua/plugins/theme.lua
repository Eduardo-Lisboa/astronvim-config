return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require("kanagawa").setup {
      theme = "wave", -- opções: "wave", "dragon", "lotus"
    }
    vim.cmd "colorscheme kanagawa"
  end,
}
