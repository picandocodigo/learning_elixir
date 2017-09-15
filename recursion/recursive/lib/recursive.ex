defmodule Recursive do
  @moduledoc """
  Documentation for Recursive.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Recursive.hello
      :world

  """
  def hello do
    :world
  end

  def count_languages(languages) do
    Enum.reduce(languages, %{}, fn (language, acc)->
      Map.update(acc, language, 1, fn val -> val + 1 end)
    end)
  end

  # def count_languages([] , acc) do
  #   acc
  # end

  # def count_languages([language | tail ], acc) do
  #   #new_acc = Map.update(acc, language, 1, fn val -> val + 1 end)
  #   #count_languages(tail, new_acc)
  # end
end
