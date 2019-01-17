"*************************************************************************
"my vim setting.
"Last update 7. Dec. 2018 
"*************************************************************************

"*************************************************************************
"Input settings.
"*************************************************************************
set noexpandtab "tabを半角スペースで挿入しない
set autoindent "改行時などに、自動でインデントを設定してくれる
set backspace=indent,eol,start "バックスペースを、空白、行末、行頭でも使えるようにする

"*************************************************************************
"Colorscheme settings.
"*************************************************************************
"colorscheme blue
" 参照 http://nanasi.jp/colorscheme/default_install.html
" torte
" evening
" blue
" darkblue
" default
" delek
" desert
" elflord
" evening
" koehler
" morning
" murphy
" pablo
" peachpuff
" ron
" shine
" slate
" torte
" zellner

"*************************************************************************
"Basic(environment) settings.
"*************************************************************************
set wrapscan "最後尾の検索候補にたどり着いたら、次に先頭に戻る
set showmatch "対応する括弧を強調表示
"set noswapfile "ファイル編集前の作業コピー.Vimクラッシュ時の復旧に使用*.swp ファイル 
"set nobackup "*~ (チルダ)ファイル 
"set nowritebackup "ファイルを上書きする前にバックアップを作ることを無効化
"set list "Visualize blank character.
"set listchars=tab:,eol:,extends:,precedes: "List文字の設定
set ruler "カーソルが何行目の何列目に置かれているかを表示
set tabstop=4 "タブ幅をスペース4つ分にする
set shiftwidth=4 "タブ幅をスペース4つ分にする
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set number "行番号の表示
syntax enable "構文ハイライト
set vb t_vb= "ビジュアルベルの表示内容.空文字列なら何もしない
set novisualbell "ビープ音をすべて視覚表示(ビジュアルベル)に置き換えない
set clipboard=unnamed,autoselect "ヤンクしたときに自動でクリップボードにコピーされる.クリップボードをOSと共有.
set nocompatible "viとの互換性を持たせる
set wildmenu "コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
"set wildmode "コマンドラインモードでのファイル名補完の挙動を指定します。
set shellslash "Windowsで￥を\に変換
"set formatoptions+=mM "
"set listchars=tab:^¥ ,trail:~ " 行末のスペースを可視化
set mouse= " バッファスクロール
set cursorline " カーソル行の背景色を変える
"set cursorcolumn " カーソル位置のカラムの背景色を変える
"set iminsert=2 " インサートモードから抜けると自動的にIMEをオフにする. 多分使えない
"入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
set autoread "編集中のファイルが変更されたら自動で読み直す
set hidden "バッファが編集中でもその他のファイルを開けるように
set smartindent " インデントはスマートインデント
nnoremap j gj "折り返し時に表示行単位での移動できるようにする
nnoremap k gk
set ambiwidth=double " □や○文字を適切に表示
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数


"*************************************************************************
"Display settings.
"*************************************************************************
set wrap "ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set laststatus=2 "statuslineを常に表示する
set cmdheight=2 "画面最下部(ステータス行より下)のメッセージ表示欄の行数
set showcmd "コマンド (の一部) を画面の最下行に表示
set title "ターミナルのタイトルをセットする
set scrolloff=5 "スクロール送りを開始する前後の行数を指定
set virtualedit=block "vimの矩形選択で文字が無くても右へ進める
set backspace=indent,eol,start "バックスペースを、空白、行末、行頭でも使えるようにする
"let &titleold=getcwd() " VIMのタイトルを上書きする
"set statusline+=%l/%L                                       " 現在行 / 総行数

set statusline=%<                                           " 行が長すぎるときに切り詰める位置
set statusline+=[%n]                                        " バッファ番号
set statusline+=%m                                          " 修正フラグ
set statusline+=%r                                          " 読み込み専用フラグ
set statusline+=%h                                          " ヘルプバッファフラグ
set statusline+=%w                                          " プレビューウィンドウフラグ
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}   " 文字コード : 改行コード
set statusline+=%y                                          " ファイルタイプ
set statusline+=\                                           " 空白スペース
set statusline+=%F                                          " ファイルフルパス
set statusline+=%=                                          " 左寄せ項目と右寄せ項目の区切り
"set statusline+=%{fugitive#statusline()}                   " Gitブランチ名を表示
"set statusline+=\ \                                        " 空白スペース 2個
set statusline+=%l/%L                                       " 現在行 / 総行数
set statusline+=,                                           " ,
set statusline+=%c%V                                        " 何列目にカーソルがあるか - 画面上の何列目にカーソルがあるか
set statusline+=\ \                                         " 空白スペース 2個
set statusline+=%P                                          " ファイル内の何％の位置にあるか

"*************************************************************************
"Search(move) settings.
"*************************************************************************
set nostartofline "ページアップ・ダウン時にカーソル位置を移動しない
set hlsearch "検索文字列をハイライトする
set ignorecase "検索で大文字と小文字を区別しない
set smartcase "検索文字列に大文字と小文字が混在した場合に限り、大文字と小文字を区別して検索.ignorecase と両立する.
set incsearch "エンターキーで確定する前から、文字が入力されるたびに検索を行う
set gdefault " 置換の時 g オプションをデフォルトで有効にする
" ESCを2回押すと検索ハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR> 
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"*************************************************************************
"Language Setting.
"*************************************************************************
"set fileencoding=UTF-8 "
"set termencoding=UTF-8 "
"set fileformats=unix,dos,mac
"scriptencording utf-8 "エンコーディング指定
"set encoding=utf-8
"set fileencodings=iso-2022-jp,sjis,utf-8
set enc=utf-8
setl fenc=utf-8
set fencs=utf-8,iso2022-jp,euc-jp,sjis
autocmd BufWrite *.{h,cpp} set fenc=utf-8


"*************************************************************************
"ウィンドウサイズの変更.
"*************************************************************************
"Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

"*************************************************************************
"ctags
"*************************************************************************
"https://qiita.com/aratana_tamutomo/items/59fb4c377863a385e032
nnoremap <C-]> g<C-]>

"set tags=.tags;$HOME
function! s:execute_ctags() abort
  " 探すタグファイル名
  let tag_name = '.tags'
  " ディレクトリを遡り、タグファイルを探し、パス取得
  let tags_path = findfile(tag_name, '.;')
  " タグファイルパスが見つからなかった場合
  if tags_path ==# ''
    return
  endif

  " タグファイルのディレクトリパスを取得
  " `:p:h`の部分は、:h filename-modifiersで確認
  let tags_dirpath = fnamemodify(tags_path, ':p:h')
  " 見つかったタグファイルのディレクトリに移動して、ctagsをバックグラウンド実行（エラー出力破棄）
  execute 'silent !cd' tags_dirpath '&& ctags -R -f' tag_name '2> /dev/null &'
endfunction

augroup ctags
  autocmd!
  autocmd BufWritePost * call s:execute_ctags()
augroup END

"*************************************************************************
"undo history
"mkdir -p ~/.vim/und
"*************************************************************************
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif
