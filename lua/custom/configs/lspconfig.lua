local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup{
  on_attach = on_attach,
  capabilities=capabilities,
  init_options={
    preferences={
      disableSuggestions = true,
    }
  }
}

lspconfig.html.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options={
    preferences = {
      disableSuggestions = true,
    }
  }
}

lspconfig.tailwindcss.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options={
    preferences={
      disableSuggestions = true,
    }
  }
}

lspconfig.cssls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  }
}

lspconfig.pylsp.setup{
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
       pycodestyle = {
          enabled = false,
        },
        pyflakes = {
          enabled = true,
        }
      }
    }
  },
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  }
}
--
-- lspconfig.java_language_server.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
--   init_options = {
--     preferences = {
--       disableSuggestions = true
--     }
--   }
-- }
--
lspconfig.jdtls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  }
}

lspconfig.emmet_language_server.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  }
}

lspconfig.ast_grep.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  }
}

lspconfig.clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true
    }
  }
}

lspconfig.bashls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  init_options={
    preferences={
      disableSuggestions = true
    }
  }
}
