-- plugins/lsp-override.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers.tsserver = vim.tbl_deep_extend("force", opts.servers.tsserver or {}, {
        -- capabilities は cmp.lua 側で登録済みなのでここでは不要
        settings = {
          typescript = {
            preferences = {
              includeCompletionsForModuleExports = true,
              includeCompletionsWithInsertText = true,
              importModuleSpecifierPreference = "non-relative",
            },
          },
          javascript = {
            preferences = {
              includeCompletionsForModuleExports = true,
              includeCompletionsWithInsertText = true,
              importModuleSpecifierPreference = "non-relative",
            },
          },
        },
      })
    end,
  },
}
