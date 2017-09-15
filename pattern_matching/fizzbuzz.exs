fizzbuzz = fn
  ( 0, 0, _ ) -> "FizzBuzz"
  ( 0, _, _ ) -> "Fizz"
  ( _, 0, _ ) -> "Buzz"
  ( _, _, a ) -> a
end

coso = fn
  (n) -> fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts coso.(10)
IO.puts coso.(11)
IO.puts coso.(12)
IO.puts coso.(13)
IO.puts coso.(14)
IO.puts coso.(15)
IO.puts coso.(16)
