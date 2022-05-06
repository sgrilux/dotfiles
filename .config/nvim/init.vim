call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

Plug 'junegunn/limelight.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'ryanoasis/vim-devicons'

Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'

Plug 'famiu/nvim-reload'

Plug 'nvim-lua/plenary.nvim'


call plug#end()

autocmd!

set nocompatible
set number
syntax enable
set fileencoding=utf-8
set encoding=utf-8
set title
set mouse=a
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set expandtab
set cmdheight=1
set laststatus=2
set scrolloff=10

" Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1

nnoremap <C-t> :NERDTreeToggle<CR>

set encoding=UTF-8

" coc
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
  \ 'coc-json',
  \  'coc-prettier',
  \  'coc-python',
  \  'coc-go'
  \ ]
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme spaceduck

" devicon
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1


