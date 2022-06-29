local packer = require("packer")

packer.startup(
    function(use)
        -- Packer Self-Management
        use("wbthomason/packer.nvim")
        
        -- nvim-tree
        use({ "kyazdani42/nvim-tree.lua",
            requires = {
                "kyazdani42/nvim-web-devicons"
            }
        })
        
        -- bufferline
        use({ "akinsho/bufferline.nvim",
            requires = {
                "kyazdani42/nvim-web-devicons",
                "moll/vim-bbye"
            }
        })
        
        -- lualine
        use({ "nvim-lualine/lualine.nvim",
            requires = {
                "kyazdani42/nvim-web-devicons"
            }
        })
        use({ "arkav/lualine-lsp-progress"})
        
        -- Colorscheme
        use("Th3Whit3Wolf/onebuddy")
        use("folke/tokyonight.nvim")
    end
)

-- Auto Sync
pcall(
    vim.cmd,
    [[
        augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
        augroup end
    ]]
)
