defmodule SpawnBasic do
  def greet do
    receive do
      {sender, msg} ->
        send sender, { :ok, self, "Hola, #{msg}" }
    end
  end
end

# Client
pid = spawn(SpawnBasic, :greet, [])

send pid, {self, "Mundo!"}

receive do
  {:ok, sender, message} -> IO.inspect sender; IO.puts message
end
