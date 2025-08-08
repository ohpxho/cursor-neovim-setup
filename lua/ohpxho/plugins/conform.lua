local conform_status, conform = pcall(require, "conform")
if not conform_status then
  return
end

conform.setup({
  formatters_by_ft = {
    -- Lua
    lua = { "stylua" },

    -- C
    c = { "clang-format" },

    -- Haskell
    haskell = { "fourmolu", "stylish-haskell" },

    -- Assembly
    asm = { "asmfmt" },

    -- PHP/Laravel
    php = { "php_cs_fixer" },
    blade = { "blade-formatter" },

    -- JavaScript/TypeScript/React/Next.js
    javascript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },

    -- Python/PyTorch
    python = { "black", "isort" },

    -- Verilog
    verilog = { "verible" },
    systemverilog = { "verible" },

    -- Web technologies
    html = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettierd", "prettier", stop_after_first = true },
    scss = { "prettierd", "prettier", stop_after_first = true },
    json = { "prettierd", "prettier", stop_after_first = true },
    jsonc = { "prettierd", "prettier", stop_after_first = true },
    yaml = { "prettierd", "prettier", stop_after_first = true },
    markdown = { "prettierd", "prettier", stop_after_first = true },
  },

  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },

  formatters = {
    php_cs_fixer = {
      command = "php-cs-fixer",
      args = { "fix", "--rules=@PSR12", "$FILENAME" },
      stdin = false,
    },
  },
})
