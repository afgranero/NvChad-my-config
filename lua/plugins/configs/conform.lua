local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    go = { "gofumpt", "goimports-reviser", "golines" },
  },

  formatters = {
    -- Python
    black = {
      prepend_args = {
        "--fast",
        "--line-length",
        "130",
      },
    },
    isort = {
      prepend_args = {
        "--profile",
        "black",
      },
    },
    -- go
    ["goimports-reviser"] = {
      prepend_args = { "-rm-unused" },
    },
    golines = {
      prepend_args = { "--max-len=80" },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
