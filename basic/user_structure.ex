# TIP: Structures
defmodule User do
  defstruct name: "", age: 0
end

# Run this in iex:
# iex> fernando = %User{name: "Fernando", age: 32}
# iex> IO.puts fernando.name
# iex> IO.puts "#{fernando.age}"
