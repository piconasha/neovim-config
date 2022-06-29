local status, bufferline = pcall(require, "bufferline")
if not status then
        vim.notify("Bufferline not found!")
    return
end

bufferline.setup({
    options = {
        -- Close Window
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        
        -- Nvim-tree Option
        offsets = {
            {
                fileType = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        },

        -- LSP Supports
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, dict, context)
            local s = " "
            for e, n in pairs(dict) do
                local symbol = e == "error" and "" or (e == "warning" and "" or "")
                s = s .. n .. symbol
            end
            return s
        end
    }
})
