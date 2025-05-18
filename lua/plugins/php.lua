return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { os.getenv("USERPROFILE") .. "\\AppData\\Roaming\\Composer\\vendor\\bin\\php-debug-adapter" },
      }
      dap.configurations.php = {
        {
          type = "php",
          request = "launch",
          name = "Listen for Xdebug",
          port = 9003,
          pathMappings = {
            ["/var/www/html"] = "${workspaceFolder}",
            -- Add Windows-specific mappings if needed
            ["C:/xampp/htdocs"] = "${workspaceFolder}",
          },
        },
      }
    end,
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { { "pint", "php-cs-fixer" } },
      },
    },
  },
}
