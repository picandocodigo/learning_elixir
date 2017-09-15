defmodule RecursiveTest do
  use ExUnit.Case
  doctest Recursive

  test "greets the world" do
    assert Recursive.hello() == :world
  end

  test "return empty" do
    #languages = [:ruby, :java, :php, :ruby]
    assert Recursive.count_languages([]) == %{}
  end

  test "if there is one item" do
     assert Recursive.count_languages([:ruby]) == %{ruby: 1}
   end

  test "if there are two items" do
    assert Recursive.count_languages([:ruby, :java]) == %{ruby: 1, java: 1}
  end

  test "if there are two identical items" do
    assert Recursive.count_languages([:ruby, :java, :ruby]) == %{ruby: 2, java: 1}
  end
end
