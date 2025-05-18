return {
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = "v1.21.0",
    dependencies = { "williamboman/mason.nvim" },
    lazy = true,
    config = function()
      require("mason-lspconfig").setup({
        -- List of LSP servers to automatically install
        ensure_installed = {
          "lua_ls", -- Lua
          "clangd", -- C/C++
          "pyright", -- Python
          "bashls", -- Bash
          "jsonls", -- JSON
          "yamlls", -- YAML
          "html", -- HTML
          "cssls", -- CSS
          "intelephense", -- PHP
          -- Add more as needed
        },
        -- Automatic server setup (handled by nvim-lspconfig)
        automatic_installation = true,
      })
    end,
  },
}
