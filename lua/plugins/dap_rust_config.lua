return {
  {
    "mfussenegger/nvim-dap",
    opts = function(_, _)
      local dap = require "dap"

      -- 🔥 Força a configuração correta do Rust com codelldb
      dap.configurations.rust = {
        {
          name = "Debug with codelldb",
          type = "codelldb", -- ou "rt_lldb" se estiver usando rust-tools
          request = "launch",
          program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file") end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }
    end,
  },
}
