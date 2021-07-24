def fizz_buzz(n)
  if n % 15 == 0
    p 'FizzBuzz'
  elsif n % 3 == 0
    p 'Fizz'
  elsif n % 5 == 0
    p 'Buzz'
  else
    p n.to_s
  end
end
fizz_buzz(1)
fizz_buzz(3)
fizz_buzz(4)
fizz_buzz(5)
fizz_buzz(6)
fizz_buzz(15)