return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- formatter
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        -- lsp
        "lua-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "java-language-server",
        "css-lsp",
      })
    end,
  },
}
