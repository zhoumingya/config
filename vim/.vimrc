source ~/.vimrc.ext

" Vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
" A tree explorer plugin for vim. 
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" powerline
set t_Co=256        " 终端颜色
" set laststatus=2    " 显示状态栏
let g:Powerline_symbols = 'compatible'  

" nerdtree 
map <C-n> :NERDTreeToggle<CR>

"set makeprg=gmake
syntax on
map <F2> <C-w>
"map <F3> <F2>h:vertical resize +8<CR>
"map <F4> <F2>l:vertical resize<CR>
nmap <silent> <F5> :TlistToggle<CR>
nmap <F7> "zp
nmap <C-S-F7> "xp
nmap <F8> :TagbarToggle<CR>
nmap <C-S-F8> <C-W>} <F2>kzb<F2>j
map <C-F5> <C-w>+
map <C-F6> <C-w>-
map <C-F7> <C-w><
map <C-F8> <C-w>>
map <F9> :cp<CR>
map <F10> :cn<CR>
map <F11> :cc<CR>
map <F12> :cl<CR>
map <C-F9> :lprev<CR>
map <C-F10> :lnext<CR>
map <C-F11> :cc<CR>
map <C-F12> :llist<CR>
map <S-F10> :wall<CR>:make<CR>
map <S-F11> :!make run<CR>
map <S-F8> :!make ddd<CR>
map <S-F7> :!make prof<CR>
map <S-F6> :!make lint<CR>
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" Using 'CTRL-spacebar' then a search type makes the vim window
" split horizontally, with search result displayed in
" the new window.
nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>
" Hitting ALT-space *twice* before the search type does a vertical
" split instead of a horizontal one
nmap <C-Space><C-Space>s
       \:vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>g
       \:vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>c
       \:vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>t
       \:vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>e
\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space><C-Space>i
       \:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space><C-Space>d
       \:vert scs find d <C-R>=expand("<cword>")<CR><CR>
"nnoremap <silent> <C-]> :FufBufferTagWithCursorWord!<CR>
"nnoremap <silent> <C-]> :FufBufferTagAllWithCursorWord!<CR>
vnoremap <silent> <C-]> :FufBufferTagAllWithSelectedText!<CR>
if has("cscope")
set csprg=/opt/local/bin/cscope
set csto=0
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
" else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
endif
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_File_Fold_Auto_Close = 1
filetype indent on "line indent
filetype detect
syntax enable
filetype plugin on
au BufEnter *.txt setlocal ft=txt
set ai "set auto indent
set tgst "let :tag command use tagstack
set sft "show full tag message when taggle a tag
set nu "showing line number
set ul=90 "set the maximum number of changes that can be undone
set formatoptions=tcro  "switch auto * when I type enter in the mutiline
set autoread
"common block
set shiftwidth=4 "number of spaces used for each step of (auto)indent
set expandtab
set tabstop=4
set softtabstop=4
set noexpandtab
set sta "a <TAB> in an indent inserts 'shiftwidth' spaces
set hidden "let buffer can be hidden.
"set foldclose=all "set that folds will autoclose when I lease it.
set foldmethod=manual "set fold method as manual
set foldcolumn=2 "set fold column to 2
set incsearch "set increase search
set switchbuf=usetab "switch to specific tab if possible when switching buffers
runtime plugin/myvimman.vim "load Man command into vi.
"File myvimman.vim is a mofified version of
"ftplugin/man.vim


"set highlight color
hi Comment ctermfg=darkcyan
hi Statement ctermfg=Yellow
hi PreProc ctermfg=lightcyan
hi Type ctermfg=Green
hi Directory ctermfg=lightgreen
hi Visual ctermbg=240
hi Pmenu ctermbg=black ctermfg=lightcyan cterm=italic
hi PmenuSel ctermbg=grey  ctermfg=red  cterm=bold
hi link cCustomizeCommentMarks Todo

" Keywork highlight groups
" AWK: awkFunctionTag
" C#: csClassOrStructTag, csMethodTag
" C, C++, Objective C: cTypeTag, cEnumTag, cPreProcTag, cFunctionTag,
" cMemberTag
" Java: javaClassTag, javaInterfaceTag, javaMethodTag
" Lua: luaFuncTag
" Perl: perlFunctionTag
" PHP: phpFunctionsTag, phpClassesTag
" Python: pythonFunctionTag, pythonMethodTag, pythonClassTag
" Ruby: rubyModuleNameTag, rubyClassNameTag, rubyMethodNameTag
" Shell: shFunctionTag
" Tcl: tclCommandTag
" Vim: vimAutoGroupTag, vimCommandTag, vimFuncNameTag, vimScriptFuncNameTag
hi csClassOrStructTag ctermfg=Brown guifg=Brown
hi cTypeTag ctermfg=Brown guifg=Brown
hi pythonClassTag ctermfg=Brown guifg=Brown
hi javaClassTag ctermfg=Brown guifg=Brown
hi phpClassesTag ctermfg=Brown guifg=Brown


