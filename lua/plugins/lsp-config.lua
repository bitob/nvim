return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason", -- load mason when running :Mason command
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy", -- load this after critical plugins
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    -- load lsp config when reading a buffer or creating a new one
    event = { "BufReadPre", "BufNewFile" }, 

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
    end,
  },
}
