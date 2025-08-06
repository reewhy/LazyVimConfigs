return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- @type lspconfig.options
      servers = {
        volar = {},
        intelephense = {
          filetypes = { "php", "blade" },
          settings = {
            intelephense = {
              filetypes = { "php", "blade" },
              files = {
                associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
                maxSize = 500000000, -- Limit file size for better performance
              },
            },
          },
        },
      },
      setup = {
                volar = function ()
                    require("lazyvim.util").lsp.on_attach(function(client, _)
                        if client.name == "volar" then
                            client.server_capabilities.documentFormattingProvider = false
                        end
                    end)
                end
            }
    },
  },
}
