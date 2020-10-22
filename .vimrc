"
"   Основные настройки
"
" Включаем подсветку синтаксиса
syntax on
" Цветовая схема
" colorscheme darkblue
" Регистронезависимый поиск
set ignorecase
" Игнорировать регистр при поиске, если нет больших букв
set smartcase
" Выключаем перенос строк
set wrap
" Перенос по словам, а не по буквам
set linebreak
" Дополнение в виде меню
set completeopt=menu
" Чтобы нормально вводить команды в русской раскладке
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" по умолчанию - латинская раскладка
set iminsert=0
" по умолчанию - латинская раскладка при поиске
set imsearch=0
" игнорировать регистр при поиске
set ic
" Установить вирутальный звонок
set visualbell
" подсвечивать поиск
set hls
" использовать инкрементальный поиск
set is
" настраиваю для работы с русскими словами (чтобы w, b, * понимали русские слова)
set iskeyword=@,48-57,_,192-255
" задать размер табуляции в четыре пробела
set ts=4
" Заменять tab на пробелы
set expandtab
" В командах отступа 4 пробела
set shiftwidth=4
" отображение выполняемой команды
set showcmd 
" перенос по словам, а не по буквам
set linebreak
set dy=lastline
" устанавливаем номера строк
set number
" перечитывать изменённые файлы автоматически
set autoread
" использовать диалоги вместо сообщений об ошибках
set confirm
" во избежание лишней путаницы использовать системный буфер обмена вместо буфера Vim
set clipboard=unnamed 
" включить сохранение резервных копий
set backup
" показывать совпадающие скобки для HTML-тегов
set mps+=<:> 
" Проверка орфографии
"set spell spelllang=ru,en
" set charset translation encoding
set encoding=utf-8
" set terminal encoding
set termencoding=utf-8
" set save encoding
set fileencoding=utf-8
" Список для определения кодировки файла в порядке предпочтения
set fileencodings=utf8,cp1251,koi8-r,cp866,ucs-2le   
" Строка состояния
set laststatus=2   " всегда показывать строку статуса
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
" Сворачивание блоков
" set foldenable
set nofoldenable
" Сворачиваем на основе синтаксиса
"set foldmethod=syntax
set foldmethod=manual
" Сворачиваем на основе отступов
" set foldmethod=indent
" При автодополнении подсказки
set wildmenu
" Отображать табуляцию и переводы строк
set list
" Настройка отображения специальных символов
set list listchars=tab:→\ ,trail:·
" Включить автоматическую расстановку отступов
set autoindent
" Включить “умную” расстановку отступов
set smartindent
" Включаем несовместимость настроек с Vi, так как Vi нам и не понадобится
set nocompatible
" Показывать положение курсора всё время.
set ruler
" Показывать незавершённые команды в статусбаре
set showcmd
" Отображение парных символов
set showmatch
" убираем бэкапы и свапы отдельно
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
" Подсвечивать линию текста, на которой находится курсор
"set cursorline
"highlight CursorLine guibg=lightblue ctermbg=lightblue
"highlight CursorLine term=none cterm=inverse,bold
" В 7-й версии увеличиваем вложенность UNDO 
if version >= 700
    set history=64
    set undolevels=128
    set undodir=~/.vim/undodir/
    set undofile
    set undolevels=1000
    set undoreload=10000
