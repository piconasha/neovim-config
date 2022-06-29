local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
        vim.notify("nvim-tree not found!")
    return
end

local list_keys = require("keybindings").nvimTreeList
nvim_tree.setup({
    -- Ignore Git Status Icon
    git = {
        enable = false
    },

    -- Project Plugin Settings
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true
    },

    -- Hidden .* & node_modules/
    filters = {
        dotfiles = true,
        custom = {
            "node_modules"
        }
    },
    
    -- Display
    view = {
        width = 40,
        side = "left",
        hide_root_folder = false,
        
        -- Customed Keybindings
        mappings = {
            custom_only = false,
            list = list_keys -- Import lua/keybindings.lua
        },
        
        -- No line No.
        number = false,
        relativenumber = false,
        
        -- Show Icons
        signcolumn = "yes"
    },
    
    -- Actions
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = false
        }
    }
})

-- Autoclose
-- vim.cmd([[
--    autocmd BufEnter * ++nested if winnr("$") == 1 && bufname() == "NvimTree_" . tabpagenr() | quit | endif
-- ]])

