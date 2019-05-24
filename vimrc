"""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/taglist.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'Towxm/vim-swift'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-ruby/vim-ruby'

call plug#end() 

"filetype plugin on
" vundle help:
" :PlugStatus       - lists configured plugins
" :PlugInstall    	- installs plugins; append `!` to update 
" :PlugUpdate	  	- update plugin
" :PlugUpgrade    	- upgrade vim-plug
" :PlugClean		- clean
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim base config
set nocompatible
set backspace=2
set nu
syn on
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set cindent
set showmatch
set hlsearch

filetype on
filetype plugin on
filetype indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"Key map
"inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"taglist放在右侧并且自动打开
let Tlist_Use_Right_Window=1
"let Tlist_Auto_Open=1

if has('mac')
	let Tlist_Ctags_Cmd='/usr/local/bin/ctags' 
endif

"只显示当前的taglist
let Tlist_Show_One_File = 1
"NERDTree 自动打开
"autocmd vimenter * NERDTree
let NERDTreeWinSize = 40
"关掉顶部预览窗口
set completeopt=longest,menuone
let g:ycm_global_ycm_extra_conf ='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast key
"nnoremap <silent> <expr> <F2> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set color
if has('mac')
	highlight LineNr ctermfg=green
	highlight SignColumn ctermbg=blue
	highlight SpellBad ctermbg=red ctermfg=white
	highlight Search ctermbg=128 ctermfg=white
	highlight Constant ctermfg=50
	highlight Comment ctermfg=204
	highlight Pmenu ctermbg=blue
	highlight PmenuSel ctermbg=cyan ctermfg=yellow
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"path settings
set path+=/usr/local/include/**
"set path+=~/Desktop/YXPBuyer/**
"set tags+=~/.vim/tags/sys.tags
"set tags+=~/.vim/tags/boost.tags

if has('mac') 
	"设置查找头文件的路径 mac下用
	set path+=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/**
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"different platform
"if has('win32') 
	
"elseif has('unix') 

"elseif has('mac')

"endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""



