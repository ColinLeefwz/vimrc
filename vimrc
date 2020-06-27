set guifont=menlo:h13
set bsdir=buffer
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
let NERDTreeShowHidden=1
syntax on
set number
set hlsearch
set history=200
set tabstop=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cindent shiftwidth=2
set autoindent shiftwidth=2
filetype plugin indent on
map <C-S> <C-C>:w<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set runtimepath^=~/.vim/bundle/ctrlp.vim

set nocompatible               " be iMproved
filetype off                  " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'kchmck/vim-coffee-script'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-haml'
Bundle 'nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tomtom/tcomment_vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'slim-template/vim-slim'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'tasn/vim-tsx'
Bundle 'burnettk/vim-angular'
Bundle 'scrooloose/nerdcommenter'
Bundle 'leafgarland/typescript-vim'
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


execute pathogen#infect()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:Powerline_symbols = 'fancy'
nnoremap <silent> <leader><space> :noh<CR>
if has("gui_running")
	set guifont=menlo:h13
  colorscheme desert
endif

" Activate after saving.
iunmenu File.Save
imenu <silent> File.Save <Esc>:w<CR>

" Inserting empty lines using [enter] when in normal mode.
" map <S-Enter> O<Esc>
" map <CR> o<Esc>k

" Insert spaces using space bar when in normal mode.
nnoremap <space> i<space><esc>

" Remove search highlighting with <leader><space>
"
nnoremap <silent> <leader><space> :noh<CR>

" Saving
" Stripping Whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

" Split window resizing
nnoremap <silent> <Leader>= :exe "vertical resize +5"<CR>
nnoremap <silent> <Leader>- :exe "vertical resize -5"<CR>

" up and down lines
nnoremap <S-Down> :m .+1<CR>
nnoremap <S-Up> :m .-2<CR>

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
    endfunction

" window swap
function! DoWindowSwap()
  "mark destination
  let curnum = winnr()
  let curbuf = bufnr( "%" )
  exe g:markedwinnum . "wincmd w"
  "switch to source and shuffle dest->source
  let markedbuf = bufnr( "%" )
  exe 'hide buf' curbuf
  source->dest
  exe curnum . "wincmd w"
  exe 'hide buf' markedbuf
endfunction

nmap <silent> <leader>mw :call markwindowswap()<cr>
map <silent> <leader>pw :call dowindowswap()<cr>
map <C-x> :FufCoverageFile<CR>
  1 set guifont=menlo:h13
  2 set bsdir=buffer
  3 set enc=utf-8
  4 set fenc=utf-8
  5 set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
  6 let NERDTreeShowHidden=1
  7 syntax on
  8 set number
  9 set hlsearch
 10 set history=200
 11 set tabstop=2
 12 set tabstop=2
 13 set softtabstop=2
 14 set shiftwidth=2
 15 set expandtab
 16 set cindent shiftwidth=2
 17 set autoindent shiftwidth=2
 18 filetype plugin indent on
 19 map <C-S> <C-C>:w<CR>
 20 map <C-j> <C-W>j
 21 map <C-k> <C-W>k
 22 map <C-h> <C-W>h
 23 map <C-l> <C-W>l
~/.vimrc                                                                                                                                                                                  1,1            Top
"~/.vimrc" 144L, 5488C
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|mp3|exe|dll|png|bak|orig|swp|swn|png|jpg|gif|swm|DS_Store)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|public/00_common_assets/*|system/qor_jobs/*'
let g:fuf_coveragefile_globPatterns = ['*', 'lib/**/*', 'public/javascripts/**/*', 'public/stylesheets/**/*', 'public/js/**/*', 'public/css/**/*', '*.m']
let g:fuf_coveragefile_globPatterns = g:fuf_coveragefile_globPatterns + ['*', 'app/**/*', 'config/**/*', 'db/**/*', 'test/**/*', 'addon/**/*', 'lib/**/*', 'products/**/*', 'routes/**/*', 'scenarios/**/*', 'home/**/*', 'sessions/**/*', 'templates/**/*', 'trades/**/*', 'home/**/*', 'admin/**/*', 'tests/**/*', 'handlers/**/*', 'categories/**/*']
let g:fuf_coveragefile_globPatterns = g:fuf_coveragefile_globPatterns + ["extlib/**/*", "addon/**/*", "api/**/*", "dolilo/**/*", "event/**/*", "exchange/**/*", "extlib/**/*", "form/**/*", "formtastic/**/*", "health_check/**/*", "japanese_converter/**/*", "job/**/*", "js_l10n/**/*", "l10n/**/*", "localization/**/*", "japanese_converter/**/*", "job/**/*", "js_l10n/**/*", "l10n/**/*", "localization/**/*", "resources_engine/**/*", "rewriter/**/*", "seo/**/*", "tasks/**/*", "version_control/**/*", "widget/**/*", "soft_delete/**/*"]
let g:fuf_coveragefile_globPatterns = g:fuf_coveragefile_globPatterns + ['access/**/*', 'chats/**/*', 'configs/**/*', 'entries/**/*', 'files/**/*', 'groups/**/*', 'handlerrors/**/*', 'handlers/**/*', 'history/**/*', 'mails/**/*', 'mails_hub/**/*', 'members/**/*', 'migrations/**/*', 'notifications/**/*', 'organizations/**/*', 'pendingitems/**/*', 'presenter/**/*', 'qortexapihttpimpl/**/*', 'qortexdev/**/*', 'qortexprod/**/*', 'routes/**/*', 'scripts/**/*', 'services/**/*', 'stats/**/*', 'templates/**/*', 'tests/**/*', 'users/**/*', 'utils/**/*']
let g:fuf_enumeratingLimit = 25

au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" インデント設定
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
" オートコンパイル
  "保存と同時にコンパイルする
autocmd BufWritePost *.coffee silent make!
  "エラーがあったら別ウィンドウで表示
autocmd QuickFixCmdPost * nested cwindow | redraw!
" Ctrl-cで右ウィンドウにコンパイル結果を一時表示する
nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h
let g:syntastic_ruby_checkers = ['rubocop']
