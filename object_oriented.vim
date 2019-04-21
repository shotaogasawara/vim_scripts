" dictオプションを付けると辞書関数になる
" 辞書関数ではselfで辞書にアクセスできる
" どうなんだろ、すごくトリッキーに見える
function! Length() dict
	return sqrt(self.x * self.x + self.y * self.y)
endfunction

function! NewVec2D(x,y)
	return {'x': a:x, 'y': a:y, 'len': function('Length')}
endfunction

" さらにオブジェクト指向っぽくする
"
let g:vec2d = {'x': 0, 'y': 0}

function! g:vec2d.len() dict
	return sqrt(self.x * self.x + self.y * self.y)
endfunction

function! NewVec2D(x, y)
	let self = copy(g:vec2d)
	let self.x = a:x
	let self.y = a:y
	return self
endfunction


