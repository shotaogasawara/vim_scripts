" 基本的にfunction!を使うのが良いらしい
function! Factorial(num)
	return a:num > 1 ? a:num * Factorial(a:num - 1) : 1
endfunction

function! ShowFour()
	echo '1st'
  echo '2nd'
	echo '3rd'
	echo '4th'
endfunction

" 引数使うときは頭にa:付ける
function! LengthVec3D(x, y, z)
	let l2 = a:x * a:x + a:y * a:y + a:z * a:z
  return sqrt(l2)
endfunction

" 可変長引数
function! Average(...)
	let total = 0.0
	for item in a:000
		let total += item
	endfor
	return total / a:0
endfunction

" 関数はデフォで0を返す
function! Empty()
endfunction

" rangeオプション
function! WithRange() range
	echo a:firstline a:lastline
endfunction

function! Mynumber(arg)
  echo line(".") . " " . a:arg
endfunction
"1,5call Mynumber(getline("."))

" 関数の種類

" スクリプトローカル関数(スクリプト内からしか呼び出せない)
function! s:world()
	return 'World'
endfunction

" 素朴に定義するとグローバル関数となる。Vimのどこからでも呼び出せる。慣習的に大文字から始める
function! Hello()
	return 'Hello ' . s:world()
endfunction

" autoload関数。実行時まで読み込みを遅延させる
" function filename#funcname()
"	echo 'Done!'
"	endfunction

" :call foo#bar:func() とするとファイル autoload/foo/bar.vim が runtimepath
" から読み込まれて関数 foo#bar#func() が実行される

" :delfunction hoge とすると関数の削除が可能
"

function! Fibonacci(num)
	if a:num == 0
		return 0
	elseif a:num == 1
		return 1
	else
		return Fibonacci(a:num - 1) + Fibonacci(a:num - 2)
	endif
endfunction

" call()関数は関数名と引数にリストを渡せる
" let fname = 'Fibonacci'
" echo call(fname, [5])
" -> 5

