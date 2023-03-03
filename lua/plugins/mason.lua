return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local servers = { "lua_ls", "tsserver", "pyright", "html", "cssls", "emmet_ls", "cssmodules_ls", "bashls" }

        require("mason").setup({
            ui = {
                border = "rounded"
            }
        })

        require("mason-lspconfig").setup {
            ensure_installed = servers,
            automatic_installation = true,
        }
    end
}
