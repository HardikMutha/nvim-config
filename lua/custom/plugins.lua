local plugins = {
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end
  },
  {
    "williamboman/mason.nvim",
    opts={
      ensure_installed={
        "eslint-lsp",
        "prettier",
        "typescript-language-server",
        "jdtls",
        "python-lsp-server",
        "tailwindcss-language-server",
        "emmet-language-server"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,

  },
}
return plugins
