
let mapleader = "\<Space>"

set rnu
set clipboard=unnamedplus

" colorscheme molokai

" Use Vim Plug to manage plugins
call plug#begin('~/.config/nvim/autoload/plugged')

" Add your plugins here
Plug 'junegunn/vim-plug'  " Vim Plug itself
Plug 'vim-airline/vim-airline'  " Example: vim-airline
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'

Plug 'itchyny/lightline.vim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'nvim-treesitter/playground'

Plug 'PsychoLlama/teleport.vim'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'

"" VIM BE GOOD BY PRIMEAGEN 

Plug 'ThePrimeagen/vim-be-good'

" Harpoon by the PRIMEAGEN
" Plug 'nvim-lua/popup.nvim'
" Plug 'ThePrimeagen/harpoon'


" End Vim Plug section
call plug#end()

" Load Telescope after Vim-Plug plugins are loaded
lua << EOF
require('telescope').setup{
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        preview_width = 0.6,
        width = 0.8,
      },
      vertical = {
        width = 0.8,
        height = 0.8,
        preview_height = 0.6,
      },
    },
    file_sorter = require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {"node_modules/*", "target/*"},
    generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
    path_display = {"shorten"},
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = true,
      override_file_sorter = true,
    }
  }
}
EOF

" Keybindings
nnoremap <Leader>ff :Telescope find_files<CR>
nnoremap <Leader>fg :Telescope live_grep<CR>
nnoremap <Leader>fb :Telescope buffers<CR>
nnoremap <Leader>fh :Telescope help_tags<CR>



colorscheme molokai
" Additional configurations for your Neovim setup go below this line
