call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/limelight.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'famiu/nvim-reload'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'PratikBhusal/vim-grip'

call plug#end()

 " basic configuration
autocmd!

set nocompatible
set showmatch
set ignorecase
set number
syntax enable
set fileencoding=utf-8
set encoding=utf-8
set title
set mouse=a
set background=dark
set nobackup
set hlsearch
set showcmd
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set cmdheight=1
set laststatus=2
set scrolloff=10
set cursorline
set ttyfast
set splitright
set splitbelow

let mapleader = ","
" provider configuration
let g:loaded_perl_provider = 0
let g:python3_host_prog = '/opt/homebrew/bin/python3'
" let g:python3_host_prog = '/usr/local/bin/python3'

" Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1

nnoremap <C-t> :NERDTreeToggle<CR>

set encoding=UTF-8

" Some remapping
nnoremap <C-n> :tabnew<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

" ###################
" # coc
" ###################
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

let g:coc_global_extensions = [
  \  'coc-json',
  \  'coc-prettier',
  \  'coc-pyright',
  \  'coc-go'
  \ ]
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" setting UI
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme nord

" devicon
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" Narkdown preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
let g:mkdp_browser = '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

let g:mkdp_filetypes = ['markdown']

" Telescope
" -------------------------
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

