" executeは引数に式を取ってその評価値をExコマンドとして実行する
let s = 'echo "Hello, world"'
execute s

" こんなのもOK
execute 'echo' '"Hello"' '"World"'

" executeはいわゆるメタプロができる

" quine:
" 自分自身のソースコードと同じ文字列を出力するプログラムのことらしい。うんちく。
let s = "echo printf('let s=%c%s%c|exe s', 34, s, 34)"|exe s

