return {
  "mrcjkb/rustaceanvim",
  version = "^4",
  ft = { "rust" },
  opts = {
    server = {
      on_attach = function(client, bufnr)
        -- Enable inlay hints
        vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
      end,
      default_settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
            buildScripts = {
              enable = true,
            },
            loadOutDirsFromCheck = true,
          },
          check = {
            command = "clippy",
            extraArgs = { "--no-deps" },
          },
          checkOnSave = true,
          diagnostics = {
            enable = true,
          },
          procMacro = {
            enable = true,
            ignored = {
              ["async-trait"] = { "async_trait" },
              ["napi-derive"] = { "napi" },
              ["async-recursion"] = { "async_recursion" },
            },
          },
        },
      },
    },
  },
  config = function(_, opts)
    vim.g.rustaceanvim = vim.tbl_deep_extend("keep", vim.g.rustaceanvim or {}, opts or {})
  end,
}
