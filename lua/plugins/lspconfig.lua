return {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
        local lspconfig = require('lspconfig')
        require('lspconfig.ui.windows').default_options.border = 'rounded'

        --local update_capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        local on_attach = function(client, bufnr)
            -- Enable completion triggered by <c-x><c-o>
            vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

            -- Mappings.
            local bufopts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
            vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
            vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
            vim.keymap.set('n', '<space>wl', function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, bufopts)
            vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
            vim.keymap.set('n', 'gf', vim.lsp.buf.references, bufopts)
            vim.keymap.set('n', '<space>fb', function() vim.lsp.buf.format { async = true } end, bufopts)
        end


        local function setup_lsp(lsp)
            lspconfig[lsp].setup {
                capabilities = capabilities,
            }
        end
        -- Setup lspconfig

        setup_lsp('lua_ls')
        setup_lsp('html')
        setup_lsp('cssls')
        setup_lsp('cssmodules_ls')
        setup_lsp('pyright')
        setup_lsp('tsserver')
        setup_lsp('emmet_ls')

        -- Setup luasnip
        require('luasnip/loaders/from_vscode').load()
    end
}
