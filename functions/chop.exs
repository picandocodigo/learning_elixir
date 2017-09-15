# TIP: Guess a number, exercise from Programming Elixir 1.2, page 70
defmodule Chop do
  def guess(actual, range = low..high) do
    guess = div(low + high, 2)
    IO.puts "Is it #{guess}?"
    _guess(actual, guess, range)
  end

  def _guess(actual, actual, _) do
  end
end
