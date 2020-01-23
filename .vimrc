
call plug#begin()

Plug 'fatih/vim-go'

"Plug 'shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'

"Plug 'sainnhe/vim-color-forest-night'
Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhartington/oceanic-next'

Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

Plug 'valloric/youcompleteme'

Plug 'mhinz/vim-startify'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:deoplete#enable_at_startup = 1
let g:terraform_align=1
let g:terraform_fmt_on_save=1
let g:terraform_fold_sections=1

"let g:airline_theme='bubblegum'

syntax enable
set number

colorscheme OceanicNext

let g:airline_theme='oceanicnext'

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
