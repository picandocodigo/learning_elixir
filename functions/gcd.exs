# Exercise: Greatest common divisor
# Programming Elixir 1.2 - Page 65
defmodule Gcd do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end
