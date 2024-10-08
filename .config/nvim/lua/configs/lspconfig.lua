-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
--

require("lspconfig").pyright.setup {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },
}

--
require("lspconfig").ruff.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  trace = "verbose",
  init_options = {
    settings = {
      logLevel = "debug",
      lineLength = 100,
      organizeImports = true,
      fixAll = true,
      linter = {
        enable = true,
        preview = true,
        select = { "I", "E", "W", "F", "B", "S" },
      },
      format = {
        preview = true,
      },
    },
  },
}
