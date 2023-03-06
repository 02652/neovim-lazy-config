return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("kanagawa").setup({
            compile = false,  -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true, bold = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,   -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {
                -- add/modify theme and palette colors
                palette = {},
            },
            overrides = function(colors)
                return {
                    -- CMP
                    CmpBorderColor = { fg = "#54546D", bg = "NONE" },
                    --CmpBorderColor = { fg = colors.palette.sumiInk4, bg = "NONE" },
                    CmpCursorLineColor = { bg = "#957FB8", fg = "#1F1F28", bold = true },
                    CmpNormalColor = { bg = "NONE", italic = true },
                    -- NOICE
                    HoverTitleColor = { fg = "#FF9E3B", bg = "NONE", bold = true },
                    NoiceScrollbar = { bg = "NONE", bold = true },
                    NoiceScrollbarThumb = { bg = "NONE", bold = true },
                    HoverNormalColor = { bg = "NONE", italic = true, fg = "#C8C093" },
                    NoiceCmdlinePopupBorder = { fg = "#54546D", bg = "NONE" },
                    NoiceCmdlinePopup = { fg = "#C8C093", bg = "NONE", bold = true, italic = true },
                    -- COSMIC
                    RenameTitleColor = { fg = "#957FB8", bg = "NONE", bold = true },
                    RenamePromptColor = { fg = "#76946A", bg = "NONE" },
                    CodeActionTitleColor = { fg = "#FF9E3B", bg = "NONE", bold = true },
                    CodeActionBottomColor = { fg = "#727169", bg = "NONE", italic = true },
                    --red = { bg = "#ff0000", fg = "#00ff00" },
                    -- Colors Generals for the Float
                    NormalFloat = { bg = "NONE", fg = "#C8C093", italic = true },
                    -- MASON
                    MasonNormal = { bg = "NONE", italic = true },
                    -- color border for mason
                    FloatBorder = { fg = "#54546D", bg = "NONE" },
                    -- LSP
                    LspInfoBorder = { fg = "#54546D", bg = "NONE" },
                    LspInfoTitle = { fg = "#957FB8", bold = true },
                    --kaly = { fg = '#1F1F28', bg = '#ff0000'} 1F1F28
                    -- NULL
                    NullLsInfoBorder = { fg = "#54546D", bg = "NONE" },
                    NullLsInfoSources = { fg = "#98BB6C", bold = true },
                    NullLsInfoHeader = { bold = true, fg = "#957FB8" },
                    -- Number Line
                    LineNr = { bg = "#1F1F28", fg = "#957FB8" },
                    LineNrAbove = { bg = "#1F1F28", fg = "#54546D" },
                    LineNrBelow = { bg = "#1F1F28", fg = "#54546D" },
                    SignColumn = { bg = "#1F1F28" },
                    GitSignsAdd = { bg = "#1F1F28" },
                    GitSignsChange = { bg = "#1F1F28" },
                    GitSignsDelete = { bg = "#1F1F28" },
                    DiagnosticSignWarn = { bg = "#1F1F28" },
                    DiagnosticSignHint = { bg = "#1F1F28" },
                    DiagnosticSignError = { bg = "#1F1F28" },
                    DiagnosticSignInfo = { bg = "#1F1F28" },
                    --[[ underline = true, bold = true, guisp = "blue" }, #16161D]]
                }
            end,
            theme = "wave", -- Load "wave" theme when 'background' option is not set
        })

        -- setup must be called before loading
        vim.cmd("colorscheme kanagawa")
    end,
}
