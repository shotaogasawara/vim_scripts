let score = 0
echo score

let score += 100
echo score

unlet! hoge
" unlet hoge

let msg = 'Hello '
let msg .= 'World\n'
echo msg

let [v1,v2;v3] = range(10)
echo v1
echo v2
echo v3

let [x, y] = ['foo', 'bar']
let [x, y] = [y, x]
echo x y
