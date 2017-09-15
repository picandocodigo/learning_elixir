defmodule Monitoring do
  def explode, do: exit(:boom)

  def run do
    {pid, ref} = spawn_monitor(Monitoring, :explode, [])
    receive do
      {:DOWN, ref, :process, from_pid, reason} -> IO.puts "Exit reason #{reason}"
    end
  end


end
