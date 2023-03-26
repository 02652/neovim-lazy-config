return {
    "narutoxy/silicon.lua",
    config = function()
        require("silicon").setup(
            {
                theme = "auto",
                output = "/home/myo/Pictures/Code-Screenshots/SILICON_${year}-${month}-${date}_${time}.png", -- auto generate file name based on time (absolute or relative to cwd)
                bgColor = "#ffffff00",
                -- bgColor = vim.g.terminal_color_5,
                font = "CaskaydiaCove Nerd Font",
                lineOffset = 1, -- from where to start line number
                linePad = 2,    -- padding between lines
                padHoriz = 80,  -- Horizontal padding
                padVert = 100,  -- vertical padding
                shadowBlurRadius = 10,
                shadowColor = "#ffffff00",
                -- shadowColor = "#555555",
                shadowOffsetX = 8,
                shadowOffsetY = 8,
                gobble = false, -- enable lsautogobble like feature
                debug = false,  -- enable debug output
            })
        -- Generate image of lines in a visual selection

        vim.keymap.set("v", "<leader>ss", ":lua require('silicon').visualise_cmdline({})<CR>")
        vim.keymap.set("v", "<leader>sb", ":lua require('silicon').visualise_api({show_buf = true})<CR>")
        vim.keymap.set("v", "<leader>sc", ":lua require('silicon').visualise_api({to_clip = true})<CR>")
    end,
}
