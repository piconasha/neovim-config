local status, lualine = pcall(require, "lualine")
if not status then
        vim.notify("Lualine not found!")
    return
end

lualine.setup({
    option = {
        theme = "tokyonight",
        component_separators = {
            left = "|",
            right = "|"
        },
        section_separators = {
            left = "",
            right = ""
        }
    },
    extensions = {
        "nvim-tree",
        "toggleterm"
    },
    sections = {
        lualine_c = {
            "filename",
            {
                "lsp_progress",
                spinner_symbols = {" ", " ", " ", " ", " ", " "}
            }
        },
        lualine_x = {
            "filesize",
            {
                "fileformat",
                symbols = {
                    unix = "LF",
                    dos = "CRLF",
                    msc = "CR"
                }
            },
            "encoding",
            "filetype"
        }
    }
})
