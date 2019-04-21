set ignorecase
echo '&ignorecase ' . &ignorecase

set noignorecase
echo '&ignorecase ' . &ignorecase

" デフォだとエラーが出ても処理が続行する
function! WithoutAbort()
	let v = undefined_variable
	echo "OMG (not aborted)"
endfunction

" abort付けるとエラー時点で処理が終わる
function! WithAbort() abort
	let v = undefined_variable
	echo "OMG (aborted)"
endfunction


