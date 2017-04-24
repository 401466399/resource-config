" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2002 Sep 19
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
"==========================================================================
"My Setting-sunshanlu
"==========================================================================
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>

"�﷨����
syntax enable
syntax on
"��ʾ�к�
set nu

"�޸�Ĭ��ע����ɫ
"hi Comment ctermfg=DarkCyan
"�����˸��ɾ��
"set backspace=2
"�������
set mouse=v
"set selection=exclusive
"set selectmode=mouse,key
"��C���Ը�ʽ����
set cindent
set autoindent
set smartindent
set shiftwidth=4

" ��������δ������޸�ʱ�л�������
"set hidden

" �����ޱ����ļ�
set writebackup
set nobackup

"��ʾ����ƥ��
set showmatch
"����ƥ����ʾʱ��Ϊ1(��λ��ʮ��֮һ��)
set matchtime=5
"��ʾ��ǰ���к��кţ�
set ruler
"��״̬����ʾ�������������
set showcmd

set foldmethod=syntax
"Ĭ������²��۵�
set foldlevel=100
" ����״̬����Ϣ
set laststatus=2
" �����еĸ߶ȣ�Ĭ��Ϊ1��������Ϊ2
set cmdheight=2


" ��ʾTab����ʹ��һ�������ߴ���
set list
"set listchars=tab:\|\ ,
set listchars=tab:>-,trail:-


"����ļ�����
filetype on
"�����ļ����Ͳ��
filetype plugin on
"Ϊ�ض��ļ�����������������ļ�
filetype indent on
" �����Զ���ȫ
filetype plugin indent on 


"���ñ����Զ�ʶ��, ����������ʾ
filetype on "���ļ����ͼ��
"set fileencodings=euc-cn,ucs-bom,utf-8,cp936,gb2312,gb18030,gbk,big5,euc-jp,euc-kr,latin1
set fileencodings=utf-8,gb2312,gbk,gb18030
"������ܸܺ���������encoding��ʲô���룬���ܽ��ı���ʾ����
"set termencoding=gb2312
set termencoding=utf-8
"�½��ļ�ʹ�õı���
set fileencoding=utf-8
"set fileencoding=gb2312
"������ʾ�ı��룬��������ʾ
set encoding=utf-8
"set encoding=utf-8
"set encoding=euc-cn
"set encoding=gbk
"set encoding=gb2312
"set ambiwidth=double
set fileformat=unix


"���ø�������
set hlsearch
"������ʱ������Ĵʾ�����ַ�����
set incsearch

" ��ɫģʽ
set t_Co=256
"colorscheme wombat256mod
"colorscheme gardener
"colorscheme elflord
colorscheme desert
"colorscheme evening
"colorscheme darkblue
"colorscheme torte
"colorscheme default

" ���� && �ֺ�
set guifont=Monaco:h10
"set guifont=Consolas:h10

" :LoadTemplate       �����ļ���׺�Զ�����ģ��
"let g:template_path='/home/ruchee/.vim/template/'

" :AuthorInfoDetect   �Զ�������ߡ�ʱ�����Ϣ��������NERD_commenter && authorinfo�Ľ��
""let g:vimrc_author='sunshanlu'
""let g:vimrc_email='sunshanlu@baidu.com'
""let g:vimrc_homepage='http://www.sunshanlu.com'
"
"
" Ctrl + E            һ�������﷨ģ������ߡ�ʱ����Ϣ
""map <c-e> <ESC>:AuthorInfoDetect<CR><ESC>Gi
""imap <c-e> <ESC>:AuthorInfoDetect<CR><ESC>Gi
""vmap <c-e> <ESC>:AuthorInfoDetect<CR><ESC>Gi



" ======= ���� && �����Զ�ƥ�� ======= "
"
":inoremap ( ()<ESC>i

":inoremap ) <c-r>=ClosePair(')')<CR>
"
":inoremap { {}<ESC>i
"
":inoremap } <c-r>=ClosePair('}')<CR>
"
":inoremap [ []<ESC>i
"
":inoremap ] <c-r>=ClosePair(']')<CR>
"
":inoremap < <><ESC>i
"
":inoremap > <c-r>=ClosePair('>')<CR>
"
"":inoremap " ""<ESC>i
"
":inoremap ' ''<ESC>i
"
":inoremap ` ``<ESC>i
"
":inoremap * **<ESC>i

" ÿ�г���80�����ַ����»��߱�ʾ
""au BufRead,BufNewFile *.s,*.asm,*.h,*.c,*.cpp,*.java,*.cs,*.lisp,*.el,*.erl,*.tex,*.sh,*.lua,*.pl,*.php,*.tpl,*.py,*.rb,*.erb,*.vim,*.js,*.jade,*.coffee,*.css,*.xml,*.html,*.shtml,*.xhtml Underlined /.\%81v/
"
"
" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" ��������и���
set cursorline
hi CursorLine  cterm=NONE   ctermbg=darkred ctermfg=white

" ����tab���ĸ��ո�
set ts=4
set expandtab

" ��Ҫ��Tlistʹ��
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1

" �༭�ļ�ʱ��ͷ
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"

func SetTitle()
    if &filetype == 'sh'
	    call setline(1,"\#########################################################################")
	    call append(line("."), "\# File Name: ".expand("%"))
	    call append(line(".")+1, "\# Author: honka")
	    call append(line(".")+2, "\# Mail: yangcheng.iron@bytedance.com")
	    call append(line(".")+3, "\# Created Time: ".strftime("%c"))
	    call append(line(".")+4, "\#########################################################################")
        call append(line(".")+5, "\#!/bin/bash")
	    call append(line(".")+6, "")
    else
	    call setline(1, "/*************************************************************************")
	    call append(line("."), "    > File Name: ".expand("%"))
	    call append(line(".")+1, "    > Author: honka")
	    call append(line(".")+2, "    > Mail: yangcheng.iron@bytedance.com")
	    call append(line(".")+3, "    > Created Time: ".strftime("%c"))
	    call append(line(".")+4, " ************************************************************************/")
	    call append(line(".")+5, "")
    endif
    autocmd BufNewFile * normal G
endfunc
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
