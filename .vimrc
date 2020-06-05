" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
set termguicolors
call plug#begin('~/.vim/plugged')
"typewriter sound
Plug 'skywind3000/vim-keysound'
let g:keysound_enable = 0
let g:keysound_theme = 'mario'
let g:keysound_volume = 1000
"startuptime
Plug 'tweekmonster/startuptime.vim'
"tmux-navigator
Plug 'christoomey/vim-tmux-navigator'
"fzf
set rtp+=~/.fzf
Plug 'junegunn/fzf.vim'
let g:fzf_layout={'down':'~20%'}
"ansible
"Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.py'  }
"TabNine
Plug 'zxqfl/tabnine-vim'
"indentLine
Plug 'Yggdroot/indentLine'
"Syntastic
Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_quiet_messages = {'regex' : ['E501','F401','F841']}

"Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
"set t_Co=256
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

Plug 'chiel92/vim-autoformat'
noremap <F8> :Autoformat<CR>:w<CR>
imap <F8> <Esc>:Autoformat<CR>:w<CR>
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
let g:formatters_python = ['autopep8']
" let g:formatdef_yapf = "'yapf --style=\"/home/hiimdoublej/.yapf.style\" -l '.a:firstline.'-'.a:lastline""
" let g:autoformat_verbosemode = 1

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
let g:prettier#autoformat = 1
let g:prettier#quickfix_enabled = 0
let g:prettier#config#parser = 'babylon'
" autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

Plug 'sheerun/vim-polyglot'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger='<leader>s'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1

Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>


Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Plug 'majutsushi/tagbar'
" nmap <F9> :TagbarToggle<CR>
" let g:tagbar_autofocus = 1

Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'

"vim git diff
Plug 'airblade/vim-gitgutter'
let g:gitgutter_async = 0
set updatetime=100
"YCM
" function! BuildYCM(info)
"   " info is a dictionary with 3 fields
"   " - name:   name of the plugin
"   " - status: 'installed', 'updated', or 'unchanged'
"   " - force:  set on PlugInstall! or PlugUpdate!
"   if a:info.status == 'installed' || a:info.force
"     !./install.py
"   endif
" endfunction
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" let g:ycm_autoclose_preview_window_after_insertion = 1
"
" deoplete
" if has('nvim')
"     Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"     Plug 'Shougo/deoplete.nvim'
"     Plug 'roxma/nvim-yarp'
"     Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
" " let g:python3_host_prog = '/home/hiimdoublej/.pyenv/versions/3.6.5/bin/python3'
" inoremap <silent><expr> <TAB>
"     \ pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ deoplete#mappings#manual_complete()
" function! s:check_back_space() abort "{{{
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}
" Plug 'zchee/deoplete-jedi'
"
" a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" coc
" Use release branch
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

let g:solarized_use16 = 1
"let g:solarized_termtrans = 1
colorscheme solarized8
set background=dark
syntax on

set backspace=2
set backspace=indent,eol,start
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
filetype indent on
"searching preferences
set incsearch
"system clipboard actions
vmap <leader>[ :w !pbcopy<CR><CR>
nmap <leader>] :set paste<CR>:r!pbpaste<CR>:set nopaste<CR>
imap <leader>] <ESC>:set paste<CR>:r!pbpaste<CR>:set nopaste<CR>

set number relativenumber

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
