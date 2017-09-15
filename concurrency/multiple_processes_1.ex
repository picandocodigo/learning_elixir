defmodule ChildProcess do
  def greet do
    receive do
      {sender, msg} ->
        send sender, {:ok, "#{msg} from inside"}
        exit(:byebye)
    end
  end
end

def Father do
  def run do
    spawn_link(ChildProcess, :greet, [])
    sleep(500)
    receive do
      {:ok, msg} -> IO.puts "#{message} from parent"
      run
    end
  end

end
