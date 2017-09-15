# TIP: Pattern Matching - parameters in functions, pinned values and function parameters
# Programming Elixir 1.2 - Page 44
defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_)     -> "I don't know you"
    end
  end
end

# fernando = Greeter.for("Fernando", "Hola")
# IO.puts fernando.("Fernando") => Hola Fernando
# IO.puts fernando.("Unknown") => I don't know you
