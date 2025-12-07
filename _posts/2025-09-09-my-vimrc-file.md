---
layout: post
title: My .vimrc file
categories: vim tools
tags: vim vimrc config
latest_posts:
   enabled: true
   limit: 5
---

This is my <a href="https://github.com/cube-se/dotfiles/blob/main/apps/vim/vimrc">.vimrc</a> file, as I mentioned earlier, I have a new job where working with Vim is again optimal, so I needed to go through my configuration and update it. I thought this could be a good exercise to do together.

#### Plugins

A couple of these plugins have been with me for a very long time and some I have only recently started using. There are a couple that are primarily useful for certain languages or tools. For me to install a plugin, it should add something special to my work.

{% highlight vim lineos %}
"-----------------------------------
"
"   0. Plugins

    call plug#begin()

    Plug 'arcticicestudio/nord-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-ruby/vim-ruby'
    Plug 'scrooloose/nerdtree'
    Plug 'ddollar/nerdcommenter'
    Plug 'tpope/vim-rails'
    Plug 'preservim/tagbar'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-surround'
    Plug 'vim-test/vim-test'
    Plug 'tpope/vim-commentary'
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'
    Plug 'vim-test/vim-test'
    Plug 'tpope/vim-commentary'

    call plug#end()

    " Breif help
    "
    " :PlugInstall  - Install plugins
    " :PlugUpgrade  - Upgrade vim-plug itself
    " :PlugClean    - Remove unlisted plugin
{%  endhighlight %}

##### Ruby and Ruby on Rails
* vim-ruby/vim-ruby
* tpope/vim-rails
* vim-test/vim-test

__Vim-Ruby__ contains Vim's runtime files for ruby support. This includes syntax highlighting, indentation, omnicompletion, and various useful tools and mappings.

__Vim-Rails__ enhanced syntax highlighting, easy navigation of the Rails directory structure, task runner etc. 


##### File handling
* ctrlpvim/ctrlp.vim
* scrooloose/nerdtree

__NERDTree__ is s a file system explorer for the Vim editor. Using this plugin, you can visually browse complex directory hierarchies, quickly open files for reading or editing, and perform basic file system operations.

__CTRLP__ is a full path fuzzy file, buffer, mru, tag, ... finder for Vim. When i can find my way around a project is the ultime time booster.

##### Linters and language tools
* tpope/vim-ragtag
* preservim/vim-markdown
* tpope/vim-commentary
* tpope/vim-surround

__Vim-Markdown__ provides syntax highlighting, matching rules and mappings for the original Markdown and extensions.

__Vim_Commentary__ simply comment stuff out.

##### Misc tools
* tpope/vim-surround
* godlygeek/tabular

__Vim-Surrond__ is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

__tabular__ line up text, with ease.

#### Functions

