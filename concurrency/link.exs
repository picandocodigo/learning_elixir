defmodule Link do
  import :timer, only: [sleep: 1]

  def sad_function do
    sleep 500
    exit(:boom)
  end

  def run do
    spawn_link(Link, :sad_function, [])
    receive do
      msg -> IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
      IO.puts "Nothing happened"
    end
  end
end

Link.run
