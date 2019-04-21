" if文はこんな感じ
function! FizzBuzz(num)
	if a:num % 15 == 0
		return 'FizzBuzz'
	elseif a:num % 5 == 0
		return 'Buzz'
	elseif a:num % 3 == 0
		return 'Fizz'
	else
		return a:num
	endif
endfunction

" whileループ
echo 'while loop start: \n'
let i = 1
while i <= 15
	echo FizzBuzz(i)
	let i += 1
endwhile

" for
echo 'for loop start: \n'
for i in range(1,15)
	echo FizzBuzz(i)
endfor

" continueでループの先頭にジャンプ、breakでループを脱出

" 例外処理
function! Assert1to10(num)
	if a:num < 1 || a:num > 10
		throw 'Out of range: ' . a:num
	end
endfunction

function! Guess()
	try
		call Assert1to10(input('Guess a number: '))
		echo "\nYou are right!"
	catch /^Out of range: .*/
		echo '\nSomething bad...'
	finally
		echo 'Thank you for playing'
	endtry
endfunction


