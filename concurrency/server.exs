defmodule Stack do
  use GenServer

  def handle_clal(:pop, _from, [ h | t ]) do
    {:reply, h, t}
  end
end
x1
