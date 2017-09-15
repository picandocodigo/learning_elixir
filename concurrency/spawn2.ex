defmodule Spawn2 do
  def greet do
    receive do
      {sender, msg} -> send sender, { :ok, "Hello, this is original Spawn, #{msg}"}
      greet
    end
  end
end

# Client
pid = spawn(Spawn2, :greet, [])
send pid, {self, "Todd Mc Farlane"}

receive do
  {:ok, message} -> IO.puts message
end

send pid, {self, "Peter Parker"}
receive do
  {:ok, message} -> IO.puts message
  after 500 -> IO.puts "Spawn can't get to the phone right now"
end
