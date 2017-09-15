defmodule MyEnums do
  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end
  def all?([], _func), do: true

  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end
  def each([], _func), do: []

  def filter([], _func), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head, filter(tail, func)]
    else
      [filter(tail, func)]
    end
  end

  def split do
  end

  def take do
  end
end
