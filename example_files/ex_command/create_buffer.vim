" silent付けるとメッセージ表示を消せる
let fname = 'my-own-buffer'
silent! execute 'new' fname

" bufferの読み書き
let buf = getbufline('my-own-buffer', 11, 15) " 11-15行目をリストとしてbufに代入
call append(0, '----')
call append(0, 'oooo')
call append(0, 'hhhh')
call setline(1, 'aaaa') " 1行目を置き換える

