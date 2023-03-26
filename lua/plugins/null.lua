return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting
        local actions = null_ls.builtins.code_actions
        local diagnostics = null_ls.builtins.diagnostics
        local code_actions = null_ls.builtins.code_actions
        local sources = {
            formatting.prettierd,
            formatting.stylua,
            formatting.eslint_d,
            actions.eslint_d,
            --diagnostics.eslint_d,
            diagnostics.alex,
            diagnostics.djlint,
            formatting.djlint,
            formatting.autopep8,
            code_actions.shellcheck,
            formatting.beautysh,
        }

        null_ls.setup({
            sources = sources,
            border = "rounded",
        })
    end,
}
