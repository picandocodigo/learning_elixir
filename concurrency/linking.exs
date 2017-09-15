defmodule Linking do
  def explode, do: exit(:boom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Linking, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts "Exit reason: #{reason}"
    end
  end
end
