defmodule TaskExample do
  def double(x) do
    :timer.sleep(200)
    x * 2
  end
end

task = Task.async(TaskExample, :double, [2000])

Task.await(task)