endif
"
"    Работа с мышкой 
"
" set mouse=a
" Скрывать указатель мыши, когда печатаем
" set mousehide
"
"   Маппинг клавиш
"
" прокручивать текст колёсиком мыши и вставлять выделенное в X`ах мышкой в Vim нажатием средней кнопки мыши 
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
" Cохранение по F2
imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>
" По F3 вставка файла
imap <F3> <Esc>:read 
map <F3> <Esc>:read 
" По <F4> открывается новая вкладка (tab) и выводится список каталогов и файлов текущего каталога.
" imap <F4> <Esc>:browse tabnew<CR> 
" map <F4> <Esc>:browse tabnew<CR>
" По <F5> позволяет переключать вкладки справа-налево, по-порядку, отображая открытые в них файлы.
imap <F5> <Esc> :tabprev <CR>i
map <F5> :tabprev <CR>
" По <F6> позволяет переключать вкладки слева-направо, по-порядку, отображая открытые в них файлы.
imap <F6> <Esc> :tabnext <CR>i
map <F6> :tabnext <CR>
" По <F12> в конец файла и добавляем
imap <F12> <Esc> GGO
map <F12>  GGO
map <C-n> :NERDTreeToggle<CR>
"
"   Меню
"
" проверка орфографии:
set wildmenu
set wcm=<Tab>
menu SetSpell.ru  :set spl=ru spell<CR>
menu SetSpell.en  :set spl=en spell<CR>
menu SetSpell.off :set nospell<CR>
map <F7> :emenu SetSpell.<Tab>
" выбор альтернатив:
imap <F8> <Esc> z=<CR>i
map <F8> z=<CR>
" По <F9> позволяет приостановить работу Vim и вызвать соответствующие программы:
set wildmenu
set wcm=<Tab>
menu Exec.Python    :!python % <CR>
menu Exec.bash      :!/bin/bash<CR>
menu Exec.mc        :!mc<CR>
map <F9> :emenu Exec.<Tab>
" Пользовательское меню. По <F10> позволяет вызвать меню различных вариантов завершения работы с Vim. ( Глоток воздуха для новичка :)
set wildmenu
set wcm=<Tab>
menu Exit.quit     :quit<CR>
menu Exit.quit!    :quit!<CR>
menu Exit.save     :exit<CR>
map <F11> :emenu Exit.<Tab>
" F11 - работа с кодировками
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r  :e ++enc=koi8-r<CR>
menu Encoding.cp1251  :e ++enc=cp1251<CR>
menu Encoding.cp866   :e ++enc=cp866<CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
menu Encoding.utf-8   :e ++enc=utf-8<CR>
map <F10> :emenu Encoding.<Tab>
"
"   Функции
"
" Позволяет по <Tab>, более привычному некоторым пользователям, вызывать авто-дополнение для текущего активного синтаксиса:
 function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
 endfunction
 inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
 inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
" 
" Всплывающий перевод
"function! MyBalloonExpr()
"       return system("sdcv -0nce ". v:beval_text)
"endfunction
"set bexpr=MyBalloonExpr()
"set ballooneval
"set balloondelay=100

" Новый Python файл забиваем стандартом
function! WritePyinit()
    let @q = "\#\!/usr/bin/env python\n\#-*- encoding: utf-8 -*-\n\n"
    execute "0put q"
endfunction
autocmd BufNewFile *.py call WritePyinit()
autocmd FileType *.py execute 'set foldmethod=indent'

" Новый sh скрипт
function! WriteShinit()
    let @q = "\#\!/bin/bash \n\n"
    execute "0put q"
endfunction
autocmd BufNewFile *.sh call WriteShinit()

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" включаем поддержку powershell
autocmd BufNewFile,BufRead   *.PS1   set ft=ps1
autocmd FileType *.PS1 execute 'e ++enc=cp1251'

  " Включить словарь - исходя из расширения файла
autocmd FileType * execute 'setlocal dict+=~/.vim/words/'.&filetype.'.txt'

" Toggle paste mode
" "   (prefer this over 'pastetoggle' to echo current state)
nmap <leader>p :setlocal paste! paste?<cr>


" доработка – автозагрузка произвольного конфигурационного файла из директории запуска vim. это позволяет, к примеру, задать определенные настройки компилятора для каждой из директорий и при запуски vim-а подгружить их автоматически. настройки должны быть записаны в файл .vim_config.
if filereadable(".vim_config")
    source .vim_config
endif

if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
 Plug 'preservim/nerdtree' ", { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pprovost/vim-ps1'
Plug 'ErichDonGubler/vim-sublime-monokai'
" Необходим перед этим установить NerdFonts
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

"let g:airline_statusline_ontop=1
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
"let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
"let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '>'
let g:airline#extensions#tabline#left_alt_sep = '<'

autocmd VimEnter * nmap <F4> :NERDTreeToggle<CR>
autocmd VimEnter * imap <F4> <Esc>:NERDTreeToggle<CR>a
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35

colorscheme sublimemonokai