command -nargs=0 SS :mksession! ~/RecentProject.vim
command -nargs=0 SS1 :mksession! ~/RecentProject1.vim
command -nargs=0 SS2 :mksession! ~/RecentProject2.vim
command -nargs=0 SS3 :mksession! ~/RecentProject3.vim
command -nargs=0 -range=% COM :<line1>,<line2>s/^\(.*\)/\/\/\1/g
command -nargs=0 -range=% UNCOM :<line1>,<line2>s/^\/\///g
command -nargs=0 WP :r ~/.vim/workpaper.template
command -nargs=0 AWA :e ~/gre.txt
command -nargs=1 ALGOMK :make -f ~/.libs/makefile <args>
command -nargs=1 GG :grep -r <args> .

let g:lua_inspect_events = ''
let g:easytags_events = ['BufWritePost']

let g:FindIgnore = ['.swp', '.swo', '.pyc', '.class', '.git', '.svn']

" Find functionality
function! Find(...)
    if a:0==2
        let path=a:1
        let query=a:2
    else
        let path="./"
        let query=a:1
    endif

    if !exists("g:FindIgnore")
        let ignore = ""
    else
        let ignore = " | egrep -v '".join(g:FindIgnore, "|")."'"
    endif

    let l:list=system("find ".path." -type f -path '".query."'".ignore)
    let l:num=strlen(substitute(l:list, "[^\n]", "", "g"))

    if l:num < 1
        echo "'".query."' not found"
        return
    endif

    if l:num == 1
        exe "open " . substitute(l:list, "\n", "", "g")
    else
        let tmpfile = tempname()
        exe "redir! > " . tmpfile
        silent echon l:list
        redir END
        let old_efm = &efm
        set efm=%f

        if exists(":cgetfile")
            execute "silent! cgetfile " . tmpfile
        else
            execute "silent! cfile " . tmpfile
        endif

        let &efm = old_efm

        " Open the quickfix window below the current window
        botright copen

        call delete(tmpfile)
    endif
endfunction
command! -nargs=* Find :call Find(<f-args>)

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

if &diff
	set diffopt=filler,context:10000
	syncbind
endif

let g:EasyGrepFilesToExclude=".svn,.git,*.pyc,*.tmp,*.edited,*.orig,*.xml,*.swo,*.swp,*.txt,*.xls,*.pubkey,bot/*,svn/*"
"let g:EasyGrepWindowPosition="botright"
let g:EasyGrepWindow=0
let g:EasyGrepExtraRoot1 = ["base", "base/interfaces", "cell", "cell/interfaces", "common", "common/ai", "common/ai/actions", "common/ai/conditions", "common/skill", "common/task", "common/battlelogic", "common/reborn", "common/utils", "common/occupation", 'common/Lib', "defs", 'defs/interfaces', 'common_server', 'common_server/gm', 'common_server/gm/GMAdmin', 'common_server/server_interfaces', 'common_server/server_components', 'common_server/Lib', 'common_server/BWEngine']
let g:EasyGrepExtraRoot2 = ["base", "base/interfaces", "cell", "cell/interfaces", "common", "common/ai", "common/ai/actions", "common/ai/conditions", "common/skill", "common/task", "common/battlelogic", "common/reborn", "common/utils", "common/occupation", 'common/Lib', "defs", 'defs/interfaces', 'common_server', 'common_server/gm', 'common_server/gm/GMAdmin', 'common_server/server_interfaces', 'common_server/server_components', 'common_server/Lib', 'common_server/BWEngine', 'common/data', 'common/cdata']
let g:EasyGrepCommand=1
"let g:EasyGrepJumpToMatch=0
let g:EasyGrepSearchCurrentBufferDir=1

let g:syntastic_auto_loc_list = 0 " disable auto closing location list for EasyGrep

nnoremap ]a     :cnext<CR>
nnoremap [a     :cprevious<CR>
nnoremap ]q     :copen<CR>
nnoremap [q     :cclose<CR>
