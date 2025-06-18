return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- Python
      lspconfig.pyright.setup({})
      -- Rust
      lspconfig.rust_analyzer.setup({})
      -- Terraform
      lspconfig.terraformls.setup({})
      -- Ruby
      lspconfig.ruby_lsp.setup({})
    end,
  },
}