{% highlight vim lineos %}
"-----------------------------------
"
"   1. Functions

    function! VisualSelection(direction, extra_filter) range
      let l:saved_reg = @"
      execute "normal! vgvy"

      let l:pattern = escape(@", "\\/.*'$^~[]")
      let l:pattern = substitute(l:pattern, "\n$", "", "")

      if a:direction == 'gv'
          call CmdLine("Ack '" . l:pattern . "' " )
      elseif a:direction == 'replace'
          call CmdLine("%s" . '/'. l:pattern . '/')
      endif

      let @/ = l:pattern
      let @" = l:saved_reg
    endfunction

{%  endhighlight %}

__VisualSelection(direction, extra_filter)__ search for the word under the cursor. Supe usefull after a an idea by Michael Naumann


##### OS specific settings

{% highlight vim lineos %}

"-----------------------------------
"
"   2. OS specific settings

    if has('mac')
    end
    if has('linux')
      nnoremap <silent> <leader>cf :<c-u>call FormatCodeWithCodestyler()<cr>
    end

{%  endhighlight %}

Now days im only using Linux machines, but i keep this - Codestyler is only avelibal for Linux.


#### General congifuration options

{% highlight vim lineos %}

"-----------------------------------
"
"   3. General congifuration options

    set history=50
    " Use spaces instead of tabs
    set expandtab
    " Be smart when using tabs ;)
    set smarttab
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    " Linebreak on 500 characters
    set lbr
    set tw=500
    set ai              " Auto indent
    set si              " Smart indent
    set wrap            " Wrap lines
    set so=7            " Set 7 lines to the cursor - when moving vertically using j/k
    set number
    set numberwidth=5
    set cursorline
    set autowrite       " Automatically :write before running commands
    set tags=./tags
    set autoindent		  " always set autoindenting on
    set showcmd		      " display incomplete commands
    " Buffert settings
    set autoread        " Auto-reload buffers when file changed on disk
    set nobackup        " Don't use backup files
    set nowritebackup   " Don't backup the file while editing
    set noswapfile      " Don't create swapfiles for new buffers
    " Ignore case when searching
    set ignorecase
    " With a map leader it's possible to do extra key combinations
    " like <leader>w saves the current file
    let mapleader = ","
    " Configure backspace so it acts as it should act
    set backspace=eol,start,indent
    set whichwrap+=<,>,h,l
{%  endhighlight %}

##### File compatibility and configuration issues

Yes i loke the cursorline, and i search ignoreing case.

{% highlight bash %}
"-----------------------------------
"
"   4. File compatibility and configuration issues

    let vim_markdown_folding_disabled = 1
{%  endhighlight %}

Nothing special more then some preferences for vim_markdown plugin.

##### Color, Look&Feel Configuration

{% highlight bash %}
"-----------------------------------
"
"   5. Color, Look&Feel Configuration

    syntax enable         " enable syntax highlighting
    colorscheme nord
    au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
    autocmd BufWritePre * :%s/\s\+$//e

    " Settings for gvim
    if has("gui_running")
      set guioptions-=T
      if has('mac')
        set guifont=Fira\ Code:h14
      end
      if has('linux')
       set guifont=Fira\ Code\ 12
      end
    endif
{%  endhighlight %}

Yes i love Nord. Some old special config for font size when i was using a Mac and a Linux.

##### Modes

{% highlight bash %}
"-----------------------------------
"
"   6. Modes


    " Visual mode pressing * or # searches for the current selection
    " Super useful! From an idea by Michael Naumann
    <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
    vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
{%  endhighlight %}

Key mapping only in special modes.

##### Plugins and key mappings

{% highlight bash %}
"-----------------------------------
"
"   7. Plugins and key mappings

    " Plugin settings
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|tmp|storage|vendor|node_modules|coverage|log|public)$'

    " Key mappings
    nnoremap <C-s> :Ag<space>
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>
    nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
      \ 'file': '\.so$\|\.dat$|\.DS_Store$'
      \ }
    nmap <F8> :TagbarToggle<CR>
    " Vim-Test

    let test#strategy = "vimterminal"

    nmap <silent> <leader>t :TestNearest<CR>
    nmap <silent> <leader>T :TestFile<CR>
    nmap <silent> <leader>a :TestSuite<CR>
    nmap <silent> <leader>l :TestLast<CR
    nmap <silent> <leader>g :TestVisit<CR>
    nnoremap <leader>ev :split $MYVIMRC<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>
    " Git grep visually selected text
   vnoremap <leader>gg y:Ggrep <c-r>"<cr>
   " Move a line of text using ALT+[jk] or Command+[jk] on mac (Normal mode)
   nmap <M-j> mz:m+<cr>`z
   nmap <M-k> mz:m-2<cr>`z
   vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
   vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
   if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
   endif
   map <Leader>rt :!ctags -R --languages=ruby,javascript --exclude=vendor --exclude=node_modules --exclude=public --exclude=coverage .<cr><cr>
   noremap <C-]> <F3>
   " Ctrl+h & Ctrl+l cycle between buffers in the current split
   noremap <silent> <C-h> :bprev<CR>
   noremap <silent> <C-l> :bnext<CR>
   " <Leader>q Closes the current buffer
   nnoremap <silent> <Leader>q :Bclose<CR>
   " <Leader>Q Closes the current window
   nnoremap <silent> <Leader>Q <C-w>c
   "<Leader>Ctrl+q Force Closes the current buffer
   nnoremap <silent> <Leader><C-q> :Bclose!<CR>
   nnoremap <Leader>gs :Git<CR>
   nnoremap <Leader>gr :GRemove<CR>
   nnoremap <Leader>gl :Gclog<CR>
   nnoremap <Leader>gb :Git_blame<CR>
   nnoremap <Leader>gm :GMove
   vnoremap <Leader>gg :Git
   nnoremap <Leader>gd :Gdiffsplit<CR>

{%  endhighlight %}

Ctags and some personal bindings.

#####  Moving around, bufferts and windows

{% highlight bash %}
"-----------------------------------
"
"   8. Moving around, bufferts and windows

    " Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
    map <space> /
    map <C-space> ?
    " Disable highlight when <leader><cr> is pressed
    map <silent> <leader><cr> :noh<cr>
    " Smart way to move between windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l
    " Close the current buffer
    map <leader>bd :Bclose<cr>:tabclose<cr>gT
    " Close all the buffers
    map <leader>ba :bufdo bd<cr>
    map <leader>l :bnext<cr>
    map <leader>h :bprevious<cr>
    " Useful mappings for managing tabs
    map <leader>tn :tabnew<cr>
    map <leader>to :tabonly<cr>
    map <leader>tc :tabclose<cr>
    map <leader>tm :tabmove
    map <leader>t<leader> :tabnext
    nnoremap <Leader>b :buffers<CR>:buffer<Space>
    nnoremap <silent> <C-b> :Buffers<CR>
    " Open new split panes to right and bottom, which feels more natural
    set splitbelow
    set splitright

{%  endhighlight %}

##### General information


{% highlight bash %}
"-----------------------------------
"
"   9. General information

"    Building C-tags
"    ---------------
"    https://kulkarniamit.github.io/whatwhyhow/howto/use-vim-ctags.html
"
"    The silver surfer
"    -----------------
"    brew install the_silver_searcher

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
{%  endhighlight %}
