new
call append(0, range(100))
call cursor(50, 0)


" normalコマンドとexecuteを組み合わせる
execute "normal!" (getline('.') / 7) / "k"
