return {
  {
    "mfussenegger/nvim-dap",
    opts = function(_, _)
      local dap = require "dap"

      dap.configurations.rust = {
        {
          name = "Launch Rust",
          type = "codelldb",
          request = "launch",
          program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file") end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }
    end,
  },
}
