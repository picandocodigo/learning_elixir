defmodule MyList do
  def len([]), do: 0
  def len([_head | tail] ), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add_1([]), do: []
  def add_1([head | tail]), do: [ head + 1 | add_1(tail)]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func)]

  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([ head | tail], total), do: _sum(tail, head + total)

  def mysum([]), do: 0
  def mysum([ head | tail ]),  do: head + mysum(tail)

  # reduce(collection, initial_value, function)
  def reduce([], value, _), do: value

  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _func), do: 0

  def mapsum([ head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max([x]), do: x
  def max([ head | tail ]), do: Kernel.max(head, max(tail))

  # TODO
  def span([]), do: []
  def span([ head | tail ]) when head < tail do
    [ head ]
  end
  def span([ head | tail ]) when head == tail, do: [ tail ]
end
