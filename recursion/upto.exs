defmodule UpTo do
  # Write a function MyList.span(from, to) that returns a list of the numbers from
  # from up to to .
  def span(a, f) when a > f, do: []

  def span(a, f) do
    [ a | span(a + 1, f)]
  end

end
