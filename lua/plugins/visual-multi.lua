return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
    }
    vim.g.VM_set_statusline = 0
    vim.g.VM_default_mappings = 1
  end,
}
