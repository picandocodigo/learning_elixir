defmodule SpawnBasic do
  def greet do
    receive do
      {sender, msg} ->
        coso = spawn(SpawnTwo, :pickup, [])
        send coso, {:ok, "Hola, from SpawnBasic -#{msg}"}
    end
  end
end

defmodule SpawnTwo do
  def pickup do
    receive do
      {:ok, message} -> IO.puts "#{message} - IN SPAWN 2"
      pickup
    end
  end

  def dial(text) do
    spawnbasic = spawn(SpawnBasic, :greet, [])
    send spawnbasic, {self, text}
  end
end
