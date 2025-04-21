return {
  {
    "nvim-lua/plenary.nvim", -- Dummy plugin só para o Lazy aceitar isso
    keys = {
      -- Modo normal
      { "<A-j>", ":m .+1<CR>==", desc = "Move line down", mode = "n" },
      { "<A-k>", ":m .-2<CR>==", desc = "Move line up", mode = "n" },

      -- Modo visual
      { "<A-j>", ":m '>+1<CR>gv=gv", desc = "Move selection down", mode = "v" },
      { "<A-k>", ":m '<-2<CR>gv=gv", desc = "Move selection up", mode = "v" },
    },
  },
}
