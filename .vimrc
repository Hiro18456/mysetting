" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" 新しい行のインデントを現在行と同じにする
set autoindent

" タブの代わりに空白文字を挿入する
set expandtab

" インクリメンタルサーチを行う
set incsearch

" タブ文字，行末など不可視文字を表示する
" set list

" listで表示される文字のフォーマットを指定する
" set listchars=eol:¬,tab:>\,extends:<

" 行番号を表示する
set number

" シフト移動幅の設定
set shiftwidth=4

" ')'が入力された時，対応する括弧をハイライトする
set showmatch

" 検索時に大文字を含んでいたら大/小を区別する
set smartcase

" 新しい行を作成した時に高度な自動インデントを行う
set smartindent

" 行頭の余白内でtabを打ち込むと，'shiftwidth'の分だけインデントする
set smarttab

" Mac clipboard
vmap <silent> sy :!pbcopy; pbpaste<CR>
map <silent> sp <esc>o<esc>v :!pbpaste<CR>
