list_concat = fn a, b -> a ++ b end
list_concat.([1,2], [3,4])

sum = fn a, b, c -> a + b + c end
sum.(1,2,3)

# pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]

pair_tuple_to_list = fn {a, b} -> [a, b] end
pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]

fun1 = fn -> fn -> "Hello" end end

greeter = fn name -> (fn -> "Hola #{name}" end) end
